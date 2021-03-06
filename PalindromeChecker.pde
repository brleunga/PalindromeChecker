public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if(palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    }
    else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  String backwards = reverse(word);
  word = word.toLowerCase();
  String word2 = "";
  for (int i = 0; i < word.length(); i++) {
    if (!word.substring(i, i+1).equals(" ")) {
      if (Character.isLetter(word.charAt(i)) == true) {
          word2 = word2 + word.substring(i, i+1);
      }
    }  
  }
  if (backwards.equals(word2)) {
    return true;
  }
  return false;
}
public String reverse(String str)
{
    String sNew = new String();
    int last = str.length()-1;
    str = str.toLowerCase();
    for (int i = last; i >= 0; i--) {
      if (!str.substring(i, i+1).equals(" ")) {
        if (Character.isLetter(str.charAt(i)) == true) {
          sNew = sNew + str.substring(i, i+1);
        }
      }
    }
    return sNew;
}