1. Printing Patterns
Problem: Write a Java program to print patterns such as a right triangle of stars.
Input: n = 4
Output:
*
**
***
****

public class StarPrint {
	public static void main(String[] args) {
		System.out.print("Enter Number : ");
		Scanner sc = new Scanner(System.in);
		int n = sc.nextInt();
		for(int i =0; i<=n; i++) {
			for (int j = 0; j < i; j++) {
				System.out.print(" *");
			}
			System.out.println();
		}
		sc.close();
	}
}


/*2. Remove Array Duplicates
Problem: Write a Java program to remove duplicates from a sorted array and return the new length of the array.

Test Cases:
Input: arr = [1, 1, 2]
Output: 2
Input: arr = [0, 0, 1, 1, 2, 2, 3, 3]
Output: 4

 time complexity : O(n)
 space complexity : O(1)
*/
public class RmArrayDuplicate {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		System.out.print("Enter element size : ");
		int size = sc.nextInt();

		int [] arr = new int[size];
		
		System.out.print("Enter element : ");
		for(int i=0; i< size ; i++) {
			arr[i] = sc.nextInt();
		}
		
		int len = arr.length;
		int j=0;
		
		for(int i=0 ; i< len -1; i++) {
			if(arr[i] != arr[i+1]) {
				arr[j++] = arr[i];
			}
		}
		int count=0;
		arr[j++] = arr[len - 1];
		for(int k=0; k<j ; k++) {
			System.out.print(arr[k] + " ");
			count++;
		}
			System.out.println();
			System.out.print("count : " + count);
			sc.close();
	}
}



/*3. Remove White Spaces from String
Problem: Write a Java program to remove all white spaces from a given string.

Test Cases:
Input: "Hello World"
Output: "HelloWorld"
Input: "  Java   Programming  "
Output: "JavaProgramming"
*/
// time complexity : O(n^2)
// space complexity : O(n)


public class RmSpaces {
	public static void main(String[] args) {
		
		System.out.print("Enter String : ");
		Scanner sc = new Scanner(System.in);
		String n = sc.nextLine();
//		String n = " Hello World";
		
		n = n.replaceAll("\\s", "");
		System.out.println(n);
		sc.close();
	}
}

/*4. Reverse a String
Problem: Write a Java program to reverse a given string.

Test Cases:
Input: "hello"
Output: "olleh"
Input: "Java"
Output: "avaJ"
*/
// time complexity : O(n^2)
// space complexity : O(n)


public class ReverseString {
	public static void main(String[] args) {
		
		System.out.print("Enter String : ");
		Scanner sc = new Scanner(System.in);
		String str = sc.nextLine();
//		String str = "hello";
		String result = "";
		
		for(int i=str.length()-1; i>=0; i--) {
			result += str.charAt(i);
		}
		System.out.println(result);
		
	}
}
/*5. Reverse Array in Place
Problem: Write a Java program to reverse an array in place.

Test Cases:
Input: arr = [1, 2, 3, 4]
Output: [4, 3, 2, 1]
Input: arr = [7, 8, 9]
Output: [9, 8, 7]
*/
// time complexity : O(n^2)
// space complexity : O(n)
public class ReverseArray {
    // Method to reverse an array in place
    public static void reverse(int[] arr) {
        int start = 0;
        int end = arr.length - 1;
        
        while (start < end) {
            // Swap the elements at start and end
            int temp = arr[start];
            arr[start] = arr[end];
            arr[end] = temp;
            
            // Move the pointers
            start++;
            end--;
        }
    }

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        // Taking input for array size
        System.out.print("Enter the size of the array: ");
        int size = sc.nextInt();
        
        // Taking input for array elements
        int[] arr = new int[size];
        System.out.print("Enter the elements of the array: ");
        for (int i = 0; i < size; i++) {
            arr[i] = sc.nextInt();
        }
        
        // Reversing the array
        reverse(arr);
        
        // Printing the reversed array
        System.out.println("Reversed Array: ");
        for (int num : arr) {
            System.out.print(num + " ");
        }
    }
}


class ReverseWords{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the string");
		String s = sc.nextLine();
		
		String[] arr = s.split(" ");
		String str = "";
		for(int i = arr.length -1; i>=0;i--){
		  if(i==0){
			  str += arr[i];
		  }
		  else{
			  str += arr[i] + " ";
		  }
		}
		System.out.println("Ans : " + str);
	}
	
}

class ReverseANumber{
	static void reverseNumber(int value ,int ans){
		if(value == 0){
			System.out.println("Ans : " + ans);
			return;
		}
		ans = ans* 10 + value%10;
		
		reverseNumber(value/10, ans);
		
	}
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the Number");
		int value = sc.nextInt();
		int ans = 0;
		reverseNumber(value , ans);
		
	}
}

class ArrayManipulation{
	public static void main(String[] args){
		int[][] queries = {{1, 2, 100}, {2, 5, 100}, {3, 4, 100}};
	int n = 5;
	int [] arr = new int[5];
	
	for(int[] a : queries){
		int one = a[0]-1;
		int two = a[1]-1;
		int three = a[2];
		for(int i =one;i<=two;i++){
				arr[i] +=three;
		}
	}
	int maxi = Integer.MIN_VALUE;
	for(int a : arr){
		if(a>maxi){
			maxi = a;
		}
	}
	System.out.println("Ans : " + maxi);
	}
}

class StringPalindrome{
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the string");
		String str = sc.nextLine();
		int i =0;
		int j = str.length()-1;
		boolean palindrome = true;
		while(i<=j){
			if( str.charAt(i) != str.charAt(j)){
				palindrome = false;
				break;
			}
			i++;  j--;
		}
	if(palindrome){
		System.out.println("String is Palindrome");
	}	
	else{
		System.out.println("String is Not Palindrome");
	}
	}
}

class ArrayLeftRotation{
	
	public static void main(String[] args){
		int[] arr = {1,2,3,4,5,6};
		int rotation = 2;
		
		if(rotation > arr.length){
			rotation %= arr.length;
		}
		int j = arr.length -1;
		for(int i =0;i<rotation;i++){
			int a = arr[0];
			int k = 0;
			while(k<j-i){
				arr[k] = arr[k+1];
				k++;
			}
			arr[j-i] = a;
		}
		for(int a : arr){
			System.out.print(a + " ");
		}
		
	}
}




