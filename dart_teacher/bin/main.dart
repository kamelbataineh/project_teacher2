import 'Principal.dart';
import 'Student.dart';
import 'Teacher.dart';
import 'dart:io';
import 'array.dart';

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
///        (void teacher())
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
void teacher() {
  Teacher teacher = Teacher(
    student: Student(
      studentId: 1,
      username: "s",
      password: "123",
      enrollmentNo: 12345,
      gender: "Male",
      email: "john.doe@example.com",
      phoneNo: 1234567890,
      address: "123 Main St",
      classId: 101,
      marks: {
        "mark_science": 80,
        "mark_arabic": 76,
        "mark_math": 90,
      },
    ),
    teacherId: 2,
    username: "t",
    password: "123",
    confirmPassword: "123",
    name: "Kamel",
    age: 20,
    gender: "Male",
    phoneNo: 07777777777,
    address: "Address",
    email: "email@example.com",
    classTeacher: "Class Teacher",
  );
  print("Log In:");
  if (!teacher.login1()) {
    print("Login failed. Exiting...");
    return;
  }
  while (true) {
    print("1. Sign Up");
    print("2. Log In");
    print("3. Log Out");
    print("4. Exit");

    stdout.write("Choose an option (1-4): ");
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        teacher.signUp();
        print("Go to (Log In).\n----------------");
        break;

      case '2':
        {
          if (teacher.login()) {
            print("You are now logged in.");

            while (true) {
              print("""
1.EnterMarks
2.Get Marks Detail
3.Exit...
""");
              stdout.write("Choose an option (1-3): ");
              String choice1 = stdin.readLineSync()!;
              switch (choice1) {
                case '1':
                  teacher.enterMarks();
                  break;
                case '2':
                  teacher.GetMarksDetail();
                  break;
                case '3':
                  print("exit");
                  return;
                default:
                  print("return number.");
              }
            }
          }
        }
      case '3':
        teacher.logout();
        return;
      case '4':
        print("Exit...");
        return;
      default:
        print("Invalid option. Please choose a number between 1 and 4.");
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
/////////////     (void student())
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

void student() {
  Student student = Student(
      // school: school,

      studentId: 1,
      username: "john_doe",
      password: "password123",
      enrollmentNo: 12345,
      gender: "Male",
      email: "john.doe@example.com",
      phoneNo: 1234567890,
      address: "123 Main St",
      classId: 101,
      marks: {"mark_science ": 80, "ark_arabc": 76, " mark_math": 90});

  while (true) {
    print("1. Sign Up");
    print("2. Log In");
    print("3. Log Out");
    print("4. Exit");

    stdout.write("Choose an option (1-4): ");
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        student.signUp();
        print("Go to (Log In).\n----------------");
        break;
      case '2':
        if (student.login()) {
          print("You are now logged in.");

          student.viewReportCard();
        }
        break;
      case '3':
        student.logout();
        break;
      case '4':
        print("Exit...");
        return;
      default:
        print("Invalid option. Please choose a number between 1 and 5.");
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
////////////       (void principal())
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

void principal() {
  School school = School();
  Principal principal = Principal(school);
  print("Log In:");
  if (!principal.login()) {
    print("Login failed. Exiting...");
    return;
  }

  while (true) {
    print("""
  1. Log Out.
  2. Add New Teacher.
  3. Add New Student.
  4.view student.
  5.view teacher.
  6.view class.
  7.Student By Index.
  8.Teacher By Index.
  9.modify Teacher.
  10.modify student.
  11.modify Class.
  12.add new Class.
  13.Prepare Report Cards.
  14.prepare_Report_Cards_index
  15.Exit......
""");

    stdout.write("Choose an option (1-15): ");
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        principal.logout();
        print("-------------------------------------");
        return;
      case '2':
        principal.viewteacher();
        principal.addNewTeacher();
        print("-------------------------------------");

        break;
      case '3':
        principal.viewstudent();
        principal.addNewStudent();
        print("-------------------------------------");

        break;
      case '4':
        principal.viewstudent();
        print("-------------------------------------");

        break;
      case '5':
        principal.viewteacher();

        print("-------------------------------------");
        break;
      case '6':
        principal.viewclasss();
        print("-------------------------------------");
        break;

      case '7':
        while (true) {
          print(
              'Enter a valid index between 1 and ${school.studentNames.length}:');
          int index = int.parse(stdin.readLineSync()!);

          if (index < 1 || index > school.studentNames.length) {
            print('Invalid index. Please provide a valid index.');
          } else {
            school.printStudentByIndex(index);
            print("-------------------------------------");
            break;
          }
        }
        break;
      case '8':
        while (true) {
          print(
              'Enter a valid index between 1 and ${school.teacherNames.length}:');
          int index = int.parse(stdin.readLineSync()!);

          if (index < 1 || index > school.teacherNames.length) {
            print('Invalid index. Please provide a valid index.');
          } else {
            school.printTeacherByIndex(index);
            print("-------------------------------------");
            break;
          }
        }
        break;
      case '9':
        principal.viewteacher();
        stdout.write("remove for teacher id?");
        int input = int.parse(stdin.readLineSync()!);
        principal.modifyTeacher(input);
        break;
      case '10':
        principal.viewstudent();
        stdout.write("remove for student id?");
        int input = int.parse(stdin.readLineSync()!);
        principal.modifyStudent(input);
        break;
      case '11':
        principal.viewclasss();
        stdout.write("remove for class id?");
        int input = int.parse(stdin.readLineSync()!);
        principal.modifyClass(input);
        break;
      case '12':
        principal.viewclasss();
        principal.addNewClass();
        break;
      case '13':
        principal.prepareReportCards();
        break;
      case '14':
        while (true) {
          print(
              'Enter a valid index between 1 and ${school.studentNames.length}:');
          int index = int.parse(stdin.readLineSync()!);

          if (index < 1 || index > school.studentNames.length) {
            print('Invalid index. Please provide a valid index.');
          } else {
            principal.prepare_Report_Cards_index(index);
            print("-------------------------------------");
          }
          break;
        }
      case '15':
        print("Eixt...");
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
//////////////     (main)
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

// void main(List<String> args) {
//   while (true) {
//     print("""\n
// 1.Admin.
// 2.Teacher.
// 3.Student.
// 4.Exit.
// """);
//     stdout.write("Enter number :");
//     String input = stdin.readLineSync()!;
//     switch (input) {
//       case "1":
//         principal();
//         print("-------------------------------------");
//         break;
//       case "2":
//         teacher();
//         print("-------------------------------------");
//         break;
//       case "3":
//         student();
//         print("-------------------------------------");

//         break;
//       case "4":
//         print("Exit........");
//         print("-------------------------------------");

//         return;
//       default:
//         stdout.write("Choose an option (1-4): ");
//         break;
//     }
//   }
// }
