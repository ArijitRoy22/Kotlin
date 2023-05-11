import java.util.Arrays;

public class testCase {
    public static int[] sortRatio(int[] index, double[] ratio) {
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
    
    
      
    
    public static void main(String[] args) {
        int[] index = {0, 1, 2, 3, 4, 5, 6};
        double[] ratio = {5.00, 1.67, 3.00, 1.00, 6.00, 4.50, 3.00};
        int[] sortedIndex = sortRatio(index, ratio);
        System.out.println(Arrays.toString(sortedIndex)); // [4, 0, 5, 2, 6, 1, 3]

    }
}
