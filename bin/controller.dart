import 'default_service.dart';
import 'service_interface.dart';

class Controller {
  Service _service;

  Controller(Service service) {
    _service = service;
  }

  void doAction() {
    print('controller action');
    _service.excute();
  }
}
