import 'package:flutter/material.dart';
import 'package:job_post_ui/screens/add_job.dart';
import 'package:job_post_ui/screens/login.dart';
import 'package:job_post_ui/widgets/job_list_item.dart';

class UserType extends StatelessWidget {
  const UserType({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 27,
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
            Text("Satyendra Yadav",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300))
          ],
        ),
        actions: const [LogoutIcon()],
      ),
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  UserTypeOptionCandidate(),
                  UserTypeOptionRecruiter(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class LogoutIcon extends StatelessWidget {
  const LogoutIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (_) => const LogIn()));
      },
      child: const Padding(
        padding: EdgeInsets.only(right: 27),
        child: Icon(Icons.logout_outlined),
      ),
    );
  }
}

class AddJobButton extends StatelessWidget {
  const AddJobButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 74,
      height: 74,
      child: FittedBox(
        child: FloatingActionButton(
          backgroundColor: const Color(0xFFE5E5E5),
          onPressed: () => Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const AddJob())),
          child: const Icon(
            Icons.add_outlined,
            color: Color(0xFF191720),
          ),
        ),
      ),
    );
  }
}
