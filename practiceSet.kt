fun main() {
    var discountPercentage: Int = 0
    var offer: String = ""
    val item = "Google Chromecast"
    val operatingSystem = "Chrome OS"
    val emailId = "sample@gmail.com"
    discountPercentage = 20

    offer = "Sale - Up to $discountPercentage% discount on $item! Hurry up!"
   
    
    println(offer)
    Concate()
    messageFormatting()
    BasicMath()
    println(displayAlertMessage(operatingSystem, emailId))
    println(WeatherofCity("Ankara",27,31,82))
    println(WeatherofCity("Tokyo", 32, 36, 10))
}

fun Concate() {
    val numberOfAdults = 20
    val numberOfKids = 30
    val total = numberOfAdults + numberOfKids
    println("The total party size is: $total")
}

fun messageFormatting() {
    val baseSalary = 5000
    val bonusAmount = 1000
    val totalSalary = baseSalary + bonusAmount
    println("Congratulations for your bonus! You will receive a total of $totalSalary (additional bonus).")
}

fun BasicMath() {
    val firstNumber = 10
    val secondNumber = 5
    val result = firstNumber + secondNumber
    println("$firstNumber + $secondNumber = $result")
}

fun displayAlertMessage(operatingSystem: String, emailId: String): String
{
    val first = "There's a new sign-in on $operatingSystem"
    val second = " for you Google Account $emailId"
    return "$first$second"
    // return "There's a new sign-in on $operatingSystem for you Google Account $emailId."
}

fun WeatherofCity(City: String, Low_Temperature: Int, High_Temperature: Int, Chance_of_rain: Int): String
{
    return "City: $City\nLow Temperature: $Low_Temperature, High Temperature: $High_Temperature\nChance of rain: $Chance_of_rain%"
}


    