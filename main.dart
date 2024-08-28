import 'dart:io';
import 'header_zaunfunk.dart';

void main() {
  bool isProgrammRunning = true;
  String userInput = "";
  String userArticle = " kein Beitrag verfasst !";
  String userName = "";
  String userPassword = "";

  while (isProgrammRunning) {
    header();

    stdout.write("\n");
    print("Willkommen bei Zaunfunk, deinem Kleingarten Netzwerk!");
    stdout.write("\n");
    if (userName != "Sascha" && userPassword != "baum123") {
      print("Du hast die Auswahl zwischen :");
      print("(einloggen für mehr Auswahl)");
      stdout.write("\n");
      stdout.write("•(L)ogin   ");
    } else {
      print("Du hast die Auswahl zwischen :");
      stdout.write("\n");
      stdout.write("•L(o)gout   ");
    }
    if (userName == "Sascha" && userPassword == "baum123") {
      stdout.write("•(F)eed anzeigen   ");
      stdout.write("•Beitrag (e)rstellen   ");
    }
    stdout.write("•Programm (b)eenden");
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
            "Für Login den Nutzernamen und Passwort eingeben ! Mit 'Enter' bestätigen !");
        stdout.write("Nutzername : ");
        userName = stdin.readLineSync()!;
        stdout.write("Passwort : ");
        userPassword = stdin.readLineSync()!;
        if (userName == "Sascha" && userPassword == "baum123") {
          print("");
          print("Du bist angemeldet !");
        } else {
          print("");
          print("Nutzername oder Passwort falsch !");
        }

      case "f" || "F": // evtl vorhandene Feeds noch erstellen
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
      case "o" || "O":
        userName = "";
        userPassword = "";
    }
  }
}
