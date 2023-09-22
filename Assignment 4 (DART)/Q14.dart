import 'dart:html';

void main() {
  // Define a list of predefined user credentials (email and password combinations)
  var userCredentials = [
    {'email': 'user1@example.com', 'password': 'password1'},
    {'email': 'user2@example.com', 'password': 'password2'},
    {'email': 'user3@example.com', 'password': 'password3'},
  ];

  bool loggedIn = false; // Variable to track if the user is logged in

  // Loop until the user successfully logs in
  for (;;) {
    // Ask the user for their email
    print('Enter your email: ');
    String enteredEmail = Console().readLineSync();

    // Ask the user for their password
    print('Enter your password: ');
    String enteredPassword = Console().readLineSync();

    // Check if the entered email and password match any of the predefined credentials
    for (var credentials in userCredentials) {
      if (enteredEmail == credentials['email'] && enteredPassword == credentials['password']) {
        print('User login successful.');
        loggedIn = true;
        break; // Exit the loop if login is successful
      }
    }

    if (loggedIn) {
      break; // Exit the outer loop if login is successful
    } else {
      print('Invalid email or password. Please try again.\n');
    }
  }
}

class Console {
  String readLineSync() {
    return Credential.readLineSync()!.trim();
  }
}
