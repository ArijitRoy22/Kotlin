fun birthday(name: String, age: Int): String
{
    val birthGreeting = "Happy Birthday $name"
    val birthAge = "You're now $age years old"
    return "$birthGreeting\n$birthAge"
}

fun main()
{
    val c = birthday("Arijit",21)
    println(c)
}