import java.util.*;
public class Knapsack1 {

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
        System.out.println(Arrays.toString(ratio));
        return index;
    }

    static double knapSack(int w, int[] wt, int[] pt, int n) {
        int[] index = new int[n];
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
                Tpt = Tpt + pt[currentIndex];
            }
            else
            {
                double frac = (double) w / (double) wt[currentIndex];
                
                Tpt = Tpt + (pt[currentIndex] * frac);
                break;
            }
        }
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
        input.close();
    }
}
