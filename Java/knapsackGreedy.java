import java.util.Arrays;
import java.util.Scanner;

public class knapsackGreedy {
    static int[] sortRatio(int[] index, double[] ratio) {
        int n = index.length;
        boolean swapped = true;
        while (swapped) {
            swapped = false;
            for (int i = 1; i < n; i++) {
                if (ratio[i] > ratio[i-1]) {
                    double tempRatio = ratio[i];
                    ratio[i] = ratio[i-1];
                    ratio[i-1] = tempRatio;
                    
                    int tempIndex = index[i];
                    index[i] = index[i-1];
                    index[i-1] = tempIndex;
                    
                    swapped = true;
                }
            }
        }
        
        return index;
    }

    static int Greedy(int w, int wt[], int pt[], int n) {
        int[] index = new int[n];
        int[] count = new int[n];
        double[] ratio = new double[n];
        for (int i = 0; i < n; i++) {
            index[i] = i;
        }

        for (int i = 0; i < n; i++) {
            ratio[i] = pt[i]/wt[i];
        }
        System.out.println(Arrays.toString(ratio));
        
        
        sortRatio(index, ratio);
        int Tpt = 0;
        for (int i = 0; i < n; i++) {
            int currentIndex = index[i];
            if (wt[currentIndex] <= w) {
                w = w - wt[currentIndex];
                count[currentIndex] = 1;
                Tpt = Tpt + pt[currentIndex];
            }
           
        }
        System.out.println(Arrays.toString(count));
        return Tpt;
    }

    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Enter the number of item you want to store: ");
        int n = input.nextInt();
        System.out.println("Enter the capacity of the bag");
        int space = input.nextInt();
      
        int[] profit = new int[n];
        int[] weight = new int[n];
      
        System.out.println("Enter the profits of the item: ");
        for (int i = 0; i < n; i++) {
            profit[i] = input.nextInt();
        }
        System.out.println("Enter the weights of the item: ");
        for (int i = 0; i < n; i++) {
            weight[i] = input.nextInt();
        }

        int result = Greedy(space, weight, profit, n);
        System.out.println(" The maximum profit is: " + result);
        input.close();

    }
}