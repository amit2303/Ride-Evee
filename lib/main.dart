
import 'routes.dart';
import 'exports.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.homeRoute,
      debugShowCheckedModeBanner: false,

    );
  }
}
