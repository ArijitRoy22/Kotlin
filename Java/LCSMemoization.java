import java.util.Arrays;

public class LCSMemoization {
    static int lcs(char[] X, char[] Y, int m, int n, int[][] memo) {
        // Base case: If either of the arrays is empty, return 0
        if (m == X.length || n == Y.length)
            return 0;

        // Check if the result for the current state is already computed
        if (memo[m][n] != -1)
            return memo[m][n];

        // If the last characters of the arrays match, recursively compute LCS for the
        // remaining arrays
        if (X[m] == Y[n])
            return memo[m][n] = 1 + lcs(X, Y, m + 1, n + 1, memo);

        // If the last characters don't match, compute LCS by excluding one character at a time
        int result = Math.max(lcs(X, Y, m + 1, n, memo), lcs(X, Y, m, n + 1, memo));

        // Memoize the computed result
        memo[m][n] = result;

        return result;
    }

    public static void main(String[] args) {
        char[] X = {'A', 'G', 'G', 'T', 'A', 'B'};
        char[] Y = {'G', 'X', 'T', 'X', 'A', 'Y', 'B'};

        int m = X.length;
        int n = Y.length;

        int[][] memo = new int[m + 1][n + 1];
        for (int[] row : memo)
            Arrays.fill(row, -1);

        int lcsLength = lcs(X, Y, 0, 0, memo);
        System.out.println("Length of Longest Common Subsequence: " + lcsLength);
    }
}
