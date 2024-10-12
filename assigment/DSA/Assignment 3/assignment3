/*1. Implement a Stack using an array.
•	Test Case 1:
Input: Push 5, 3, 7, Pop
Output: Stack = [5, 3], Popped element = 7
 	time complexity : O(1)
 	space complexity : O(n)
*/
public class Stack {
	int [] stack;
	int top;
	
	public Stack(int size) {
		stack = new int[size];
		top = -1;
		
	}
	public void push(int value) {
		if(top < stack.length - 1) {
			stack[++top] = value;
			
		} else {
			System.out.println("Stack is full");
		}
	}
	
	public int pop() {
		if(top >= 0) {
			return stack[top--];
		} else {
			System.out.println("Stack is empty");
			return -1;
		}
	}
	
	public void display() {
		if(top >= 0) {
			for(int i=0; i<= top; i++) {
				System.out.print(stack[i]+", ");
			}
			System.out.println();
		
		} else {
			System.out.println("Stack is empty");
		}
	}
	
	public static void main(String[] args) {
		Stack stack = new Stack(10);
		
		stack.push(5);
		stack.push(3);
		stack.push(7);
		stack.display();
		
		int pop = stack.pop();
		System.out.println("Popped element : "+pop);
		
		
	}
}


/*2. Check for balanced parentheses using a stack.
•	Test Case 1:
Input: "({[()]})"
Output: Balanced
•	Test Case 2:
Input: "([)]"
Output: Not Balanced
 	time complexity : O(1)
 	space complexity : O(n)
*/
public class BracketParentheses {
	public static void main(String[] args) {
		System.out.print("Enter : ");
		Scanner sc = new Scanner(System.in);
		String n =sc.nextLine();
		
		if(isBalanced(n)) {
			   System.out.println("Balanced");
			} else {
				System.out.println("Not Balanced");
		}
	}
	public static boolean isBalanced(String s) {
		char[] stack = new char[s.length()];
		
		int top = -1;
		
		for(char c : s.toCharArray()) {
			if( c == '(' || c == '{' || c == '[' ) {
				stack[++top] = c;
			}
			else if(c == ')' || c == '}' || c == ']') {
				if(top == -1) break;
				char open = stack[top--];
				
				if( c == ')' && open != '(' || 
					c == '}' && open != '{' || 
					c == ']' && open != '[' ) {
					return false;
				}
			}
		}
		return top == -1;
	}
}


/*3. Reverse a string using a stack.
•	Test Case 1:
Input: "hello"
Output: "olleh"
•	Test Case 2:
Input: "world"
Output: "dlrow"
 	time complexity : O(1)
 	space complexity : O(1)
*/
public class Postfix {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		
		System.out.print("Enter string : ");
		String in = sc.nextLine();
		
		System.out.println("Reserved : "+ reverse(in));
	}
	public static String reverse(String str) {
		char [] stack = new char[str.length()];
		int top = -1;
		
		for(char c : str.toCharArray()) {
			stack[++top] = c;
		}
		StringBuilder reversed = new StringBuilder();
		
		while(top >= 0) {
			reversed.append(stack[top--]);
		}
		return reversed.toString();
	}
}




class Stack{
	private int size;
	private int top ;
	private int[] arr;
	private int min = Integer.MAX_VALUE;;
	Stack(int size){
		this.size = size;
		top = -1;
		arr = new int[size];
	}
	void push(int element){
		if(top == size -1){
			System.out.println("Stack Overflow");
			return;
		}
		if(min>element){
			min = element;
		}
		arr[++top] =element;
	}
	
	void pop(){
		if(top == -1){
			System.out.println("Stack Underflow");
		}
		top--;
	}
	int getMin(){
		return min;
	}
	public static void main(String[] args){
		Stack s = new Stack(10);
		s.push(10);
		s.push(20);
		s.push(30);
		s.push(40);
		s.push(50);
		s.push(60);
		System.out.println("Min: " + s.getMin());
	}
}



class Stack{
	private int size ;
	private int top;
	private int[] arr;
	
	Stack(){
		this(10);
	}
	Stack(int size){
		this.size = size;
		this.top = -1;
		this.arr = new int[size];
	}
	public void push(int element){
		if(top >= size-1){
			System.out.println("Stack Overflow");
		}
		else{
			arr[++top] = element;
		}
	}
	public int pop(){
		if(top == -1){
			System.out.println("Stack UnderFlow");
			return -1;
		}
			return arr[top--];
	}
}

class StackOperations{
	public static void main(String[] args){
		Stack s = new Stack();
		s.push(5);
		s.push(3);
		s.push(7);
		int poppedElement = s.pop();
		
		System.out.println("Popped Element " + poppedElement);
	}
}



class Stack{
	private int size;
	private int top ;
	private int[] arr;
	Stack(int size){
		this.size = size;
		top = -1;
		arr = new int[size];
	}
	void push(int element){
		if(top == size -1){
			System.out.println("Stack Overflow");
			return;
		}
		arr[++top] =element;
	}
	
	void pop(){
		if(top == -1){
			System.out.println("Stack Underflow");
		}
		top--;
	}
	boolean isFull(){
		return top == size-1;
	}
	boolean isEmpty(){
		return top == -1;
	}
	int getTop(){
		if(top == -1){
			return -1;
		}
		return arr[top];
	}
	int getLength(){
		return top +1;
	}
}
class Queue{
	private int size;
	private Stack s;
	private Stack m;
	
	Queue(int size){
		this.size = size;
		s = new Stack(size);
		m = new Stack(size);
	}
	void push(int element){
		if(s.isFull())
			return;
		s.push(element);
	}
	void popLast(Stack s){
		if(s.getLength() == 1){
			s.pop();
			return;
		}
		int temp = s.getTop();
		s.pop();
		popLast(s);
		s.push(temp);
		
	}
	void pop(){
		if(s.isEmpty()){
			return;
		}
		popLast(s);
	}
	void pushToM(Stack s, Stack m){
		if(s.getTop() == -1){
			return;
		}
		int element = s.getTop();
		m.push(element);
		s.pop();
		pushToM(s,m);
		s.push(element);
	}
	int getFront(){
		if(m.getLength() != 0){
			while(!m.isEmpty()){
				m.pop();
			}
		}
		pushToM(s,m);
		return m.getTop();
	}
}
class QueueUsingStacks{
	public static void main(String[] args){
		Queue q = new Queue(5);
		q.push(10);
		q.push(20);
		q.push(30);
		q.push(40);
		q.push(50);
		System.out.println("Front " + q.getFront());
		q.pop();
		System.out.println("Front " + q.getFront());
	}
}



class PriorityQueue{
	static void Heapify(int[] arr,int[] priority, int n , int i ){
		int largest = i;
		int l = 2* i +1;
		int r = 2* i +2;
		
		if(l<n && priority[l] > priority[largest]){
			largest = l;
		}
		if(r<n && priority[r] > priority[largest]){
			largest = r;
		}
		if(largest != i){
			int temp = arr[i];
			arr[i] = arr[largest];
			arr[largest] = temp;
			int tempPriority = priority[i];
            priority[i] = priority[largest];
            priority[largest] = tempPriority;
			Heapify(arr,priority,n,largest);
		}
	}
	static void HeapSortByPriority(int[] arr , int[] priority){
		int n = arr.length;
		
		for(int i = n/2 -1 ; i>=0;i--){
			Heapify(arr,priority,n,i);
		}
		
		for(int  i = n-1;i>=0;i--){
			int temp = arr[0];
			arr[0] = arr[i];
			arr[i] = temp;
			
			int tempPriority = priority[0];
            priority[0] = priority[i];
            priority[i] = tempPriority;
			Heapify(arr,priority,i,0);
		}
	}
	public static void main(String[] args){
		int[] arr = {3,10,5,6,7}; // 6,3,7,10,5
		int[] priority = {2,4,6,1,3}; // 5
		HeapSortByPriority(arr,priority);
		
		for(int a : arr){
			System.out.print(a + " ");
		}
	}
} 




class Stack{
	private int size;
	private int top ;
	private int[] arr;
	Stack(int size){
		this.size = size;
		top = -1;
		arr = new int[size];
	}
	void push(int element){
		if(top == size -1){
			System.out.println("Stack Overflow");
			return;
		}
		arr[++top] =element;
	}
	
	void pop(){
		if(top == -1){
			System.out.println("Stack Underflow");
		}
		top--;
	}
	boolean isFull(){
		return top == size-1;
	}
	boolean isEmpty(){
		return top == -1;
	}
	int getTop(){
		if(top == -1){
			return -1;
		}
		return arr[top];
	}
	int getLength(){
		return top +1;
	}
}
class Queue{
	private int size;
	private Stack s;
	private Stack m;
	
	Queue(int size){
		this.size = size;
		s = new Stack(size);
		m = new Stack(size);
	}
	void push(int element){
		if(s.isFull())
			return;
		s.push(element);
	}
	void popLast(Stack s){
		if(s.getLength() == 1){
			s.pop();
			return;
		}
		int temp = s.getTop();
		s.pop();
		popLast(s);
		s.push(temp);
		
	}
	void pop(){
		if(s.isEmpty()){
			return;
		}
		popLast(s);
	}
	void pushToM(Stack s, Stack m){
		if(s.getTop() == -1){
			return;
		}
		int element = s.getTop();
		m.push(element);
		s.pop();
		pushToM(s,m);
		s.push(element);
	}
	int getFront(){
		if(m.getLength() != 0){
			while(!m.isEmpty()){
				m.pop();
			}
		}
		pushToM(s,m);
		return m.getTop();
	}
}
class QueueUsingStacks{
	public static void main(String[] args){
		Queue q = new Queue(5);
		q.push(10);
		q.push(20);
		q.push(30);
		q.push(40);
		q.push(50);
		System.out.println("Front " + q.getFront());
		q.pop();
		System.out.println("Front " + q.getFront());
	}
}


class MinHeap{
	static void Heapify(int[] arr,int n ,int i){
		int smallest = i;
		int l = 2 * i + 1;
		int r = 2 * i + 2;
		if(l<n && arr[smallest] > arr[l]){
			smallest = l;
		}
		if(r<n && arr[smallest] > arr[r]){
			smallest = r;
		}
		if(smallest != i){
			int temp = arr[i];
			arr[i] = arr[smallest];
			arr[smallest] = temp;
			Heapify(arr, n , smallest);
		}
	}
	static void HeapSort(int[] arr){
		int n = arr.length;
		
		for(int i = n/2-1;i>=0;i--){
			Heapify(arr,n,i);
		}
		
		for(int i =n-1;i>=0;i--){
			int temp = arr[0];
			arr[0] = arr[i];
			arr[i] = temp;
			Heapify(arr,i,0);
		}
	}
	public static void main(String[] args){
		int arr[] = {2,3,5,1,6,7};
		HeapSort(arr);
		
		for(int a : arr){
			System.out.print(a + " ");
		}
	}
}




class MaxHeap{
	public static void Heapify(int[] arr , int n , int i){
		int largest = i;
		int l = 2 * i +1;
		int r = 2 * i + 2;
		if(l< n && arr[largest] < arr[l]){
			largest = l;
		}
		if(r < n && arr[largest] < arr[r]){
			largest = r;
		}
		if(largest != i){
			int temp = arr[largest];
			arr[largest] = arr[i];
			arr[i] = temp;
			Heapify(arr,n,largest);
		}
	}
	public static void HeapSort(int arr[]){
		int n = arr.length;
		for(int i = n/2 -1 ; i>=0;i--){
			Heapify(arr,n,i);
		}
		for(int i = n-1;i>=0;i--){
			int temp = arr[0];
			arr[0] = arr[i];
			arr[i] = temp;
			Heapify(arr,i,0);
		}
	}
	public static void main(String[] args){
		int arr[] = {12,7,15,5};
		HeapSort(arr);
		
		
		System.out.println("Entracted Element" + arr[arr.length-1] );
		System.out.print("Remaining Element :");
		for(int i =0;i<arr.length-1;i++){
			System.out.print(arr[i]+ " ");
		}
	}
}


class Heapsort{
	
	void heapify(int arr[], int n, int i)
	{
		int largest = i; //Root
		int l = 2*i + 1; //LC
		int r = 2*i + 2; //RC
		
		if(l < n && arr[l] >  arr[largest])
			largest = l;
		
		if(r < n && arr[r] >  arr[largest])
			largest = r;
		
		if(largest != i)
		{
			int temp = arr[i];
			arr[i] = arr[largest];
			arr[largest] = temp;
			
		
		heapify(arr, n, largest);
		}
		
	}
	
	void heapsort(int arr[])
	{
		int n = arr.length;
		
		//Building max heapify
		for(int i = n/2-1; i >= 0; i--)
		{
			heapify(arr, n, i);//Max heap
		}
		
		//one by one extract elements from the heap
		//for(int i=n-1; i>0;i--)
		//{
			//replace root node with last element
		//	int temp = arr[0];
		//	arr[0] = arr[i];
		//	arr[i] = temp;
		
		
		// heapify(arr,i,0);
		//}//
	}
	
	void display(int arr[])
	{
		int n = arr.length;
		for(int i=0;i<n;i++)
		{
			System.out.println(arr[i]+ " ");
		}
		System.out.println();
		
	}
	public static void main(String args[])
	{
		Heapsort h1 = new Heapsort();
		
		int arr[] = {99, 66, 77, 44, 33, 88, 11};
		h1.display(arr);
		
		h1.heapsort(arr);
		h1.display(arr);
		
	}
}

import java.util.Stack;
import java.util.Scanner;
import java.lang.Integer;


class EvaluatePostFix{
	static int solveExpression(String s){
		Stack<Integer> st = new Stack<>();
		for(int i =0;i<s.length();i++){
			if(s.charAt(i) == '*'){
				int a =  st.peek();
				st.pop();
				int b =  st.peek();
				st.pop();
				int ans = a * b;
				st.push( ans);
				
			}
			else if(s.charAt(i) == '+'){
				int a =  st.peek();
				st.pop();
				int b =  st.peek();
				st.pop();
				int ans = a + b;
				st.push( ans);
			}
			else if(s.charAt(i) == '-'){
				int a =  st.peek();
				st.pop();
				int b =  st.peek();
				st.pop();
				int ans = a - b;
				st.push( ans);
			}
			else if(s.charAt(i) == '/'){
				int a =  st.peek();
				st.pop();
				int b =  st.peek();
				st.pop();
				int ans = a / b;
				st.push( ans);
			}
			else{
				int value = Integer.parseInt(s.substring(i,i+1));
				st.push(value);
			}
		}
		return st.peek();
	}
	public static void main(String[] args){
		Scanner sc = new Scanner(System.in);
		System.out.println("Enter the value");
		String s = sc.nextLine();
		int ans = solveExpression(s);
		
		System.out.println("Ans : " + ans);
	}
}




class Que{
	private int size = 10;
	private int front;
	private int rare ;
	private int[] arr;
	Que(){
		front = -1;
		rare = -1;
		arr = new int[10];
	}
	
	boolean isEmpty(){
		return front == -1;
	}
	boolean isFull(){
		if(rare == size-1 && front ==0){
			return true;
		}
		else if(rare + 1 == front){
			return true;
		}
		return false;
	}
	
	void push(int element){
		if(isFull()){
			System.out.println("Queue is Full");
			return;
		}
		if(isEmpty()){
			front++;
		}
		rare = (rare+1) % size;
		arr[rare] = element;
	}
	void pull(){
		if(isEmpty()){
			return;
		}
		if(front == rare){
			front = -1;
			rare = -1;
			return;
		}
		front = (front +1 )% size;
	}
	int getFront(){
		if(isEmpty()){
			return  -1;
		}
		return arr[front];
	}
}

class CircularQueue{
	public static void main(String[] args){
		Que q = new Que();
		
		q.push(10);
		q.push(20);
		q.push(30);
		q.push(40);
		q.push(50);
		q.push(60);
		q.push(70);
		q.push(80);
		q.push(90);
		q.push(100);
		while(!q.isEmpty()){
			int element = q.getFront();
			q.pull();
			System.out.print(element + " ");
		} 
	}
}
