import java.util.Scanner; // Importing the Scanner class to read user input

public class MatrixMultiplication {
    
    /**
     * Function to multiply two matrices using the Divide-and-Conquer method.
     * @param A     The first matrix
     * @param B     The second matrix
     * @param size  The size of the matrices
     * @return      The resulting matrix after multiplication
     */
    static int[][] matrixMultiply(int[][] A, int[][] B, int size) {
        int[][] C = new int[size][size];
        
        if (size == 1) {
            C[0][0] = A[0][0] * B[0][0];
        } else {
            int halfSize = size / 2;
            
            // Divide the matrices into four submatrices
            int[][] A11 = new int[halfSize][halfSize];  // Submatrix A11
            int[][] A12 = new int[halfSize][halfSize];  // Submatrix A12
            int[][] A21 = new int[halfSize][halfSize];  // Submatrix A21
            int[][] A22 = new int[halfSize][halfSize];  // Submatrix A22
            
            int[][] B11 = new int[halfSize][halfSize];  // Submatrix B11
            int[][] B12 = new int[halfSize][halfSize];  // Submatrix B12
            int[][] B21 = new int[halfSize][halfSize];  // Submatrix B21
            int[][] B22 = new int[halfSize][halfSize];  // Submatrix B22
            
            // Populate the submatrices
            
            // Populating submatrix A11
            for (int i = 0; i < halfSize; i++) {
                for (int j = 0; j < halfSize; j++) {
                    A11[i][j] = A[i][j];
                }
            }
            
            // Populating submatrix A12
            for (int i = 0; i < halfSize; i++) {
                for (int j = halfSize; j < size; j++) {
                    A12[i][j - halfSize] = A[i][j];
                }
            }
            
            // Populating submatrix A21
            for (int i = halfSize; i < size; i++) {
                for (int j = 0; j < halfSize; j++) {
                    A21[i - halfSize][j] = A[i][j];
                }
            }
            
            // Populating submatrix A22
            for (int i = halfSize; i < size; i++) {
                for (int j = halfSize; j < size; j++) {
                    A22[i - halfSize][j - halfSize] = A[i][j];
                }
            }
            
            // Populating submatrix B11
            for (int i = 0; i < halfSize; i++) {
                for (int j = 0; j < halfSize; j++) {
                    B11[i][j] = B[i][j];
                }
            }
            
            // Populating submatrix B12
            for (int i = 0; i < halfSize; i++) {
                for (int j = halfSize; j < size; j++) {
                    B12[i][j - halfSize] = B[i][j];
                }
            }
            
            // Populating submatrix B21
            for (int i = halfSize; i < size; i++) {
                for (int j = 0; j < halfSize; j++) {
                    B21[i - halfSize][j] = B[i][j];
                }
            }
            
            // Populating submatrix B22
            for (int i = halfSize; i < size; i++) {
                for (int j = halfSize; j < size; j++) {
                    B22[i - halfSize][j - halfSize] = B[i][j];
                }
            }
            
            // Recursively multiply submatrices
            int[][] C11 = matrixMultiply(A11, B11, halfSize);
            int[][] C12 = matrixMultiply(A12, B21, halfSize);
            int[][] C21 = matrixMultiply(A21, B11, halfSize);
            int[][] C22 = matrixMultiply(A22, B22, halfSize);
            
            // Combine submatrices to get the result
            for (int i = 0; i < halfSize; i++) {
                for (int j = 0; j < halfSize; j++) {
                    C[i][j] = C11[i][j] + C12[i][j];
                }
            }
            
            for (int i = 0; i < halfSize; i++) {
                for (int j = halfSize; j < size; j++) {
                    C[i][j] = C21[i][j - halfSize] + C22[i][j - halfSize];
                }
            }
            
            for (int i = halfSize; i < size; i++) {
                for (int j = 0; j < halfSize; j++) {
                    C[i][j] = C11[i - halfSize][j] + C21[i - halfSize][j];
                }
            }
            
            for (int i = halfSize; i < size; i++) {
                for (int j = halfSize; j < size; j++) {
                    C[i][j] = C12[i - halfSize][j - halfSize] + C22[i - halfSize][j - halfSize];
                }
            }
        }
        
        return C;
    }
    
    /**
     * Function to print a matrix.
     * @param matrix    The matrix to be printed
     * @param size      The size of the matrix
     */
    static void printMatrix(int[][] matrix, int size) {
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                System.out.print(matrix[i][j] + " ");
            }
            System.out.println();
        }
    }
    
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("Enter the size of the matrix: ");
        int size = sc.nextInt();
        
        int[][] A = new int[size][size];
        int[][] B = new int[size][size];
        
        System.out.println("Enter the elements of Matrix A: ");
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                A[i][j] = sc.nextInt();
            }
        }
        
        System.out.println("Enter the elements of Matrix B: ");
        for (int i = 0; i < size; i++) {
            for (int j = 0; j < size; j++) {
                B[i][j] = sc.nextInt();
            }
        }
        
        sc.close();
        
        System.out.println("Matrix A:");
        printMatrix(A, size);
        
        System.out.println("Matrix B:");
        printMatrix(B, size);
        
        int[][] result = matrixMultiply(A, B, size);
        
        System.out.println("Resultant Matrix:");
        printMatrix(result, size);
    }
}
