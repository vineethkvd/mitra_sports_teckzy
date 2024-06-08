import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mitra_sports_teckzy/core/helpers/cache_helper/cache_helper.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/api_endpoints.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_client.dart';
import 'package:mitra_sports_teckzy/core/helpers/network/helpers/base_controller.dart';
import 'package:mitra_sports_teckzy/core/utils/shared/components/widgets/custom_snackbar.dart';
import 'package:mitra_sports_teckzy/feature/timer/controller/gameList_controller.dart';
import 'package:mitra_sports_teckzy/feature/timer/model/timer_model/timer_model.dart';

class TimerController extends GetxController {
  late Timer _timer = Timer(Duration.zero, () {});
  var milliseconds = 0.obs;
  var seconds = 0.obs;
  var minutes = 0.obs;
  var isRunning = false.obs;
  var leftHandTapped = false.obs;
  var rightHandTapped = false.obs;
  var selectedItem = ''.obs;
  var startTime = 0.obs;
  final TimerGameType timerGameType = Get.put(TimerGameType());
  var userId = ''.obs;
  var selectedGameId = 0.obs;
  Rx<Color> timerColor = Colors.black.obs;
  var timerStarted = false.obs;
  Rx<Color> leftIndicatorColor = Colors.white.obs;
  Rx<Color> rightIndicatorColor = Colors.white.obs;

  @override
  void onInit() {
    super.onInit();
    _loadUserId();
  }

  Future<void> _loadUserId() async {
    var id = await CacheHelper.getData('userId');
    if (id != null) {
      userId.value = id.toString();
      print("UserId: ${userId.value}");
    } else {
      userId.value = '';
      print("Error: UserId is null");
    }
  }

  void onGameTypeChanged(String newGameId) {
    // Reset the timer and update the game type
    resetTimer();
    try {
      selectedGameId.value =
          int.parse(newGameId); // Correctly parse the String to int
      print("Game type changed to $newGameId");
    } catch (e) {
      Get.snackbar("Error", "Invalid game ID selected");
    }
  }

  // Future<void> startTimer() async {
  //   isRunning.value = true;
  //   timerColor.value = Colors.green;
  //   startTime.value = DateTime.now().millisecondsSinceEpoch;
  //   _timer = Timer.periodic(const Duration(milliseconds: 1), (timer) {
  //     milliseconds.value += 1;
  //     if (milliseconds.value >= 1000) {
  //       seconds.value++;
  //       milliseconds.value = 0;
  //     }
  //     if (seconds.value >= 60) {
  //       minutes.value++;
  //       seconds.value = 0;
  //     }
  //   });
  // }

  Future<void> startTimer() async {
    isRunning.value = true;
    timerColor.value = Colors.green;
    leftIndicatorColor.value = Colors.green; // Change left indicator color to green
    // rightIndicatorColor.value = Colors.green;
    startTime.value = DateTime.now().millisecondsSinceEpoch;

    _timer = Timer.periodic(const Duration(milliseconds: 10), (timer) {
      int now = DateTime.now().millisecondsSinceEpoch;
      int elapsedTime = now - startTime.value;

      milliseconds.value = elapsedTime % 1000;
      seconds.value = (elapsedTime / 1000).floor();  // Convert to int using floor
      minutes.value = (elapsedTime / (1000 * 60)).floor();
    });
  }

  Future<void> stopTimer() async {
    if (isRunning.value) {
      _timer.cancel();
      isRunning.value = false;
      timerColor.value = Colors.red;
      // leftIndicatorColor.value = Colors.red;
      rightIndicatorColor.value = Colors.red; // Change right indicator color to red
    }
  }

  Future<void> resetTimer() async {
    _timer.cancel();
    timerColor.value = Colors.black;
    milliseconds.value = 0;
    seconds.value = 0;
    minutes.value = 0;
    isRunning.value = false;
    leftIndicatorColor.value = Colors.white; // Reset left indicator color
    rightIndicatorColor.value = Colors.white; // Reset right indicator color
  }

  Future<void> checkStartTimer() async {
    print(
        "Checking start timer: leftHandTapped=${leftHandTapped.value}, rightHandTapped=${rightHandTapped.value}");
    if (leftHandTapped.value && rightHandTapped.value) {
      if (!timerStarted.value) {
        print("Both hands tapped - starting timer");
        await startTimer();
        timerStarted.value = true;
      } else {
        print("Both hands tapped - stopping timer");
        await stopTimer();
        timerStarted.value = false;
      }
    }
  }

  var timerModel = const TimerModel().obs;

  Future<void> saveTimeData(String formattedStartTime, String formattedEndTime,
      String formattedTotalTime) async {
    final baseController = BaseController();
    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.timer;
    const apiToken = ApiEndPoints.apiToken;
    var userId = await CacheHelper.getData('userId');
    var gameId = timerGameType.selectedGameId.value;
    if (gameId == null || gameId.toString().isEmpty) {
      CustomSnackBar.showCustomErrorSnackBar(
          message: "Please Select the GameType", title: 'Error');
      return;
    }

    final requestData = {
      "api_key": apiToken,
      "game_id": gameId.toString(),
      "user_id": userId.toString(),
      "total_time": formattedTotalTime,
    };
    print("timer Requset data: $requestData");
    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);
      final responseData = json.decode(response.body);
      print("response$responseData");
      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        timerModel(TimerModel.fromJson(responseData));
        print("responseData $responseData");
        print("status ${timerModel.value.status}");
        if (timerModel.value.status == true) {
          print("success");
          CustomSnackBar.showCustomSnackBar(
              message: "Success", title: '${timerModel.value.message}');
        } else if (timerModel.value.status == false) {
          CustomSnackBar.showCustomErrorSnackBar(
              message: "Failed", title: '${timerModel.value.message}');
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 401) {
        final responseData = json.decode(response.body);
        timerModel(TimerModel.fromJson(responseData));
        print("status ${timerModel.value.status}");
        if (timerModel.value.status == false) {
          print("login failed");
          CustomSnackBar.showCustomErrorSnackBar(
              title: "Failed", message: '${timerModel.value.message}');
          if (kDebugMode) {
            print("failed to login");
          }
        } else {
          throw Exception('Status is not true');
        }
      } else {
        throw Exception('Failed with exception');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {}
  }

  Future<void> handleSaveButtonPress() async {
    if (isRunning.value) {
      Get.snackbar(
        "Error",
        "Timer is still running. Please stop it first.",
        snackPosition: SnackPosition.BOTTOM,
      );
      return;
    }

    if (milliseconds.value == 0 && seconds.value == 0 && minutes.value == 0) {
      CustomSnackBar.showCustomErrorSnackBar(
        title: "Error",
        message: "Please start the timer before saving.",
      );
      return;
    }

    int endTime = DateTime.now().millisecondsSinceEpoch;
    int totalTime = calculateTotalTime();
    String formattedStartTime = formatTime(startTime.value);
    String formattedEndTime = formatTime(endTime);
    String formattedTotalTime = formatTime(totalTime);
    await saveTimeData(
        formattedStartTime, formattedEndTime, formattedTotalTime);

    resetTimer();
  }

  int calculateTotalTime() {
    return milliseconds.value +
        seconds.value * 1000 +
        minutes.value * 60 * 1000;
  }

  void resetAllFields() {
    resetTimer();
    timerGameType.selectedGameId.value = '';
  }

  String getFormattedTime() {
    String formattedMinutes = minutes.value.toString().padLeft(2, '0');
    String formattedSeconds = seconds.value.toString().padLeft(2, '0');
    String formattedMilliseconds =
    milliseconds.value.toString().padLeft(3, '0');
    return "$formattedMinutes:$formattedSeconds:$formattedMilliseconds";
  }

  String formatTime(int totalMilliseconds) {
    int minutes = (totalMilliseconds ~/ 60000) % 60;
    int seconds = (totalMilliseconds ~/ 1000) % 60;
    int milliseconds = totalMilliseconds % 1000;

    String formattedMinutes = minutes.toString().padLeft(2, '0');
    String formattedSeconds = seconds.toString().padLeft(2, '0');
    String formattedMilliseconds = milliseconds.toString().padLeft(3, '0');

    return "$formattedMinutes:$formattedSeconds:$formattedMilliseconds";
  }
}
