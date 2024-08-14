import 'dart:io';

class Student {
  // Attributes
  late int studentId;
  late String username;
  late String password;
  late int enrollmentNo;
  late String gender;
  late String email;
  late int phoneNo;
  late String address;
  late int classId;
  Map<String, int> marks;
  // Constructor
  Student({
    required this.studentId,
    required this.username,
    required this.password,
    required this.enrollmentNo,
    required this.gender,
    required this.email,
    required this.phoneNo,
    required this.address,
    required this.classId,
    required this.marks,
  });

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
//////           signUp
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
      stdout.write("Enter email: ");
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
      username = stdin.readLineSync()!;

      stdout.write("Enter password: ");
      password = stdin.readLineSync()!;

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
    }
  }

  ///
  ///
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
  ///
  void enterMarks() {
    while (true) {
      stdout.write("Enter mark for Arabic: ");
      int mark_arabc = int.parse(stdin.readLineSync()!);

      marks['Arabic'] = mark_arabc;

      stdout.write("Enter mark for Math: ");
      int mark_math = int.parse(stdin.readLineSync()!);
      marks['Math'] = mark_math;

      stdout.write("Enter mark for Science: ");
      int mark_science = int.parse(stdin.readLineSync()!);
      marks['Science'] = mark_science;
      print("Marks entered successfully for ${username}.");
      stdout
          .write("Do you want to enter marks for another student? (yes/no): ");
      String response = stdin.readLineSync()!.toLowerCase();
      if (response == 'yes') {
        if (login()) {
          continue;
        } else {
          print("Login failed. Exiting the program.");
          break;
        }
      } else {
        break;
      }
    }
  }

  ///
  ///
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
  ///
  void displayMarks() {
    print('Marks for ${username}:');
    marks.forEach((subject, mark) {
      print('Subject: $subject, Mark: $mark');
    });
  }

  ///
  ///
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
  ///
  void logout() {
    print("Logged out successfully.");
  }

  ///
  ///
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
  ///
  void viewReportCard() {
    print('Report card for student $username:');
    print('Enrollment Number: $enrollmentNo');
    print('Gender: $gender');
    print('Email: $email');
    print('Phone Number: $phoneNo');
    print('Address: $address');
    print('Class ID: $classId');
    print('Marks:');
    marks.forEach((subject, mark) {
      print('  $subject: $mark');
    });
  }

  ///
  ///
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
  ///
  void showOptions(Student student) {
    while (true) {
      print("""
1. View Report Card
2. Logout
""");
      stdout.write("Enter your choice: ");
      String choice = stdin.readLineSync()!;

      switch (choice) {
        case "1":
          student.viewReportCard();
          break;
        case "2":
          student.logout();
          return;
        default:
          print("Invalid choice. Please enter '1' or '2'.");
      }
    }
  }
}
  ///
  ///
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
  ///
// void main() {
//   School school = School();
//   Student student = Student(
//       // school: school,

//       studentId: 1,
//       username: "john_doe",
//       password: "password123",
//       enrollmentNo: 12345,
//       gender: "Male",
//       email: "john.doe@example.com",
//       phoneNo: 1234567890,
//       address: "123 Main St",
//       classId: 101,
//       marks: {"mark_science ": 80, "ark_arabc": 76, " mark_math": 90});

//   while (true) {
//     print("1. Sign Up");
//     print("2. Log In");
//     print("4. Exit");

//     stdout.write("Choose an option (1-5): ");
//     String choice = stdin.readLineSync()!;

//     switch (choice) {
//       case '1':
//         student.signUp();
//         print("Go to (Log In).\n----------------");
//         break;
//       case '2':
//         if (student.login()) {
//           print("You are now logged in.");
//           print("-------------------------");
//           student.showOptions(student);
//           print("-------------------------");
//         }
//         break;
//       case '4':
//         print("Exit...");
//         return;
//       default:
//         print("Invalid option. Please choose a number between 1 and 5.");
//     }
//   }
// }
