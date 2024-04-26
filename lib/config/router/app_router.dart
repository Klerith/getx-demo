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
    path: '/todo',
    builder: (context, state) => const TodoScreen(),
  ),
  GoRoute(
    path: '/future-provider',
    builder: (context, state) => const FutureProviderScreen(),
  ),
  GoRoute(
    path: '/future-family-provider',
    builder: (context, state) => const FamilyFutureScreen(),
  ),
  GoRoute(
    path: '/stream-provider',
    builder: (context, state) => const StreamProviderScreen(),
  ),
  GoRoute(
    path: '/change-notifier-provider',
    builder: (context, state) => const ChangeNotifierScreen(),
  ),
  GoRoute(
    path: '/state-notifier-provider',
    builder: (context, state) => const StateNotifierScreen(),
  ),
]);
