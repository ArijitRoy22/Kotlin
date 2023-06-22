public class lcs2 {
    static String lcs(String[] X, String[] Y, int m, int n) {
        if (m == X.length || n == Y.length)
            return "";
        if (X[m].equals(Y[n]))
            return X[m] + lcs(X, Y, m + 1, n + 1);
        else {
            String lcs1 = lcs(X, Y, m, n + 1);            
            String lcs2 = lcs(X, Y, m + 1, n);
            if (lcs1.length() > lcs2.length())
                return lcs1;
            else
                return lcs2;
        }
    }

    public static void main(String[] args) {
        String[] X = {"A", "G", "G", "T", "A", "B"};
        String[] Y = {"G", "X", "T", "X", "A", "Y", "B"};

        String lcsString = lcs(X, Y, 0, 0);
        int lcsLength = lcsString.length();

        System.out.println("Length of LCS: " + lcsLength);
        System.out.println("LCS String: " + lcsString);
    }
}
