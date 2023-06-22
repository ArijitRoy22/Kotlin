<<<<<<< HEAD
import java.util.Scanner;

public class knapsack 
{
    static int max(int A, int B)
    {
        return (A>B?A:B);
    }
    static int knapsackk(int w, int[] wt, int[] val, int n)
    {
        if(n == 0 || w == 0)
        {
            return 0;
        }
        if(wt[n-1] > w)
        {
            return knapsackk(w, wt, val, n-1);
        }
        else
        {
            return max(val[n-1] + knapsackk(w-wt[n-1], wt, val, n), knapsackk(w, wt, val, n-1));
        }
    }
    public static void main(String[] args) {

        Scanner input = new Scanner(System.in);        
        System.out.println("Enter the size of the array: ");
        int a = input.nextInt();
        int[] P = new int[a];
        int[] wt = new int[a];
        int w;

        System.out.println("Enter the profit values: ");
        for(int i=0; i<a; i++)
        {
            P[i] = input.nextInt();
        }
        System.out.println("Enter the weight values: ");
        for(int i=0; i<a; i++)
        {
            wt[i] = input.nextInt();
        }
        System.out.println("Enter the capacity of your bag: ");
        w = input.nextInt();
        int n = wt.length;
        int A = knapsackk(w, wt, P, n);
        System.out.println("The total profit will be: "+A);
        input.close();
        
    }    
}
=======
import java.util.Scanner; // Importing the Scanner class for user input

public class knapsack {
// Function to calculate the maximum of two values
static int max(int A, int B) {
return (A > B ? A : B); // Returns the greater value
}
// Recursive function to solve the knapsack problem
static int knapsackk(int w, int[] wt, int[] val, int n) {
    if (n == 0 || w == 0) {
        return 0;  // Base case: if either the weight or the number of items is 0, the value is 0
    }

    if (wt[n - 1] > w) {
        return knapsackk(w, wt, val, n - 1);  // If the weight of the nth item exceeds the capacity, exclude it and recursively solve for the remaining items
    } else {
        // Include the nth item and recursively solve for the remaining items, considering the reduced capacity
        // Compare the value obtained by including the nth item with the value obtained by excluding it, and return the maximum
        return max(val[n - 1] + knapsackk(w - wt[n - 1], wt, val, n), knapsackk(w, wt, val, n - 1));
    }
}

public static void main(String[] args) {
    Scanner input = new Scanner(System.in);  // Create a Scanner object for user input

    System.out.println("Enter the size of the array: ");
    int a = input.nextInt();  // Read the size of the array
    int[] P = new int[a];  // Array to store profit values
    int[] wt = new int[a];  // Array to store weight values
    int w;

    System.out.println("Enter the profit values: ");
    for (int i = 0; i < a; i++) {
        P[i] = input.nextInt();  // Read profit values from the user
    }

    System.out.println("Enter the weight values: ");
    for (int i = 0; i < a; i++) {
        wt[i] = input.nextInt();  // Read weight values from the user
    }

    System.out.println("Enter the capacity of your bag: ");
    w = input.nextInt();  // Read the capacity of the knapsack
    int n = wt.length;  // Get the length of the weight array

    int A = knapsackk(w, wt, P, n);  // Calculate the maximum profit using the knapsack function
    System.out.println("The total profit will be: " + A);  // Print the maximum profit

    input.close();  // Close the Scanner object
    }
}
>>>>>>> ad8535a (Done)
