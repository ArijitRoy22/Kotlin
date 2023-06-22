// write your function here
fun isVowel(a: Char): Boolean
{
    return (a == 'a' || a == 'e' || a == 'i' || a == 'o' || a == 'u' || a == 'A' || a == 'E' || a == 'I' || a == 'O' || a == 'U')
   
}
fun main() {
    val letter = readLine()!!.first()

    println(isVowel(letter))
}
