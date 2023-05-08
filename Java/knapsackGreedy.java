import java.util.Scanner;  
public class knapsackGreedy
{

    static int Greedy(int w, int wt[], int pt[], int n)
    {
        int[] index = new int[n];
        
        for(int i=0; i<n; i++)
        {
            index[i] = i;
        }

        for(int i=0; i<n-1; i++)
        {
            for(int j = i+1; j<n; j++)
            {
                if(pt[i] < pt[j])
                {
                    int temp = index[i];
                    index[i] = index[j];
                    index[j] = temp;
                }
            }
        }
        int Tpt = 0;
        for(int i=0; i<n; i++)
        {
            int currentIndex = index[i];
            if(wt[currentIndex] <= w)
            {
                w = w - wt[currentIndex];
                Tpt = Tpt + pt[currentIndex];
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
    public static void main(String[] args)
    {
        Scanner input = new Scanner(System.in);
        System.out.println("Enter the number of item you want to store: ");
        int n = input.nextInt();
        int space = 15;
        // int length;
        int[] profit = new int[n];
        int[] weight = new int[n];
        // length = weight.length;
        System.out.println("Enter the profits of the item: ");
        for(int i=0; i<n; i++)
        {
            profit[i] = input.nextInt();
        }
        System.out.println("Enter the weights of the item: ");
        for(int i=0; i<n; i++)
        {
            weight[i] = input.nextInt();
        }
        QuickSort(profit, 0, n-1);
        // QuickSort(weight, 0, n-1);
        int result = Greedy(space, weight, profit, n);
        System.out.println(" The maximum profit is: "+result);
        input.close();

    }
}