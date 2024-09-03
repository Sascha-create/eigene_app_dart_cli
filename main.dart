import 'dart:io';
import 'header_zaunfunk.dart';
import 'loading.dart';
import 'show_feed.dart';
import 'intro.dart';

void main() {
  bool isProgrammRunning = true;
  String userInput = "";
  String userArticle = "";
  String userName = "";
  String userPassword = "";

  List<String> feed = [
    "Otto : Ich habe Gehwgplatten abzugeben !",
    "Jane : Möchte jemand Ableger von meinen Rosen haben ?"
  ];

  stdout.write('\x1B[2J\x1B[0;0H');
  intro();
  sleep(Duration(seconds: 2));
  stdout.write('\x1B[2J\x1B[0;0H');

  while (isProgrammRunning) {
    header();

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

    // Registrieren einfügen

    switch (userInput) {
      case "b" || "B":
        stdout.write('\x1B[2J\x1B[0;0H');
        isProgrammRunning = false;
      case "l" || "L":
        stdout.write('\x1B[2J\x1B[0;0H');
        header();
        stdout.write("\n");
        print(
            "Für Login den Nutzernamen und Passwort eingeben ! Mit 'Enter' bestätigen !");
        stdout.write("Nutzername : ");
        userName = stdin.readLineSync()!;
        stdout.write("Passwort : ");
        userPassword = stdin.readLineSync()!;
        if (userName == "Sascha" && userPassword == "baum123") {
          stdout.write('\x1B[2J\x1B[0;0H');
          loading();
        } else {
          stdout.write('\x1B[2J\x1B[0;0H');
          header();
          print("");
          print("Nutzername oder Passwort falsch !");
        }

      case "f" || "F":
        stdout.write('\x1B[2J\x1B[0;0H');
        stdout.write("\n\n");
        header();
        showFeed(feed);

      case "e" || "E":
        stdout.write('\x1B[2J\x1B[0;0H');
        header();
        stdout.write("\n");
        print("Beitrag verfassen und mit 'Enter' bestätigen !");
        stdout.write("Beitrag erstellen : ");
        userArticle = stdin.readLineSync()!;
        feed.add("$userName : " + "$userArticle");
        stdout.write('\x1B[2J\x1B[0;0H');
        stdout.write("\n\n");
        header();
        showFeed(feed);
      case "o" || "O":
        userName = "";
        userPassword = "";
        stdout.write('\x1B[2J\x1B[0;0H');
        header();
        stdout.write("\n");
        stdout.write("Besuche uns bald wieder !");
        sleep(Duration(seconds: 2));
        stdout.write('\x1B[2J\x1B[0;0H');
    }
  }
}
