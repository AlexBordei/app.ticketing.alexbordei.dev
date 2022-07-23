import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:ticketing_app/app/data/models/ticketing_request_model.dart';
import 'package:ticketing_app/app/data/models/ticketing_response_model.dart';
import 'package:ticketing_app/app/routes/app_pages.dart';

class FormController extends GetxController with StateMixin<TicketingResponse> {
  final formKey = GlobalKey<FormState>();
  final name = TextEditingController();
  final email = TextEditingController();
  final message = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();

    change(
      null,
      status: RxStatus.empty(),
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future<void> processForm() async {
    if (formKey.currentState!.validate()) {
      change(
        null,
        status: RxStatus.loading(),
      );

      try {
        http.Response response = await sendTicket(
          TicketingRequest(
            title: 'New ticket from ${name.text}',
            content: message.text,
            acf: Acf(name: name.text, email: email.text, status: 'Pending'),
            status: 'publish',
          ),
        );

        if (response.statusCode == 201) {
          Get.offAllNamed(Routes.SUCCESS);
        } else {
          throw Exception('Failed to create ticket.');
        }
      } on Exception catch (ex) {
        Get.offAllNamed(Routes.FAIL);
      }
    }
  }

  String? notEmptyValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'This field is required!';
    }
    return null;
  }

  String? notEmailValidator(String? value) {
    if (!GetUtils.isEmail(value!)) {
      return "Email is not valid";
    } else
      return null;
  }

  Future<http.Response> sendTicket(TicketingRequest request) async {
    return http.post(
      Uri.parse('https://ticketing.alexbordei.dev/wp-json/wp/v2/ticket'),
      body: jsonEncode(
        request.toJson(),
      ),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
        HttpHeaders.authorizationHeader:
            'Basic QWxleCBCb3JkZWk6UkN2TiA1WTE2IHlWNTggMjAwVSBMOTk5IHZxRlE=',
      },
    );
  }
}
