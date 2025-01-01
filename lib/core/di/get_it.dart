import 'package:english_secrets/english_secrets/dashboard/controller/dashboard_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerFactory<DashboardCubit>(() => DashboardCubit());
}
