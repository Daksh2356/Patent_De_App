import 'package:flutter/material.dart';
import './pages/bottom_nav.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:uni_links/uni_links.dart';
// ...

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _initalURiHandle = false;
  Uri? _initalUri;
  Uri? _currentUri;
  Object? _err;
  bool value = false;
  StreamSubscription? _sub;

  @override
  void initState() {
    super.initState();
    _initalLink();
    _handleIncomingLinks();
  }

  @override
  void dispose() {
    _sub?.cancel();
    super.dispose();
  }

  Future<void> _initalLink() async {
    if (!_initalURiHandle) {
      _initalURiHandle = true;
      try {
        final initalUrl = await getInitialUri();
        if (initalUrl != null) {
          if (!mounted) {
            return;
          }
          // ignore: avoid_print
          print(initalUrl);

          setState(() {
            _initalUri = initalUrl;
          });
        } else {
          debugPrint("error in the link recieved");
        }
      } on PlatformException {
        debugPrint("Failed To Recieve Inital Url Platform Error");
      } on FormatException catch (err) {
        // ignore: avoid_print
        print(err);

        if (!mounted) {
          return;
        }
        debugPrint('Malformed Initial URI received');
        setState(() => _err = err);
      }
    }
  }

  void _handleIncomingLinks() {
    if (!kIsWeb) {
      _sub = uriLinkStream.listen((Uri? urli) {
        if (!mounted) {
          return;
        }

        debugPrint(urli.toString());

        setState(() {
          _currentUri = urli;
          _err = null;
          value = true;
        });
      }, onError: (Object err) {
        // ignore: avoid_print
        print(err);

        if (!mounted) return;
        debugPrint("error occured in");
        setState(() {
          _currentUri = null;
          if (err is FormatException) {
            _err = err;
          } else {
            _err = null;
          }
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const BottomNav();
  }
}
