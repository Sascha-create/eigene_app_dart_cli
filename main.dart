import 'dart:io';
import 'header_zaunfunk.dart';

void main() {
  
  header();

  bool isProgrammRunning = true;
  String userInput = "";
  String userArticle = " kein Beitrag verfasst !";

  while (isProgrammRunning) {
    stdout.write("\n");
    print("Willkommen bei Zaunfunk, deinem Kleingarten Netzwerk!");
    stdout.write("\n");
    print("Du hast die Auswahl zwischen :");
    stdout.write("\n");
    stdout.write("(L)ogin   ");
    stdout.write("(F)eed anzeigen   ");
    stdout.write("Beitrag (e)rstellen   ");
    stdout.write("Programm (b)eenden");
    stdout.write("\n\n");
    stdout.write("mit 'Enter' bestätigen !");
    stdout.write("\n\n");

    stdout.write("Eingabe : ");
    userInput = stdin.readLineSync()!;

    switch (userInput) {
      case "b" || "B":
        isProgrammRunning = false;
      case "l" || "L":
        stdout.write("\n");
        print(
            "Für Login den Nutzernamen eingeben und mit 'Enter' bestätigen !");
        stdout.write("Nutzername : "); // Map mit Nutzername + Passwort
        String userName = stdin.readLineSync()!;
        stdout.write("Passwort : ");
        String userPassword = stdin.readLineSync()!;

      case "f" || "F":
        stdout.write("\n\n");
        stdout.write("   -------------------------\n\n");
        print("   $userArticle \n");
        stdout.write("   -------------------------\n\n");

      case "e" || "E":
        stdout.write("\n");
        print("Beitrag verfassen und mit 'Enter' bestätigen !");
        stdout.write("Beitrag erstellen : ");
        userArticle = stdin.readLineSync()!;
        stdout.write("\n\n");
        print("$userArticle \n\n");
    }
  }
}
