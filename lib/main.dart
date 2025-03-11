import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mobile_shop/src/auth/controllers/auth_notifier.dart';
import 'package:mobile_shop/src/auth/controllers/password_notifier.dart';
import 'package:mobile_shop/src/categories/controllers/category_notifier.dart';
import 'package:mobile_shop/src/entrypoint/controllers/botton_tab_notifier.dart';
import 'package:mobile_shop/src/home/conrollers/home_tab_notifier.dart';
import 'package:mobile_shop/src/onboarding/controllers/onbording_notifier.dart';
import 'package:mobile_shop/src/products/controllers/colors_sizers_notifier.dart';
import 'package:mobile_shop/src/products/controllers/product_notifier.dart';
import 'package:mobile_shop/src/splashscreen/views/splashscreen_page.dart';
import 'package:provider/provider.dart';

import 'common/utils/app_routes.dart';
import 'common/utils/environment.dart';
import 'common/utils/kstrings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: Environment.fileName);

  await GetStorage.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => OnboardingNotifier()),
      ChangeNotifierProvider(create: (_) => TabIndexNotifier()),
      ChangeNotifierProvider(create: (_) => CategoryNotifier()),
      ChangeNotifierProvider(create: (_) => HomeTabNotifier()),
      ChangeNotifierProvider(create: (_) => ProductNotifier()),
      ChangeNotifierProvider(create: (_) => ColorsSizersNotifier()),
      ChangeNotifierProvider(create: (_) => PasswordNotifier()),
      ChangeNotifierProvider(create: (_) => AuthNotifier()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return ScreenUtilInit(
      designSize: screenSize,
      minTextAdapt: true,
      splitScreenMode: true, // ballayage de l'écran
      useInheritedMediaQuery: true,
      builder: (_, child) {
        return MaterialApp.router(
          title: AppText.kAppName,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          routerConfig: router,
        );
      },
      child: const SplashScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(Environment.apiKey),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:mobile_shop/src/categories/controllers/category_notifier.dart';
// import 'package:mobile_shop/src/entrypoint/controllers/botton_tab_notifier.dart';
// import 'package:mobile_shop/src/home/conrollers/home_tab_notifier.dart';
// import 'package:mobile_shop/src/onboarding/controllers/onbording_notifier.dart';
// import 'package:mobile_shop/src/products/controllers/colors_sizers_notifier.dart';
// import 'package:mobile_shop/src/products/controllers/product_notifier.dart';
// import 'package:mobile_shop/src/splashscreen/views/splashscreen_page.dart';
// import 'package:provider/provider.dart';
// import 'package:background_fetch/background_fetch.dart';
// import 'common/utils/app_routes.dart';
// import 'common/utils/environment.dart';
// import 'common/utils/kstrings.dart';

// // Fonction pour gérer la tâche en arrière-plan
// void backgroundFetchHeadlessTask(HeadlessTask task) async {
//   print('[BackgroundFetch] Tâche en arrière-plan démarrée: ${task.taskId}');
//   // Effectuer des actions que tu veux réaliser en arrière-plan
//   // Par exemple : vérifier des données, synchroniser des informations, etc.
//   BackgroundFetch.finish(
//       task.taskId); // N'oublie pas de signaler que la tâche est terminée
// }

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await dotenv.load(fileName: Environment.fileName);
//   await GetStorage.init();

//   // Enregistrer la tâche d'arrière-plan pour les exécutions en dehors du contexte de l'application
//   BackgroundFetch.registerHeadlessTask(backgroundFetchHeadlessTask);

//   runApp(MultiProvider(
//     providers: [
//       ChangeNotifierProvider(create: (_) => OnboardingNotifier()),
//       ChangeNotifierProvider(create: (_) => TabIndexNotifier()),
//       ChangeNotifierProvider(create: (_) => CategoryNotifier()),
//       ChangeNotifierProvider(create: (_) => HomeTabNotifier()),
//       ChangeNotifierProvider(create: (_) => ProductNotifier()),
//       ChangeNotifierProvider(create: (_) => ColorsSizersNotifier()),
//       //ChangeNotifierProvider(create: (_) => TabIndexNotifier()),
//     ],
//     child: const MyApp(),
//   ));
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // Cette fonction est le widget racine de ton application.
//   @override
//   Widget build(BuildContext context) {
//     Size screenSize = MediaQuery.of(context).size;
//     return ScreenUtilInit(
//       designSize: screenSize,
//       minTextAdapt: true,
//       splitScreenMode: true, // Ballayage de l'écran
//       useInheritedMediaQuery: true,
//       builder: (_, child) {
//         return MaterialApp.router(
//           title: AppText.kAppName,
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
//             colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//             useMaterial3: true,
//           ),
//           routerConfig: router,
//         );
//       },
//       child: const SplashScreen(),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(Environment.apiKey),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // Cette virgule finale permet de mieux formater les méthodes de construction.
//     );
//   }
// }
