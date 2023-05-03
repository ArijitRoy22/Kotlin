/*Program to read n number of input from user and find the highest elements 
in the given number and the frequency of it.*/
import java.util.Scanner
fun main()
{
   var i = 1
   var j = 0 
   var numbers = 0
   var myArray = IntArray(100)
   var big = 0
   var freq = 0
   val scanner = Scanner(System.`in`)
   while(scanner.hasNextInt())
   {
      numbers = scanner.nextInt()
      myArray[j] = numbers 
      if(scanner.hasNextInt())
      {
         i++
      }
      if(numbers > big)
      {
         
         big = numbers
      }
      j++
   }
   val max = myArray.maxOrNull()
   for(z in 0..j - 1)
   {
      if(max == myArray[z])
      {
         freq++
      }
   }
   println("Total numbers: $i")
   print("The greatest number: $big($freq times(s)).")
}
    