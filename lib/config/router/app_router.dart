import 'package:get/get.dart';
import 'package:state_app/presentation/screens/screens.dart';

// final appRouter = GoRouter(routes: [
//   GoRoute(
//     path: '/',
//     builder: (context, state) => const HomeScreen(),
//   ),

//   GoRoute(
//     path: '/basic-state',
//     builder: (context, state) => const BasicStateScreen(),
//   ),
//   GoRoute(
//     path: '/lang-i18n',
//     builder: (context, state) => const LocalI18nScreen(),
//   ),

//   GoRoute(
//     path: '/complex-state',
//     builder: (context, state) => const TodoScreen(),
//   ),
// ]);

List<GetPage<dynamic>> getPages = [
  GetPage(name: '/', page: () => const HomeScreen(), children: [
    GetPage(
      name: '/basic-state',
      page: () => const BasicStateScreen(),
    ),
    GetPage(
      name: '/lang-i18n',
      page: () => const LocalI18nScreen(),
    ),
    GetPage(
      name: '/complex-state',
      page: () => const TodoScreen(),
    ),
  ]),
];
