import 'package:todo_test/application/domain/models/application_config.dart';
import 'package:todo_test/main.dart';

void main() async {
  commonMain(
    config: ApplicationConfig(
      apiUrl: 'developUrl',
    ),
  );
}
