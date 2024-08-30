import 'dart:io';
/*
stdout.write("\n\n");
        stdout.write("   -------------------------\n\n");
        print("   $feed \n");
        stdout.write("   -------------------------\n\n");
*/

void showFeed(List<String> articles) {
  for (var i = 0; i < articles.length; i++) {
    stdout.write("\n\n");
    stdout.write("   ${getLine(articles[i])}\n\n");
    print("   ${articles[i]}\n");
    stdout.write("   ${getLine(articles[i])}\n\n");
  }
}

String getLine(String article) {
  String line = "";
  for (var i = 0; i < article.length; i++) {
    line += "-";
  }
  return line;
}
