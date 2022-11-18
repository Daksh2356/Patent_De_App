import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class PatentCard extends StatelessWidget {
  const PatentCard({super.key});

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
            body: ListView.builder(
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Neumorphic(
                    style: NeumorphicStyle(
                        shape: NeumorphicShape.concave,
                        boxShape: NeumorphicBoxShape.roundRect(
                            BorderRadius.circular(10)),
                        depth: 8,
                        lightSource: LightSource.topLeft,
                        color: const Color.fromARGB(255, 158, 12, 12)),
                    duration: const Duration(milliseconds: 100),
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: const [
                        Text(
                          'Hello world !!',
                          style: TextStyle(
                            color: Color.fromARGB(251, 134, 230, 9),
                            fontWeight: FontWeight.bold,
                            fontSize: 24,
                            shadows: [
                              Shadow(
                                  color: Color.fromARGB(255, 121, 215, 137),
                                  offset: Offset(-1.0, 5.0),
                                  blurRadius: 3.0),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'lorem ipsum',
                          style: TextStyle(
                            color: Color.fromARGB(251, 134, 230, 9),
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Hello World !!',
                          style: TextStyle(
                            color: Color.fromARGB(251, 134, 230, 9),
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  );
                }));
  }
}
