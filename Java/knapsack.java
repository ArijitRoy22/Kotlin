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
