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
        Container(
      height: 100,
      child: Neumorphic(
        style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
            depth: 8,
            lightSource: LightSource.topLeft,
            color: Colors.grey),
        child: Column(
          children: const [
            Text(
              'Hello World !!',
              style: TextStyle(color: Color.fromARGB(255, 150, 255, 150)),
            )
          ],
        ),
      ),
    );
  }
}
