import 'Student.dart';
import 'Teacher.dart';
import 'class_class.dart';

class School {
  List<Teacher> teacherNames = [
    Teacher(
      student: Student(
          studentId: 1,
          username: "Kamel",
          password: "password123",
          enrollmentNo: 12345,
          gender: "Male",
          email: "john.doe@example.com",
          phoneNo: 1234567890,
          address: "123 Main St",
          classId: 101,
          marks: {"mark_science ": 80, "ark_arabc": 76, " mark_math": 90}),
      teacherId: 1,
      username: 'john_doe',
      password: 'password1',
      confirmPassword: 'password1',
      name: 'John Doe',
      age: 35,
      gender: 'Male',
      phoneNo: 123456789,
      address: '789 Street, City',
      email: 'john.doe@example.com',
      classTeacher: 'Class A',
    ),
    Teacher(
      student: Student(
          studentId: 1,
          username: "Kamel",
          password: "password123",
          enrollmentNo: 12345,
          gender: "Male",
          email: "john.doe@example.com",
          phoneNo: 1234567890,
          address: "123 Main St",
          classId: 101,
          marks: {"mark_science ": 80, "ark_arabc": 76, " mark_math": 90}),
      teacherId: 2,
      username: 'jane_doe',
      password: 'password2',
      confirmPassword: 'password2',
      name: 'Jane Doe',
      age: 30,
      gender: 'Female',
      phoneNo: 987654321,
      address: '987 Avenue, City',
      email: 'jane.doe@example.com',
      classTeacher: 'Class B',
    ),
  ];

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
  List<Student> studentNames = [
    Student(
        studentId: 1,
        username: 'Kamel',
        password: 'password123',
        enrollmentNo: 12345,
        gender: 'Male',
        email: 'john.doe@example.com',
        phoneNo: 1234567890,
        address: '123 Main St',
        classId: 101,
        marks: {"mark_science ": 80, "ark_arabc": 76, " mark_math": 90}),
    Student(
        studentId: 2,
        username: 'Sara',
        password: 'password456',
        enrollmentNo: 67890,
        gender: 'Female',
        email: 'sara@example.com',
        phoneNo: 9876543210,
        address: '456 Avenue, City',
        classId: 2,
        marks: {"mark_science ": 80, "ark_arabc": 76, " mark_math": 90}),
  ];

  List<Class> classes = [
    Class(
      classId: 1,
      className: "A_class",
      teacherName: "ale",
    )
  ];

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
//////           add student
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
  void addStudent({
    required int studentId,
    required String username,
    required String password,
    required int enrollmentNo,
    required String gender,
    required String email,
    required int phoneNo,
    required String address,
    required int classId,
    required Map<String, int> marks,
  }) {
    studentNames.add(Student(
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
    ));
    print("Student $username added.");
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
//////           add teacher
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
  void addTeacher({
    required int teacherId,
    required String username,
    required String password,
    required String confirmPassword,
    required String name,
    required int age,
    required String gender,
    required int phoneNo,
    required String address,
    required String email,
    required String classTeacher,
  }) {
    teacherNames.add(Teacher(
      student: Student(
          studentId: 1,
          username: "Kamel",
          password: "password123",
          enrollmentNo: 12345,
          gender: "Male",
          email: "john.doe@example.com",
          phoneNo: 1234567890,
          address: "123 Main St",
          classId: 101,
          marks: {"mark_science ": 80, "ark_arabc": 76, " mark_math": 90}),
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
    ));
    print("Teacher $username added.");
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
  void addClass({
    required int classId,
    required String className,
    required String teacherName,
  }) {
    classes.add(Class(
      classId: classId,
      className: className,
      teacherName: teacherName,
    ));
    print("Class $className added.");
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
/////////       print ,student ,teacher ,class and [index]
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
  void printStudents() {
    print("Students:");
    print("| No. | Username  | Student ID |");
    print("|-----|-----------|------------|");
    for (var i = 0; i < studentNames.length; i++) {
      print(
          "| ${i + 1}. ${studentNames[i].username} | ${studentNames[i].studentId} |");
    }
  }

  ///
//////////////////////////
  ///
  void printStudentDetails() {
    for (var student in studentNames) {
      print('Student ID: ${student.studentId}');
      print('Username: ${student.username}');
      print('Enrollment No: ${student.enrollmentNo}');
      print('Gender: ${student.gender}');
      print('Email: ${student.email}');
      print('Phone No: ${student.phoneNo}');
      print('Address: ${student.address}');
      print('Class ID: ${student.classId}');
      print('-------------------');
    }
  }

  ///
//////////////////////////
  ///
  void printStudentByIndex(int index) {
    if (index < 1 || index > studentNames.length) {
      print(
          'Invalid index. Please provide a valid index between 1 and ${studentNames.length}.');
      return;
    }
    var student = studentNames[index - 1];
    print('Student ID: ${student.studentId}');
    print('Username: ${student.username}');
    print('Enrollment No: ${student.enrollmentNo}');
    print('Gender: ${student.gender}');
    print('Email: ${student.email}');
    print('Phone No: ${student.phoneNo}');
    print('Address: ${student.address}');
    print('Class ID: ${student.classId}');
  }

  ///
  ///
  ///
  ///
  ///
////////////////
  ///
  ///
  ///
  ///
  ///
  void printTeachers() {
    print("Teachers:");
    print("| No. | Username  | Teachers ID |");
    print("|-----|-----------|------------|");
    for (var i = 0; i < teacherNames.length; i++) {
      print(
          "| ${i + 1}. ${teacherNames[i].name} | ${teacherNames[i].teacherId} |");
    }
  }

  ///
//////////////////////////
  ///

  void printTeachersDetails() {
    for (var teacher in teacherNames) {
      print('Teacher ID: ${teacher.teacherId}');
      print('Username: ${teacher.username}');
      print('Password: ${teacher.password}');
      print('Confirm Password: ${teacher.confirmPassword}');
      print('Name: ${teacher.name}');
      print('Age: ${teacher.age}');
      print('Gender: ${teacher.gender}');
      print('Email: ${teacher.email}');
      print('Phone No: ${teacher.phoneNo}');
      print('Address: ${teacher.address}');
      print('Class Teacher: ${teacher.classTeacher}');
      print('-------------------');
    }
  }

  ///
//////////////////////////
  ///

  void printTeacherByIndex(int index) {
    var teacher = teacherNames[index - 1];
    print('Teacher ID: ${teacher.teacherId}');
    print('Username: ${teacher.username}');
    print('Password: ${teacher.password}');
    print('Confirm Password: ${teacher.confirmPassword}');
    print('Name: ${teacher.name}');
    print('Age: ${teacher.age}');
    print('Gender: ${teacher.gender}');
    print('Email: ${teacher.email}');
    print('Phone No: ${teacher.phoneNo}');
    print('Address: ${teacher.address}');
    print('Class Teacher: ${teacher.classTeacher}');
  }

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
  void printClasss() {
    print("Classs:");
    print("| No. | Username  | Student ID |  Teacher   |");
    print("|-----|-----------|------------|------------|");
    for (var i = 0; i < classes.length; i++) {
      print(
          "| ${i + 1}. ${classes[i].className} | ${classes[i].classId} | ${classes[i].teacherName} | ");
    }
  }
}

// void main() {
//   School school = School();
//   school.printStudents();
//   school.printStudentDetails();
//   school.printTeachers();
//   school.printTeachersDetails();
//   int index = int.parse(stdin.readLineSync()!);
//   school.printStudentByIndex(index);
// }
