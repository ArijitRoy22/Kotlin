val fruits: MutableList<String> = mutableListOf("Banana","Apple","Mango")

fun main()
{
    println(fruits.size)
    println("Size of the fruits is ${fruits.size}")

    fruits.forEach{
        fruit->println(fruit)
    }

    fruits.add("Condom")
    fruits.forEach{
        fruit->println(fruit)
    }
}