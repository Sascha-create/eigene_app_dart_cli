import 'dart:io';

void main() {
  stdout.write("###################\n");

  stdout.write("#");
  stdout.write(" Z A U N F U N K ");
  stdout.write("#\n");

  stdout.write("###################\n");
  stdout.write("\n");

  bool isProgrammRunning = true;
  String userInput = "";

  while (isProgrammRunning) {
    print("Willkommen bei Zaunfunk, deinem Kleingarten Netzwerk!");
    stdout.write("\n");
    print("Du hast die Auswahl zwischen :");
    stdout.write("\n");
    stdout.write("(L)ogin   ");
    stdout.write("(F)eed anzeigen   ");
    stdout.write("Beitrag (e)rstellen   ");
    stdout.write("Programm (b)eenden");
    stdout.write("\n\n");
    stdout.write("Eingabe : ");
    userInput = stdin.readLineSync()!;

    switch (userInput) {
      case "b" || "B":
        isProgrammRunning = false;
    }
  }
}
