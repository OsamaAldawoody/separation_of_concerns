import 'service_interface.dart';

class DefaultService implements Service {
  @override
  void excute() {
    print('executing Default Service');
  }
}
