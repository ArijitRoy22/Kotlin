import java.util.*;
<<<<<<< HEAD
public class Knapsack1 {

    static int[] sortRatio(int[] index, double[] ratio) {
        int n = index.length;
        boolean swapped = true;
        while (swapped) {
            swapped = false;
            for (int i = 1; i < n; i++) {
                if (ratio[i] > ratio[i-1]) {
=======

public class Knapsack1 {

    // Function to sort the index array based on the ratio array
    static int[] sortRatio(int[] index, double[] ratio) {
        // Sorting the index array based on the ratio array
        int n = index.length;
        boolean swapped = true;
        
        while (swapped) {
            swapped = false;
            
            for (int i = 1; i < n; i++) {
                if (ratio[i] > ratio[i-1]) {
                    // Swap the ratio values
>>>>>>> ad8535a (Done)
                    double tempRatio = ratio[i];
                    ratio[i] = ratio[i-1];
                    ratio[i-1] = tempRatio;
                    
<<<<<<< HEAD
=======
                    // Swap the index values
>>>>>>> ad8535a (Done)
                    int tempIndex = index[i];
                    index[i] = index[i-1];
                    index[i-1] = tempIndex;
                    
                    swapped = true;
                }
            }
        }
<<<<<<< HEAD
        System.out.println(Arrays.toString(ratio));
        return index;
    }

    static double knapSack(int w, int[] wt, int[] pt, int n) {
        int[] index = new int[n];
        double[] count = new double[n];
        double[] ratio = new double[n];
        for (int i = 0; i < n; i++) {
            index[i] = i;
        }
        for (int i = 0; i < n; i++) {
            ratio[i] = pt[i]/wt[i];
        }
        sortRatio(index, ratio);
        double Tpt = 0.0;
        for (int i = 0; i < n; i++) {
            int currentIndex = index[i];
            if (wt[currentIndex] <= w) {
                w = w - wt[currentIndex];
                count[currentIndex] = 1; 
                Tpt = Tpt + pt[currentIndex];
            }
            else
            {
                double frac = (double) w / (double) wt[currentIndex];
                count[currentIndex] = frac;
                Tpt = Tpt + (pt[currentIndex] * frac);
                break;
            }
        }
        System.out.println(Arrays.toString(count));
        return Tpt;
    }
    
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Enter the number of item you want to store: ");
        int n = input.nextInt();
        System.out.println("Enter the capacity of the bag: ");
        int space = input.nextInt();
        int[] profit = new int[n];
        int[] weight = new int[n];
        System.out.println("Enter the profits of the item: ");
        for(int i=0; i<n; i++)
        {
            profit[i] = input.nextInt();
        }
        System.out.println("Enter the wt of the item: ");
        for(int i=0; i<n; i++)
        {
            weight[i] = input.nextInt();
        }
        // QuickSort(profit, 0, n-1);
        // QuickSort(weight, 0, n-1);
        double result = knapSack(space, weight, profit, n);
        System.out.printf("Maximum value that can be obtained: %.2f",result);
=======
                
        return index;
    }

    // Function to solve the knapsack problem
    static double knapSack(int w, int[] wt, int[] pt, int n) {
        int[] index = new int[n]; // Array to store the indices of the items
        double[] count = new double[n]; // Array to store the count of each item
        double[] ratio = new double[n]; // Array to store the profit-to-weight ratios of the items
        
        for (int i = 0; i < n; i++) {
            index[i] = i; // Initialize the index array
        }
        
        for (int i = 0; i < n; i++) {
            ratio[i] = (double) pt[i] / wt[i]; // Calculate the profit-to-weight ratio for each item
        }
        System.out.println(Arrays.toString(ratio));
        sortRatio(index, ratio); // Sort the items based on their profit-to-weight ratio
        
        double Tpt = 0.0; // Total profit
        
        for (int i = 0; i < n; i++) {
            int currentIndex = index[i]; // Get the index of the current item
            
            if (wt[currentIndex] <= w) { // If the weight of the current item is less than or equal to the remaining capacity
                w = w - wt[currentIndex]; // Reduce the remaining capacity by the weight of the item
                count[currentIndex] = 1; // Set the count of the item to 1 (indicating the whole item is included)
                Tpt = Tpt + pt[currentIndex]; // Add the profit of the item to the total profit
            } else {
                double frac = (double) w / (double) wt[currentIndex]; // Calculate the fraction of the item that can be included
                count[currentIndex] = frac; // Set the count of the item to the fraction
                Tpt = Tpt + (pt[currentIndex] * frac); // Add the fractional profit to the total profit
                break; // Since the knapsack is full, exit the loop
            }
        }
        
        System.out.println(Arrays.toString(count));
        return Tpt; // Return the maximum value that can be obtained
    }

    // Main method to get user input and execute the program
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        
        System.out.println("Enter the number of items you want to store: ");
        int n = input.nextInt();
        
        System.out.println("Enter the capacity of the bag: ");
        int space = input.nextInt();
        
        int[] profit = new int[n]; // Array to store the profits of the items
        int[] weight = new int[n]; // Array to store the weights of the items
        
        System.out.println("Enter the profits of the items: ");
        for(int i = 0; i < n; i++) {
            profit[i] = input.nextInt();
        }
        
        System.out.println("Enter the weights of the items: ");
        for(int i = 0; i < n; i++) {
            weight[i] = input.nextInt();
        }
        
        double result = knapSack(space, weight, profit, n); // Solve the knapsack problem
        System.out.printf("Maximum value that can be obtained: %.2f", result); // Print the maximum value that can be obtained
        
>>>>>>> ad8535a (Done)
        input.close();
    }
}
