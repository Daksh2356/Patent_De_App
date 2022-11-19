import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CFCard extends StatefulWidget {
  const CFCard({super.key});

  @override
  State<CFCard> createState() => _CFCardState();
}

class _CFCardState extends State<CFCard> {
  final textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.all(20),
      height: size.height * 0.25,
      width: size.width * 0.8,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          //stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Color.fromARGB(255, 246, 98, 230),
            Color.fromARGB(255, 226, 97, 232),
            Color.fromARGB(255, 207, 99, 233),
            Color.fromARGB(255, 170, 100, 235),
            Color.fromARGB(255, 141, 98, 236),
          ],
        ),
      ),
      child: Expanded(
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
              onTap: () {},
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
    );
  }
}
