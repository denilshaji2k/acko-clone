import 'package:flutter/material.dart';

class SupportView extends StatelessWidget {
  const SupportView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.center,
          colors: [
            Color.fromARGB(255, 36, 10, 58),
            Color.fromARGB(255, 8, 6, 10),
          ],
        ),
      ),
      child: SafeArea(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              const SizedBox(width: 15),
              const Text(
                'Get support',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: const BorderSide(
                      color: Color(0xfff84f38),
                    ),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  '🚨  Emergency',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Container(
            color: Colors.white,
            height: 728,
            width: 500,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Quick actions',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      '   Manage your polici and claims in just few taps',
                      style: TextStyle(
                          color: Color.fromARGB(255, 79, 79, 79),
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        squareCard(
                            icon: Icons.document_scanner_outlined,
                            text: 'View\ncoverages'),
                        squareCard(
                            icon: Icons.edit_note_outlined,
                            text: 'Edit\npolicy'),
                        squareCard(
                            icon: Icons.download_outlined,
                            text: 'Download\npolicy'),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        squareCard(
                            icon: Icons.task_outlined, text: 'Raise a\nclaim'),
                        const SizedBox(width: 10),
                        squareCard(
                            icon: Icons.local_hospital_outlined,
                            text: 'See linked\nhospitals'),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                //Quick action ends here
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: const Color.fromARGB(255, 156, 156, 156),
                        width: 2,
                      ),
                    ),
                    child: Row(children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: SizedBox(
                          width: 10,
                        ),
                      ),
                      const Icon(Icons.autorenew_outlined),
                      const SizedBox(width: 10),
                      const Text(
                        'Bought a used vehicle with ACKO\ninsurance?',
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Transfer policy',
                          style: TextStyle(
                            color: Color.fromARGB(255, 0, 91, 196),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
                const SizedBox(height: 20),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Reach out to us',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    '  Get answers to all you coverage-related questions',
                    style: TextStyle(
                      color: Color.fromARGB(255, 79, 79, 79),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 120,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        squareCard(
                            icon: Icons.call_outlined, text: 'Talk \nto us'),
                        const SizedBox(width: 10),
                        squareCard(
                            icon: Icons.mail_outlined, text: 'Write\nto us'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }

  MaterialButton squareCard({required IconData icon, required String text}) {
    return MaterialButton(
        onPressed: () {},
        height: 90,
        minWidth: 127,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(11),
        ),
        color: const Color.fromARGB(255, 219, 218, 218),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon),
              const SizedBox(height: 15),
              Text(text),
            ],
          ),
        ));
  }
}
