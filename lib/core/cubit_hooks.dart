import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:listview_cubit_hooks/di/get_config.dart';

T useCubit<T extends Cubit>([List<dynamic> keys = const <dynamic>[]]) {
  // ignore: unnecessary_lambdas
  final cubit = useMemoized(() => getIt<T>(), keys);
  useEffect(() => cubit.close, [cubit]);
  return cubit;
}

S useCubitBuilder<C extends Cubit, S>(
  Cubit<S> cubit, {
  bool Function(S current)? buildWhen,
}) {
  final state = useMemoized(
    () => cubit.stream.where(buildWhen ?? (state) => true),
    [cubit.state],
  );
  return useStream(state, initialData: cubit.state).requireData!;
}

void useCubitListener<BLOC extends Cubit<S>, S>(
  BLOC bloc,
  BlocListener<BLOC, S> listener, {
  bool Function(S current)? listenWhen,
}) {
  final context = useContext();
  //final listenWhenConditioner = listenWhen;
  useMemoized(
    () {
      final stream = bloc.stream.where(listenWhen ?? (state) => true).listen((state) => listener(bloc, state, context));
      return stream.cancel;
    },
    [bloc],
  );
}

typedef BlocListener<BLOC extends Cubit<S>, S> = void Function(BLOC cubit, S current, BuildContext context);
