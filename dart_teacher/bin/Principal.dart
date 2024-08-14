import 'dart:io';
import "array.dart";
import 'Teacher.dart';
import 'class_class.dart';

// import 'Student.dart';
class Principal {
  // Attributes
  String username = "a";
  String password = "a";

  School school;

  // Constructor
  Principal(this.school);

  ///
  ///
  ///
  ///
  ///
  ////////////////////
  ///
  ///
  ///
  ///
  ///
  bool login() {
    stdout.write("Enter username: ");
    String inputUsername = stdin.readLineSync()!;
    stdout.write("Enter password: ");
    String inputPassword = stdin.readLineSync()!;
    if (inputUsername == username && inputPassword == password) {
      print("Login successful!\n");
      return true;
    } else {
      print("Invalid username or password. Please try again.");
      return false;
    }
  }

  ///
  ///
  ///
  ///
  ///
  ////////////////////
  ///
  ///
  ///
  ///
  ///
  void logout() {
    print("Logged out successfully.");
  }

  ///
  ///
  ///
  ///
  ///
  ////////////////////
  ///
  ///
  ///
  ///
  ///
  void addNewTeacher() {
    while (true) {
      int teacherId;
      while (true) {
        stdout.write("Enter teacher ID: ");
        try {
          teacherId = int.parse(stdin.readLineSync()!);
          break;
        } catch (e) {
          print("return number.");
        }
      }

      stdout.write("Enter username: ");
      String username = stdin.readLineSync()!;

      stdout.write("Enter password: ");
      String password = stdin.readLineSync()!;

      stdout.write("Confirm password: ");
      String confirmPassword = stdin.readLineSync()!;

      stdout.write("Enter name: ");
      String name = stdin.readLineSync()!;

      stdout.write("Enter age: ");
      int age = int.parse(stdin.readLineSync()!);

      stdout.write("Enter address: ");
      String address = stdin.readLineSync()!;

      stdout.write("Enter class teacher: ");
      String classTeacher = stdin.readLineSync()!;

      String gender;
      while (true) {
        stdout.write("Enter gender (male/female): ");
        gender = stdin.readLineSync()!.toLowerCase();
        if (gender == 'male' || gender == 'female') {
          break;
        } else {
          print("Invalid input. Please enter 'male' or 'female'.");
        }
      }

      int phoneNo;
      while (true) {
        stdout.write("Enter phone number (10-15): ");
        String phoneNoInput = stdin.readLineSync()!;
        if (phoneNoInput.length >= 10 && phoneNoInput.length <= 15) {
          try {
            phoneNo = int.parse(phoneNoInput);
            break;
          } catch (e) {
            print("Invalid input. Please enter a valid phone number.");
          }
        } else {
          print("Phone number must be between 10 and 15 digits.");
        }
      }

      String email;
      while (true) {
        stdout.write("e.g.,example@domain.com : ");
        email = stdin.readLineSync()!;
        if (email.contains('@') &&
            email.contains('.') &&
            email.contains('com')) {
          break;
        } else {
          print("Invalid email format. Please enter a valid email.");
        }
      }

      bool teacherIdExists =
          school.teacherNames.any((teacher) => teacher.teacherId == teacherId);
      bool usernameExists =
          school.teacherNames.any((teacher) => teacher.username == username);

      if (teacherIdExists || usernameExists) {
        print("Teacher ID or Username already exists. Please try again.");
      } else {
        school.addTeacher(
          teacherId: teacherId,
          username: username,
          password: password,
          confirmPassword: confirmPassword,
          name: name,
          age: age,
          gender: gender,
          phoneNo: phoneNo,
          address: address,
          email: email,
          classTeacher: classTeacher,
        );
        break;
      }
    }
  }

  ///
  ///
  ///
  ///
  ///
  ////////////////////
  ///
  ///
  ///
  ///
  ///
  ///
  void addNewStudent() {
    while (true) {
      int studentId;
      while (true) {
        stdout.write("Enter student ID: ");
        try {
          studentId = int.parse(stdin.readLineSync()!);
          break;
        } catch (e) {
          print("return number.");
        }
      }

      stdout.write("Enter username: ");
      String username = stdin.readLineSync()!;

      stdout.write("Enter address: ");
      String address = stdin.readLineSync()!;

      stdout.write("Enter password: ");
      String password = stdin.readLineSync()!;

      int enrollmentNo;
      while (true) {
        stdout.write("Enter enrollment number: ");
        try {
          enrollmentNo = int.parse(stdin.readLineSync()!);
          break;
        } catch (e) {
          print("Invalid input. Please enter a valid enrollment number.");
        }
      }

      String gender;
      while (true) {
        stdout.write("Enter gender (male/female): ");
        gender = stdin.readLineSync()!.toLowerCase();
        if (gender == 'male' || gender == 'female') {
          break;
        } else {
          print("Invalid input. Please enter 'male' or 'female'.");
        }
      }

      String email;
      while (true) {
        stdout.write("e.g.,example@domain.com ");
        email = stdin.readLineSync()!;

        if (email.contains('@') &&
            email.contains('.') &&
            email.contains('com')) {
          break;
        } else {
          print("Invalid email format. Please enter a valid email.");
        }
      }

      int phoneNo;
      while (true) {
        stdout.write("Enter phone number (10-15): ");
        String phoneNoInput = stdin.readLineSync()!;
        if (phoneNoInput.length >= 10 && phoneNoInput.length <= 15) {
          try {
            phoneNo = int.parse(phoneNoInput);
            break;
          } catch (e) {
            print("Invalid input. Please enter a valid phone number.");
          }
        } else {
          print("Phone number must be between 10 and 15 digits.");
        }
      }
      int classId;
      while (true) {
        stdout.write("Enter class ID: ");
        try {
          classId = int.parse(stdin.readLineSync()!);
          break;
        } catch (e) {
          print("return number.");
        }
      }

      Map<String, int> marks = {};
      String addMoreMarks;
      do {
        stdout.write("Enter subject: ");
        String subject = stdin.readLineSync()!;
        stdout.write("Enter mark: ");
        int mark = int.parse(stdin.readLineSync()!);
        marks[subject] = mark;

        stdout.write("Do you want to add more marks? (yes/no): ");
        addMoreMarks = stdin.readLineSync()!.toLowerCase();
      } while (addMoreMarks == 'yes');

      bool studentIdExists =
          school.studentNames.any((student) => student.studentId == studentId);
      bool usernameExists =
          school.studentNames.any((student) => student.username == username);

      if (studentIdExists || usernameExists) {
        print("Student ID or Username already exists. Please try again.");
      } else {
        school.addStudent(
          studentId: studentId,
          username: username,
          password: password,
          enrollmentNo: enrollmentNo,
          gender: gender,
          email: email,
          phoneNo: phoneNo,
          address: address,
          classId: classId,
          marks: marks,
        );
        print("Student added successfully!");
        break;
      }
    }
  }

  ///
  ///
  ///
  ///
  ////////////////////
  ///
  ///
  ///
  ///
  ///

  void viewstudent() {
    school.printStudents();
  }

  void viewteacher() {
    school.printTeachers();
  }

  void viewclasss() {
    school.printClasss();
  }

  ///
  ///
  ///
  ///
  ///
////////////////////
  ///
  ///
  ///
  ///
  ///
//////           modify teacher
  ///
  ///
  ///
  ///
////////////////////
  ///
  ///
  ///
  ///
  ///
  ///
  void modifyTeacher(int id) {
    while (true) {
      print("""
1. Update teacher information.
2. Delete teacher.
3. Exit.
""");
      stdout.write("Enter number: ");
      String input = stdin.readLineSync()!;

      switch (input) {
        case "1": // Update teacher
          {
            int index = school.teacherNames
                .indexWhere((teacher) => teacher.teacherId == id);
            if (index != -1) {
              stdout.write(
                  "Do you want to update the information for teacher with ID $id? (yes/no): ");
              String? confirm = stdin.readLineSync();
              if (confirm != null && confirm.toLowerCase() == 'yes') {
                stdout.write("Enter new name for the teacher: ");
                String? newName = stdin.readLineSync();
                if (newName != null && newName.isNotEmpty) {
                  school.teacherNames[index].name = newName;
                  print("Teacher with ID $id has been updated.");
                } else {
                  print(
                      "Invalid input. The name cannot be empty. Please try again.");
                }
              } else if (confirm != null && confirm.toLowerCase() == 'no') {
                print("Teacher with ID $id was not updated.");
              } else {
                print("Invalid input. Please enter 'yes' or 'no'.");
              }
            } else {
              print("Teacher with ID $id not found in the school.");
            }
          }
          break;
        case "2": // Delete teacher
          {
            int index = school.teacherNames
                .indexWhere((teacher) => teacher.teacherId == id);
            if (index != -1) {
              stdout.write(
                  "Do you want to remove the teacher with ID $id? (yes/no): ");
              String? confirm = stdin.readLineSync();
              if (confirm != null && confirm.toLowerCase() == 'yes') {
                school.teacherNames.removeAt(index);
                print("Teacher with ID $id has been removed.");
              } else if (confirm != null && confirm.toLowerCase() == 'no') {
                print("Teacher with ID $id was not removed.");
              } else {
                print("Invalid input. Please enter 'yes' or 'no'.");
              }
            } else {
              print("Teacher with ID $id not found in the school.");
            }
          }
          break;
        case "3":
          return;
        default:
          print("Invalid choice. Please enter a valid option.");
      }
    }
  }

  ///
  ///
  ///
  ///
  ///
////////////////////
  ///
  ///
  ///
  ///
  ///
//////           modify student
  ///
  ///
  ///
  ///
////////////////////
  ///
  ///
  ///
  ///
  ///
  ///

  void modifyStudent(int id) {
    while (true) {
      print("""
1. Update student information.
2. Delete student.
3. Exit.
""");
      stdout.write("Enter number: ");
      String input = stdin.readLineSync()!;

      switch (input) {
        case "1": // Update student
          {
            int index = school.studentNames
                .indexWhere((student) => student.studentId == id);
            if (index != -1) {
              stdout.write(
                  "Do you want to update the information for student with ID $id? (yes/no): ");
              String? confirm = stdin.readLineSync();
              if (confirm != null && confirm.toLowerCase() == 'yes') {
                stdout.write("Enter new username: ");
                String? newUsername = stdin.readLineSync();
                if (newUsername != null && newUsername.isNotEmpty) {
                  school.studentNames[index].username = newUsername;
                  print("Student with ID $id has been updated.");
                } else {
                  print(
                      "Invalid input. The username cannot be empty. Please try again.");
                }
              } else if (confirm != null && confirm.toLowerCase() == 'no') {
                print("Student with ID $id was not updated.");
              } else {
                print("Invalid input. Please enter 'yes' or 'no'.");
              }
            } else {
              print("Student with ID $id not found in the school.");
            }
          }
          break;
        case "2": // Delete student
          {
            int index = school.studentNames
                .indexWhere((student) => student.studentId == id);
            if (index != -1) {
              stdout.write(
                  "Do you want to remove the student with ID $id? (yes/no): ");
              String? confirm = stdin.readLineSync();
              if (confirm != null && confirm.toLowerCase() == 'yes') {
                school.studentNames.removeAt(index);
                print("Student with ID $id has been removed.");
              } else if (confirm != null && confirm.toLowerCase() == 'no') {
                print("Student with ID $id was not removed.");
              } else {
                print("Invalid input. Please enter 'yes' or 'no'.");
              }
            } else {
              print("Student with ID $id not found in the school.");
            }
          }
          break;
        case "3":
          return;
        default:
          print("Invalid choice. Please enter a valid option.");
      }
    }
  }

  ///
  ///
  ///
  ///
  ///
////////////////////
  ///
  ///
  ///
  ///
  ///
//////           add class
  ///
  ///
  ///
  ///
////////////////////
  ///
  ///
  ///
  ///
  ///
  ///
  void addNewClass() {
    while (true) {
      int classId;
      while (true) {
        stdout.write("Enter class ID: ");
        try {
          classId = int.parse(stdin.readLineSync()!);
          print(classId);
          break;
        } catch (e) {
          print("return number.");
        }
      }

      stdout.write("Enter class name: ");
      String className = stdin.readLineSync()!;

      stdout.write("Enter teacher name: ");
      String teacherName = stdin.readLineSync()!;

      bool classIdExists = school.classes.any((cls) => cls.classId == classId);
      bool classNameExists =
          school.classes.any((cls) => cls.className == className);

      if (classIdExists || classNameExists) {
        print("Class ID or Class Name already exists. Please try again.");
      } else {
        school.addClass(
          classId: classId,
          className: className,
          teacherName: teacherName,
        );
        break;
      }
    }
  }

  ///
  ///
  ///
  ///
  ///
////////////////////
  ///
  ///
  ///
  ///
  ///
//////           modify class
  ///
  ///
  ///
  ///
////////////////////
  ///
  ///
  ///
  ///
  ///
  ///
  void modifyClass(int id) {
    while (true) {
      print("""
1.update name.
2.delete neme.
3.Eixt.
""");
      stdout.write("enter number:");
      String input = stdin.readLineSync()!;
      switch (input) {
        case "1":
          {
            int index =
                school.classes.indexWhere((classs) => classs.classId == id);
            if (index != -1) {
              stdout.write(
                  "Do you want to modify the class name for class with ID $id? (yes/no): ");
              String? input = stdin.readLineSync();
              if (input != null && input.toLowerCase() == 'yes') {
                stdout.write("Enter new name for the class: ");
                String? newName = stdin.readLineSync();
                if (newName != null && newName.isNotEmpty) {
                  school.classes[index].className = newName;
                  print("Class with ID $id has been modified.");
                  return;
                } else {
                  print(
                      "Invalid input. The name cannot be empty. Please try again.");
                }
              } else if (input != null && input.toLowerCase() == 'no') {
                print("Class with ID $id was not modified.");
                return;
              } else {
                print("Invalid input. Please enter 'yes' or 'no'.");
              }
            } else {
              print("Class with ID $id not found in the school.");
              break;
            }
            return;
          }
        case "2":
          {
            int index =
                school.classes.indexWhere((classs) => classs.classId == id);
            if (index != -1) {
              stdout.write(
                  "Do you want to remove the class with ID $id? (yes/no): ");
              String? input = stdin.readLineSync();
              if (input != null && input.toLowerCase() == 'yes') {
                school.classes
                    .removeAt(index); // Remove the class from the list
                print("Class with ID $id has been removed.");
                return;
              } else if (input != null && input.toLowerCase() == 'no') {
                print("Class with ID $id was not removed.");
                return;
              } else {
                print("Invalid input. Please enter 'yes' or 'no'.");
              }
            } else {
              print("Class with ID $id not found in the school.");
              break;
            }
            return;
          }
        case "3":
          return;
      }
    }
  }

  ///
  ///
  ///
  ///
  ///
////////////////////
  ///
  ///
  ///
  ///
  ///
//////           Prepare Report Cards
  ///9999999999999999999999999999
  ///
  ///
  ///
////////////////////
  ///
  ///
  ///
  ///
  ///
  ///
  void prepareReportCards() {
    print("Preparing Report Cards...\n");

    for (var student in school.studentNames) {
      print("Student ID: ${student.studentId}");
      print("Name: ${student.username}");
      print("Class ID: ${student.classId}");

      // Find the class details
      var studentClass = school.classes.firstWhere(
          (classObj) => classObj.classId == student.classId,
          orElse: () =>
              Class(classId: -1, className: "Unknown", teacherName: "Unknown"));

      print("Class Name: ${studentClass.className}");

      // Find the teacher details
      var teacher = school.teacherNames.firstWhere(
          (teacher) => teacher.classTeacher == studentClass.className,
          orElse: () => Teacher(
              student: student,
              teacherId: -1,
              username: "Unknown",
              password: "",
              confirmPassword: "",
              name: "Unknown",
              age: -1,
              gender: "",
              phoneNo: -1,
              address: "",
              email: "",
              classTeacher: "Unknown"));

      print("Teacher Name: ${teacher.name}");
      print("+++++++++++++");
      print("Marks:");
      student.marks.forEach((subject, mark) {
        print("$subject: $mark");
      });
      print("------------");
    }
  }

  ///
  ///
  ///
  ///
  ///
////////////////////
  ///
  ///
  ///
  ///
  ///
//////           Prepare Report Cards index
  ///
  ///
  ///
  ///
////////////////////
  ///
  ///
  ///
  ///
  ///
  ///
  void prepare_Report_Cards_index(int id) {
    int index =
        school.studentNames.indexWhere((student) => student.studentId == id);

    if (index != -1) {
      school.studentNames[index].username;
      print("Student with ID $id has been modified.");
      var student = school.studentNames[index];
      print("Preparing Report Card for Student ID: ${student.studentId}\n");
      print("Student ID: ${student.studentId}");
      print("Name: ${student.username}");
      print("Class ID: ${student.classId}");
      var studentClass = school.classes.firstWhere(
          (classObj) => classObj.classId == student.classId,
          orElse: () =>
              Class(classId: -1, className: "Unknown", teacherName: "Unknown"));
      print("Class Name: ${studentClass.className}");
      var teacher = school.teacherNames.firstWhere(
          (teacher) => teacher.classTeacher == studentClass.className,
          orElse: () => Teacher(
              student: student,
              teacherId: -1,
              username: "kamel",
              password: "",
              confirmPassword: "",
              name: "ali",
              age: -1,
              gender: "",
              phoneNo: -1,
              address: "",
              email: "",
              classTeacher: "two"));

      print("Teacher Name: ${teacher.name}");
      print("+++++++++++++");
      print("Marks:");
      student.marks.forEach((subject, mark) {
        print("$subject: $mark");
      });
      print("------------");
    } else {
      print("Student with ID $id not found in the school.");
    }
  }
}

  ///
  ///
  ///
  ///
  ///
////////////////////
  ///
  ///
  ///
  ///
  ///
//////           main
  ///
  ///
  ///
  ///
////////////////////
  ///
  ///
  ///
  ///
  ///
//  
// void main() {
//   School school = School();

//   //Student student=Student(studentId: 2, username: "usernam", password: "www", enrollmentNo: 3, gender:" gender", email:" email", phoneNo:3, address: "address", classId: 2);
//   Principal principal = Principal(school);
//   int classId = int.parse(stdin.readLineSync()!);
//   principal.modifyTeacher(classId);

//   print('Enter a valid index between 1 and ${school.studentNames.length}:');
//   int index = int.parse(stdin.readLineSync()!);

//   if (index < 1 || index > school.studentNames.length) {
//     print('Invalid index. Please provide a valid index.');
//   } else {
//     principal.prepare_Report_Cards_index(index);
//     print("-------------------------------------");
//  }
//   print("Log In:");
//   if (!principal.login()) {
//     print("Login failed. Exiting...");
//     return;
//   }

//   while (true) {
//     print("""
//   1. Log Out.
//   2. Add New Teacher.
//   3. Add New Student.
//   4.view student.
//   5.view teacher.
//   6. Exit.
// """);

//     stdout.write("Choose an option (1-6): ");
//     String choice = stdin.readLineSync()!;

//     switch (choice) {
//       case '1':
//         principal.logout();
//         break;
//       case '2':
//         principal.addNewTeacher();
//         break;
//       case '3':
//         principal.addNewStudent();
//         break;
//       case '4':
//         principal.viewstudent();
//         break;
//       case '5':
//         principal.viewteacher();
//         break;
//       case '6':
//         principal.viewteacher();
//         stdout.write("remove for teacher id?");
//         int input = int.parse(stdin.readLineSync()!);
//         principal.modifyTeacher(input);
//         break;

//       case "7":
//         return;
//     }
//   }
//}
