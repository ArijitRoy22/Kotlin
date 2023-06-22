<<<<<<< HEAD
import java.util.Arrays;
import java.util.Scanner;

public class knapsackGreedy {
=======
import java.util.Arrays; // Importing the Arrays class for array-related operations
import java.util.Scanner; // Importing the Scanner class for user input

public class knapsackGreedy {
    
    // Function to sort the items based on the profit-to-weight ratio
>>>>>>> ad8535a (Done)
    static int[] sortRatio(int[] index, double[] ratio) {
        int n = index.length;
        boolean swapped = true;
        while (swapped) {
            swapped = false;
            for (int i = 1; i < n; i++) {
                if (ratio[i] > ratio[i-1]) {
<<<<<<< HEAD
                    double tempRatio = ratio[i];
                    ratio[i] = ratio[i-1];
                    ratio[i-1] = tempRatio;
                    
                    int tempIndex = index[i];
                    index[i] = index[i-1];
                    index[i-1] = tempIndex;
                    
=======
                    // Swap the ratio values
                    double tempRatio = ratio[i];
                    ratio[i] = ratio[i-1];
                    ratio[i-1] = tempRatio;

                    // Swap the corresponding indices
                    int tempIndex = index[i];
                    index[i] = index[i-1];
                    index[i-1] = tempIndex;

>>>>>>> ad8535a (Done)
                    swapped = true;
                }
            }
        }
        
<<<<<<< HEAD
        return index;
    }

=======
        return index; // Return the sorted index array
    }

    // Greedy function to calculate the maximum profit
>>>>>>> ad8535a (Done)
    static int Greedy(int w, int wt[], int pt[], int n) {
        int[] index = new int[n];
        int[] count = new int[n];
        double[] ratio = new double[n];
<<<<<<< HEAD
=======
        
        // Initializing the index array
>>>>>>> ad8535a (Done)
        for (int i = 0; i < n; i++) {
            index[i] = i;
        }

<<<<<<< HEAD
        for (int i = 0; i < n; i++) {
            ratio[i] = pt[i]/wt[i];
        }
        System.out.println(Arrays.toString(ratio));
        
        
        sortRatio(index, ratio);
        int Tpt = 0;
=======
        // Calculating the profit-to-weight ratio for each item
        for (int i = 0; i < n; i++) {
            ratio[i] = (double) pt[i] / wt[i];
        }
        System.out.println(Arrays.toString(ratio)); // Printing the ratio array
        
        sortRatio(index, ratio); // Sorting the items based on the ratio
        
        int Tpt = 0; // Variable to store the total profit
>>>>>>> ad8535a (Done)
        for (int i = 0; i < n; i++) {
            int currentIndex = index[i];
            if (wt[currentIndex] <= w) {
                w = w - wt[currentIndex];
                count[currentIndex] = 1;
                Tpt = Tpt + pt[currentIndex];
            }
<<<<<<< HEAD
           
        }
        System.out.println(Arrays.toString(count));
        return Tpt;
=======
        }
        System.out.println(Arrays.toString(count)); // Printing the count array
        
        return Tpt; // Return the total profit
>>>>>>> ad8535a (Done)
    }

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
<<<<<<< HEAD
        System.out.println("Enter the number of item you want to store: ");
        int n = input.nextInt();
        System.out.println("Enter the capacity of the bag");
=======
        System.out.println("Enter the number of items you want to store: ");
        int n = input.nextInt();
        System.out.println("Enter the capacity of the bag: ");
>>>>>>> ad8535a (Done)
        int space = input.nextInt();
      
        int[] profit = new int[n];
        int[] weight = new int[n];
      
<<<<<<< HEAD
        System.out.println("Enter the profits of the item: ");
        for (int i = 0; i < n; i++) {
            profit[i] = input.nextInt();
        }
        System.out.println("Enter the weights of the item: ");
=======
        System.out.println("Enter the profits of the items: ");
        for (int i = 0; i < n; i++) {
            profit[i] = input.nextInt();
        }
        System.out.println("Enter the weights of the items: ");
>>>>>>> ad8535a (Done)
        for (int i = 0; i < n; i++) {
            weight[i] = input.nextInt();
        }

<<<<<<< HEAD
        int result = Greedy(space, weight, profit, n);
        System.out.println(" The maximum profit is: " + result);
        input.close();

    }
}
=======
        int result = Greedy(space, weight, profit, n); // Calculate the maximum profit
        System.out.println("The maximum profit is: " + result); // Print the maximum profit
        input.close(); // Close the Scanner object to release system resources
    }
}
>>>>>>> ad8535a (Done)
