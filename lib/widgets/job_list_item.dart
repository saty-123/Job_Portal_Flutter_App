import 'package:flutter/material.dart';
import 'package:job_post_ui/screens/edit_job.dart';
import 'package:job_post_ui/screens/apply_job.dart';
import 'package:job_post_ui/screens/job_list.dart';

class JobListItemCandidate extends StatelessWidget {
  const JobListItemCandidate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF201E27),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x40000000),
            spreadRadius: -4,
            blurRadius: 25,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      margin: const EdgeInsets.only(
        top: 11,
        bottom: 11,
        right: 27,
        left: 27,
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              flex: 2,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Flutter Developer Required",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600)),
                    Text("Bangalore, India",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF8F8F9E)))
                  ]),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const ApplyJob()));
              },
              child: const Text('Apply'),
            ),
            const SizedBox(width: 25),
            const Icon(
              Icons.delete_outline,
              size: 24,
              color: Color(0xFFFF5959),
            ),
          ],
        ),
      ),
    );
  }
}

class JobListItem extends StatelessWidget {
  const JobListItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF201E27),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x40000000),
            spreadRadius: -4,
            blurRadius: 25,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      margin: const EdgeInsets.only(
        top: 11,
        bottom: 11,
        right: 27,
        left: 27,
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              flex: 2,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Flutter Developer Required",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600)),
                    Text("Bangalore, India",
                        style:
                            TextStyle(fontSize: 15, color: Color(0xFF8F8F9E)))
                  ]),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => const EditJob()));
                },
                child: const Icon(Icons.edit_outlined, size: 22)),
            const SizedBox(width: 25),
            const Icon(
              Icons.delete_outline,
              size: 24,
              color: Color(0xFFFF5959),
            ),
          ],
        ),
      ),
    );
  }
}

class UserTypeOptionCandidate extends StatelessWidget {
  const UserTypeOptionCandidate({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF201E27),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x40000000),
            spreadRadius: -4,
            blurRadius: 25,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      margin: const EdgeInsets.only(
        top: 11,
        bottom: 11,
        right: 27,
        left: 27,
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              flex: 2,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Candidate Login",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600)),
                  ]),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (_) => const JobListCandidate()));
              },
              child: const Text('Select'),
            ),
          ],
        ),
      ),
    );
  }
}

class UserTypeOptionRecruiter extends StatelessWidget {
  const UserTypeOptionRecruiter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF201E27),
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            color: Color(0x40000000),
            spreadRadius: -4,
            blurRadius: 25,
            offset: Offset(0, 4), // changes position of shadow
          ),
        ],
      ),
      margin: const EdgeInsets.only(
        top: 11,
        bottom: 11,
        right: 27,
        left: 27,
      ),
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Expanded(
              flex: 2,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Recruiter Login",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600)),
                  ]),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (_) => const JobList()));
              },
              child: const Text('Select'),
            ),
          ],
        ),
      ),
    );
  }
}
