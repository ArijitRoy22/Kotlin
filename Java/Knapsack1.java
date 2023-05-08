import java.util.*;
public class Knapsack1 {
    static double knapSack(int w, int[] wt, int[] pt, int n) {
        int[] index = new int[n];
        for (int i = 0; i < n; i++) {
            index[i] = i;
        }
        for (int i = 0; i < n - 1; i++) {
            for (int j = i + 1; j < n; j++) {
                double ratio1 = (double) pt[i] / (double) wt[i];
                double ratio2 = (double) pt[j] / (double) wt[j];
                if (ratio1 < ratio2) {
                    int temp = index[i];
                    index[i] = index[j];
                    index[j] = temp;
                }
            }
        }
        double Tpt = 0.0;
        for (int i = 0; i < n; i++) {
            int currentIndex = index[i];
            if (wt[currentIndex] <= w) {
                w = w - wt[currentIndex];
                System.out.println("w: "+w);
                Tpt = Tpt + pt[currentIndex];
            }
            else
            {
                double frac = (double) w / (double) wt[currentIndex];
                System.out.println("Weight of current Index: "+wt[currentIndex]);
                Tpt = Tpt + (pt[currentIndex] * frac);
                break;
            }
        }
        return Tpt;
    }

    static int partition(int A[], int p, int r)
    {
        int x = A[r];
        int i = p - 1;
        int j,temp;
        for(j=p; j<=r-1; j++)
        {
            if(A[j] <= x)
            {
                i = i + 1;
                temp = A[i];
                A[i] = A[j];
                A[j] = temp;
            }
        }
        temp = A[i+1];
        A[i+1] = A[r];
        A[r] = temp;
        return i+1;
    }

    static void QuickSort(int A[], int p, int r)
    {
        if(p<r)
        {
            int q = partition(A, p, r);
            QuickSort(A, p, q-1);
            QuickSort(A, q+1, r);
        }
        
    }
    
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        System.out.println("Enter the number of item you want to store: ");
        int n = input.nextInt();
        int space = 50;
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
        QuickSort(profit, 0, n-1);
        QuickSort(weight, 0, n-1);
        double result = knapSack(space, weight, profit, n);
        System.out.println("Maximum value that can be obtained: " + result);
        input.close();
    }
}