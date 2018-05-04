import 'package:angular/angular.dart';
import 'package:angular_components/angular_components.dart';
import 'package:angular_demo/src/core/Employee.Model.dart';
import 'package:angular_forms/angular_forms.dart';


@Component(
  selector: 'app-directivas-ng',
  templateUrl: 'DirectivasNg.Component.html',
  styleUrls: const ['DirectivasNg.Component.css'],
  directives: const [
    CORE_DIRECTIVES,
    formDirectives,
    materialDirectives
  ],
  providers: const [materialProviders],
)
class DirectivasNg implements OnInit {

    final List<Employee> employees = <Employee>[
      new Employee(name: 'uno', checked: false),
      new Employee(name: 'dos', checked: false),
      new Employee(name: 'tres', checked: true),
      new Employee(name: 'cuatro', checked: false),
    ];

    @override
    void ngOnInit() {

    }

    void addEmployee(String name) {
      this.employees.add(new Employee(name: name, checked: false));
    }

    bool isProfessor(Employee employee) {
      return employee.checked == true;
    }

    void removeEmployee(Employee employee) {
      this.employees.remove(employee);
    }

}


