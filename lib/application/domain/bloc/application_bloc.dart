import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_test/application/domain/bloc/application_state.dart';

class ApplicationBloc extends Cubit<ApplicationState> {
  ApplicationBloc() : super(ApplicationState()) {
    initialized();
  }

  void initialized() async {}
}
