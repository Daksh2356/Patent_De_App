import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:url_launcher/url_launcher.dart';

class CFCard extends StatefulWidget {
  const CFCard({super.key});

  @override
  State<CFCard> createState() => _CFCardState();
}

class _CFCardState extends State<CFCard> {
  final Uri _url = Uri.parse('https://flutter.dev');
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(5),
      height: size.height * 0.25,
      width: size.width * 0.8,
      child: Column(
        children: [
          Neumorphic(
            style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
              depth: 4,
              shadowLightColor: const Color.fromARGB(255, 212, 212, 212),
              lightSource: LightSource.bottomRight,
              color: const Color.fromARGB(255, 214, 213, 213),
            ),
            child: Container(
              margin: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'PATENT NAME',
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                    style: TextStyle(
                      fontSize: 10,
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      _launchUrl();
                    },
                    child: const Text(
                      'White Paper',
                      style: TextStyle(color: Colors.blue, fontSize: 10),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: const [
                      Text(
                        'Uses Electricity',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(
                        'Uses Fuel',
                        style: TextStyle(
                          fontSize: 10,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content: TextField(
                              controller: textController,
                              keyboardType: TextInputType.number,
                              decoration: const InputDecoration(
                                labelText: 'Enter the Amount',
                              ),
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text(
                                  'Confirm',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 36, 35, 35),
                    ),
                    child: const Text('Fund'),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}