import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/form_controller.dart';

class FormView extends GetView<FormController> {
  const FormView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Post your ticket'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: controller.formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    controller: controller.name,
                    validator: controller.notEmptyValidator,
                    decoration: const InputDecoration(
                      labelText: 'Full name',
                    ),
                  ),
                  TextFormField(
                    controller: controller.email,
                    validator: (value) {
                      if (controller.notEmptyValidator(value) != null) {
                        return controller.notEmptyValidator(value);
                      }

                      return controller.notEmailValidator(value);
                    },
                    decoration: const InputDecoration(
                      labelText: 'Email',
                    ),
                  ),
                  TextFormField(
                    controller: controller.message,
                    validator: controller.notEmptyValidator,
                    maxLines: 10,
                    decoration: const InputDecoration(
                      labelText: 'Message',
                    ),
                  ),
                  ElevatedButton(
                    onPressed: controller.processForm,
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
          ),
          controller.obx(
            (state) => Text(
              state!.title!.rendered!,
              style: TextStyle(color: Colors.black),
            ),
            onLoading: CircularProgressIndicator(),
            onError: (error) => Text(
              error.toString(),
              style: const TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
