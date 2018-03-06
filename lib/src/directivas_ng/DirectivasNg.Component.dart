import 'package:angular/angular.dart';
import 'package:angular_demo/src/core/Employee.Model.dart';


@Component(
  selector: 'app-directivas-ng',
  templateUrl: 'DirectivasNg.Component.html',
  styleUrls: const ['DirectivasNg.Component.css']
)
class DirectivasNg {

    final employee = new List<Employee>();

    void addEmployee(String name) {
      this.employee.add(new Employee(name: name, checked: false));
    }

    bool isProfesor(Employee employee) {
      return "jesus" == employee.name.toLowerCase();
    }

    void removeEmployee(Employee employee) {
      this.employee.remove(employee);
    }

}
