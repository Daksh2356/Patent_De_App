import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:phantom_connect/phantom_connect.dart';

class PatentCard extends StatelessWidget {
  PatentCard({super.key});

  final PhantomConnect urli = PhantomConnect(
      appUrl: "https://protodap.page.link",
      deepLink: "https://protodap.page.link");

  void con() async {
    final urlc = urli.generateConnectUri(cluster: "devnet", redirect: '/tobR');
    if (await canLaunchUrl(urlc)) {
      launchUrl(
        urlc,
        mode: LaunchMode.externalNonBrowserApplication,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return
        // debugShowCheckedModeBanner: false,
        // title: 'Flutter Demo',
        // themeMode: ThemeMode.light,
        // theme: const NeumorphicThemeData(
        //   baseColor: Color.fromARGB(255, 121, 28, 28),
        //   lightSource: LightSource.topLeft,
        //   depth: 10,
        // ),
        // darkTheme: const NeumorphicThemeData(
        //   baseColor: Color.fromARGB(255, 76, 163, 36),
        //   lightSource: LightSource.topLeft,
        //   depth: 6,
        // ),
        Scaffold(
            backgroundColor: const Color.fromARGB(255, 30, 30, 30),
            body: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 5.0,
                  mainAxisSpacing: 5.0,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(10)),
                        depth: 8,
                        lightSource: LightSource.topLeft,
                        color: const Color.fromARGB(255, 214, 213, 213)),
                    duration: const Duration(milliseconds: 100),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'PATENT NAME',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'White Paper',
                          style: TextStyle(
                            fontSize: 10,
                            color: Colors.blue,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            con();
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 36, 35, 35)),
                          child: const Text("phantom"),
                        ),
                      ],
                    ),
                  );
                }));
  }
}
