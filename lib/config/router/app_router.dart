import 'package:go_router/go_router.dart';
import 'package:state_app/presentation/screens/screens.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const HomeScreen(),
  ),

  GoRoute(
    path: '/basic-state',
    builder: (context, state) => const BasicStateScreen(),
  ),
  GoRoute(
    path: '/lang-i18n',
    builder: (context, state) => const LocalI18nScreen(),
  ),

  GoRoute(
    path: '/complex-state',
    builder: (context, state) => const TodoScreen(),
  ),
]);
