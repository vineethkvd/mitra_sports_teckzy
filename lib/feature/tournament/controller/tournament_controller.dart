import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:mitra_sports_teckzy/feature/tournament/model/tournament_model.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/helpers/network/helpers/api_endpoints.dart';
import '../../../core/helpers/network/helpers/base_client.dart';
import '../../../core/helpers/network/helpers/base_controller.dart';

class TournamentController extends GetxController {
  var tournamentModel = const TournamentModel().obs;
  var dataList = <Data>[].obs;

  Future<void> launUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw Exception("Could not launch $uri");
    }
  }

  Future<void> fetchTournaments() async {
    final baseController = BaseController();

    const apiUrl = ApiEndPoints.baseURL + ApiEndPoints.tournament;
    const apiToken = ApiEndPoints.apiToken;
    var requestData = {"api_key": apiToken};

    try {
      final baseClient = BaseClient();
      var response = await baseClient
          .postMethod(apiUrl, requestData)
          .catchError(baseController.handleError);

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        tournamentModel(TournamentModel.fromJson(responseData));

        if (tournamentModel.value.status == "Success") {
          print("Success to fetch tournaments");
          print("Tournament:${responseData}");

          dataList.assignAll(tournamentModel.value.data ?? []);
        } else {
          throw Exception('Status is not true');
        }
      } else if (response.statusCode == 400) {
        final responseData = json.decode(response.body);
        tournamentModel(TournamentModel.fromJson(responseData));

        if (tournamentModel.value.status == "Failed") {
          if (kDebugMode) {
            print(
                "Failed to fetch slider data: ${tournamentModel.value.message}");
          }
        } else {
          throw Exception('Status is not false');
        }
      } else {
        throw Exception('Failed to fetch slider data');
      }
    } catch (error) {
      if (kDebugMode) {
        print("error: $error");
      }
    } finally {
      baseController.hideLoading();
    }
  }
}


// class Getregister extends GetxController {
//   sendMessageOnWhatsApp({required TournamentModel tournamentModel}) async {
//     //String phone = "917012882584";
//     //var message = "\nI want to know about this product\nName :${productModel.productName}\nPrice :${productModel.price}";
//     var url =
//         "${tournamentModel.data!.first.tournUrl!}";
//     var uri = Uri.parse(url);
//
//     await launchUrl(uri)
//         ? launchUrl(uri)
//         : print(
//         "Open WhatsApp app link or show a snackbar with a notification that WhatsApp is not installed");
//     }
// }