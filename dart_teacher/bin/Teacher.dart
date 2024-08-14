import 'dart:io';
import 'Student.dart';

class Teacher {
  String usernameTeacher = "t";
  String passwordTeacher = "t";
  // Attributes
  late int teacherId;
  late String username;
  late String password;
  late String confirmPassword;
  late String name;
  late int age;
  late String gender;
  late int phoneNo;
  late String address;
  late String email;
  late String classTeacher;
  Student student;
// Constructor
  Teacher(
      {required this.student,
      required this.teacherId,
      required this.username,
      required this.password,
      required this.confirmPassword,
      required this.name,
      required this.age,
      required this.gender,
      required this.phoneNo,
      required this.address,
      required this.email,
      required this.classTeacher});
  // تحقق من وجودها في map (containsKey)
  Map<String, String> users = {
    "kamel": "kamel123",
  };

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
//////        void signUp()
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
  void signUp() {
    stdout.write("Enter username: ");
    String username = stdin.readLineSync()!;
    if (users.containsKey(username)) {
      print("Username already exists. Please choose a different username.");
      return;
    }

    String email;
    while (true) {
      stdout.write("e.g.,example@domain.com : ");
      email = stdin.readLineSync()!;

      if (email.contains('@') && email.contains('.') && email.contains('com')) {
        break;
      } else {
        print("Invalid email format. Please enter a valid email.");
      }
    }
    stdout.write("Enter password: ");
    String password = stdin.readLineSync()!;

    stdout.write("Confirm password: ");
    String confirmPassword = stdin.readLineSync()!;

    if (password != confirmPassword) {
      print("Passwords do not match. Please try again.");
      return;
    }

    users[username] = password;
    print("Sign up successful!\n");
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
//////           login
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
  bool login() {
     while (true) {
    stdout.write("Enter username: ");
    String username = stdin.readLineSync()!;

    stdout.write("Enter password: ");
    String password = stdin.readLineSync()!;
 if (users.containsKey(username) && users[username] == password) {
        print("Login successful!\n");
        return true;
      } else {
        print("Invalid username or password. Please try again.");
        stdout.write("Do you want to try again? (yes/no): ");
        String response = stdin.readLineSync()!.toLowerCase();

        if (response != 'yes') {
          return false;
        }
      }
    }}
    // if (users.containsKey(username) && users[username] == password) {
    //   print("Login successful!\n");
    //   return true;
    // } else {
    //   print("Invalid username or password. Please try again.");
    //   return false;
    // }
  

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
  ///
  bool login1() {
    stdout.write("Enter username: ");
    String inputUsername = stdin.readLineSync()!;
    stdout.write("Enter password: ");
    String inputPassword = stdin.readLineSync()!;
    if (inputUsername == usernameTeacher && inputPassword == passwordTeacher) {
      print("Login successful!\n");
      return true;
    } else {
      print("Invalid username or password. Please try again.");
      return false;
    }
  }

  void logout() {
    print("Logged out successfully.");
  }

  void enterMarks() {
    bool loggedIn = student.login();
    if (loggedIn) {
      student.enterMarks();
    }
  }

  void GetMarksDetail() {
    bool loggedIn = student.login();
    if (loggedIn) {
      student.displayMarks();
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
//////     main
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
  ///
}
//   void main() {
//     Student student = Student(

//         // school: school,
//         studentId: 1,
//         username: "Kamel",
//         password: "password123",
//         enrollmentNo: 12345,
//         gender: "Male",
//         email: "john.doe@example.com",
//         phoneNo: 1234567890,
//         address: "123 Main St",
//         classId: 101,
//         marks: {"mark_science ": 80, "ark_arabc": 76, " mark_math": 90});
//     Teacher teacher = Teacher(
//         student: student,
//         teacherId: 2,
//         username: "kamel",
//         password: " kamel123@",
//         confirmPassword: "kamel123@",
//         name: "kamel",
//         age: 20,
//         gender: " gender",
//         phoneNo: 07777777777,
//         address: "address",
//         email: "email",
//         classTeacher: " classTeacher");
//     teacher.enterMarks();

//     while (true) {
//       print("1. Sign Up");
//       print("2. Log In");
//       print("3. Log Out");
//       print("4. Exit");

//       stdout.write("Choose an option (1-4): ");
//       String choice = stdin.readLineSync()!;

//       switch (choice) {
//         case '1':
//           teacher.signUp();
//           print("""
// 1.EnterMarks.
// 2.GetMarksDetail.
// 3.PrepareReportCards.""");
//           String input = stdin.readLineSync()!;
//           switch (input) {
//             case '1':
//               break;
//           }

//           break;
//         case '2':
//           if (teacher.login()) {
//             print("You are now logged in.");
//           }
//           break;
//         case '3':
//           teacher.logout();
//           break;
//         case '4':
//           print("Exit...");
//           return;
//         default:
//           print("Invalid option. Please choose a number between 1 and 4.");
//       }
//     }
//   }
// }
