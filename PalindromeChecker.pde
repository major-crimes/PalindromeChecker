public void setup()
{
  String lines[] = loadStrings("palindromes.txt");
  println("there are " + lines.length + " lines");
  for (int i=0; i < lines.length; i++) 
  {
    if (palindrome(lines[i])==true)
    {
      println(lines[i] + " IS a palindrome.");
    } else
    {
      println(lines[i] + " is NOT a palindrome.");
    }
  }
}
public boolean palindrome(String word)
{
  if (word.equals(reverse(word))) {
    return true;
  }
  if ( noSpaces(word).equals(noSpaces(reverse(word)))) {
    return true;
  }
  if(noSpaces(letter(word)).toLowerCase().equals(noSpaces(letter(reverse(word).toLowerCase())))){
    return true;
  }


  return false;
}
public String reverse(String str)
{
  String sNew = new String();
  int n = str.length();
  for (int i = 0; i <= str.length()-1; i++) {
    sNew = sNew + str.substring(n-(i+1), n-i);
  }
  return sNew;
}
public String noSpaces(String sWord) {
  String boi = "";
  for (int i = 0; i < sWord.length(); i++) {
    if (sWord.charAt(i) != ' ')
      boi = boi + sWord.charAt(i);
    else
      sWord.charAt(i);
  }
  return boi;
}
public String letter(String sString){
  String c = "";
  for(int i = 0; i < sString.length(); i++){
    if(Character.isLetter(sString.charAt(i)))
    c = c + sString.charAt(i);
   
  }
  return c;
}
