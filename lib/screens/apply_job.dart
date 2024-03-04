import 'package:flutter/material.dart';
import 'package:job_post_ui/widgets/button.dart';
import 'package:job_post_ui/widgets/input_field.dart';

class ApplyJob extends StatelessWidget {
  const ApplyJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 75,
        title: const Text("Fill all Details",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.only(right: 27, bottom: 59, left: 27),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const InputField(
                    placeholderText: " Enter Your First Name",
                  ),
                  const SizedBox(height: 20),
                  const InputField(
                    placeholderText: " Enter Your Last Name",
                  ),
                  const SizedBox(height: 20),
                  const InputField(
                    placeholderText: " Enter Your Phone Number",
                  ),
                  const SizedBox(height: 20),
                  const InputField(
                    placeholderText: "Description",
                    minLines: 13,
                    maxLines: 13,
                  ),
                  const Spacer(),
                  const SizedBox(height: 15),
                  Button(
                    text: "Apply Job",
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
