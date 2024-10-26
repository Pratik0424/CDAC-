public class Pyramid {
	
    public static void main(String[] args) {
        int n = 6; //  rows
        for (int i = 1; i <= n; i++) {
            for (int j = i; j < n; j++) {
                System.out.print("  "); // Print space
            }
            for (int j = 1; j <= (2 * i - 1); j++) {
                if (j == 1 || j == (2 * i - 1) || i == n) {
                    System.out.print("* "); // corner star
                } else {
                    System.out.print("  "); // inside space of loop
                }
            }


        System.out.println();

        }
    }
}

public class ReversePyramid {
    public static void main(String[] args) {
        int n = 6; // Number of rows
        for (int i = n; i >= 1; i--) {
            for (int j = n; j > i; j--) {
                System.out.print("  "); // Print spaces
            }
            for (int j = 1; j <= (2 * i - 1); j++) {
                if (j == 1 || j == (2 * i - 1) || i == n) {
                    System.out.print("* "); // borders star
                } else {
                    System.out.print("  "); // inside py
                }
            }
            System.out.println();
        }
    }
}


public class AZPyramid {
    public static void main(String[]  args) {
        int n = 5; // Number of rows
        char letter = 'A'; // Starting letter

        for (int i = 1; i <= n; i++) {
            for (int j = i; j < n; j++) {
                System.out.print("  ");
            }

            for (int j = 1; j <= (2 * i - 1); j++) {// Print letter
                System.out.print(letter + " ");
                letter++;
                
                if (letter > 'Z') { //stop
                    break;
                }
            }
            System.out.println();
        }
    }
}


