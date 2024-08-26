
public class pyramid {
    public static void main(String[] args) {
    int n = 5;

    for (int i = 1; i <= n; i++) {
        for (int j = n; j <= i; j--) {
            System.out.print("*");
            if (j < i) {
                System.out.print("");
            }
        }
        System.out.println();
    }
    
    }
}

public class halfPyramid {
    public static void main(String args[]) {

        int n = 8;
        System.out.println("Enter a number");
        

        for (int i = 1; i <= n; i++) {
            if (i % 2 == 0 && i > 2) {
                continue;
            }
            for (int j = 1; j <= i; j++) {
                System.out.print("*");
            }
            System.out.println();
        }
    }
}


public class halfNum {
    public static void main(String args[]) {
        int n = 5;

        for (int i = 1; i <= n; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print(i);
                if (j < i) {
                    System.out.print("*");
                }
            }
            System.out.println();
        }

        for (int i = n; i >= 2; i--) { 
            for (int j = 1; j <= i; j++) {
                System.out.print(i);
                if (j < i) {
                    System.out.print("*");
                }
            }
            System.out.println();
        }
    }
}

class SolidRec{
	public static void main(String[] args){
		int n =4;
		int m =5;
		for(int i =1; i<=n;i++){
			for(int j =1;j<=5;j++){
				System.out.print("*");
			}
			System.out.println();
		}
	}
}


class HeloRec{
    public static void main(String[] args) {
        int m =5, n=4;
        for (int i = 1; i <= n; i++) {
            for(int j =1; j<=m ;j++){
                if (i==1 || j==1 || i==n || j==m) {
                    System.out.print("*");
                }else{
                     System.out.print(" ");
                }
            }
            System.out.println();
        }
    }
}


class Pyramid{
    public static void main(String[] args) {
        int n =9;
        for (int i = 1; i <= n; i++) {
            for(int j =1; j<=i ;j++){
                System.out.print("*");
            }
            System.out.println();
        }
    }
}

class ReversePy{
    public static void main(String[] args) {
        int n =5;

        for (int i = n; i >= 1; i--) {
            for(int j =1; j<=i ;j++){

                System.out.print("*");
            }
            System.out.println();
        }
    }
}

public class SumNaturalNumbers {
    public static void main(String[] args) {
        int sum = 0;
        for (int i = 1; i <= 50; i++) {
            sum += i;
        }
        System.out.println("Sum of the first 50 natural numbers: " + sum);
    }
}

public class Factorial {
    public static void main(String[] args) {
        int factorial = 1;
        for (int i = 1; i <= 10; i++) {
            factorial *= i;
        }
        System.out.println("Factorial of 10: " + factorial);
    }
}
public class MultiplesOfSeven {
    public static void main(String[] args) {
        System.out.println("Multiples of 7 between 1 and 100:");
        for (int i = 1; i <= 100; i++) {
            if (i % 7 == 0) {
                System.out.println(i);
            }
        }
    }
}

public class FibonacciSequence {
    public static void main(String[] args) {
        int a = 0, b = 1;
        System.out.print("Fibonacci sequence up to 21: ");
        
        while (a <= 21) {
            System.out.print(a + " ");
            int temp = b;
            b = a + b;
            a = temp;
        }
    }
}

public class FirstFivePrimes {
    public static void main(String[] args) {
        int count = 0;
        int number = 2;
        
        while (count < 5) {
            if (isPrime(number)) {
                System.out.println(number);
                count++;
            }
            number++;
        }
    }
    public static boolean isPrime(int num) {
        if (num <= 1) return false;
        for (int i = 2; i <= Math.sqrt(num); i++) {
            if (num % i == 0) return false;
        }
        return true;
    }
}

public class SumOfDigits {
    public static void main(String[] args) {
        int number = 9876;
        int sum = 0;
        while (number != 0) {
            sum += number % 10;
            number /= 10;
        }
        System.out.println("Sum of the digits of 9876: " + sum);
    }
}

public class Countdown {
    public static void main(String[] args) {
        for (int i = 10; i >= 0; i--) {
            System.out.println(i);
        }
    }
}

public class LargestDigit {
    public static void main(String[] args) {
        int number = 4825;
        int largest = 0;
        while (number != 0) {
            int digit = number % 10;
            if (digit > largest) {
                largest = digit;
            }
            number /= 10;
        }
        System.out.println("Largest digit in 4825: " + largest);
    }
}

public class EvenNumbers {
    public static void main(String[] args) {
        System.out.println("Even numbers between 1 and 50:");
        for (int i = 2; i <= 50; i += 2) {
            System.out.println(i);
        }
    }
}


public class SimplePattern {
    public static void main(String[] args) {
        int rows = 5;
        
        for (int i = 1; i <= rows; i++) {
            for (int j = 1; j <= i; j++) {
                System.out.print("* ");
            }
            System.out.println();
        }
    }
}

// dry run snippet

public class NestedLoopOutput { 
    public static void main(String[] args) { 
        for (int i = 1; i <= 3; i++) { 
            for (int j = 1; j <= 2; j++) { 
                System.out.print(i + " " + j + " "); 
            } 
            System.out.println();}}}  // 1 1 1 2
				      // 2 1 2 2
				       //3 1 3 2
