public class LCS {

    static int lcs(String[] X, String[] Y, int m, int n) {
        if (m == X.length || n == Y.length)
            return 0;
        if (X[m].equals(Y[n]))
            return 1 + lcs(X, Y, m + 1, n + 1);
        else
            return Math.max(lcs(X, Y, m, n + 1), lcs(X, Y, m + 1, n));
    }

    public static void main(String[] args) {
        String[] X = {"A", "G", "G", "T", "A", "B"};
        String[] Y = {"G", "X", "T", "X", "A", "Y", "B"};
        System.out.println("Length of LCS: " + lcs(X, Y, 0, 0));
    }
}