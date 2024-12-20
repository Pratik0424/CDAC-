
class LinkedList{
	Node head;
	static class Node{
		int data;
		Node next;
		Node(int data){
			this.data = data;
			next = null;
		}
	}


	void insert(int value){
		Node newNode = new Node(value);
		if(head == null){
			head = newNode;
			return;
		}
		if(head.next == null){
			head.next = newNode;
			return;
		}
		Node trev = head;
		while(trev.next !=null){
			trev = trev.next;
		}
		trev.next = newNode;
	}
	void delete(int value){
		if(head == null) return;
		if(head.next == null && head.data == value) {
			head = null;
			return;
		}
		Node prev =head;
		Node trev = head;
		
		while(trev!= null ){
			if(trev.data != value){
				break;
			}
			trev = trev.next;
		}
		if(trev ==null) return;
		prev.next = trev.next ;
		trev.next = null;
	}
	Boolean search(int value){
		if(head == null) return false;
		Node trev = head;
		
		while(trev != null && trev.data != value){
			trev = trev.next;
		}
		if(trev == null) return false;
		
		return true;
	}
	
	public static void main(String[] args){
		LinkedList l = new LinkedList();
		l.insert(3);
		l.insert(7);
		l.insert(5);
		l.delete(7);
		System.out.println(l.search(5));
		
	}
}


class Reverse{
	Node head;
	static class Node{
		int data;
		Node next;
		Node(int data){
			this.data = data;
			next = null;
		}
	}
	void insert(int value){
		Node newNode = new Node(value);
		if(head == null){
			head = newNode;
			return;
		}
		if(head.next == null){
			head.next = newNode;
			return;
		}
		Node trev = head;
		while(trev.next !=null){
			trev = trev.next;
		}
		trev.next = newNode;
	}
	Node reverse(Node head){
		if(head == null) return head;
		if(head.next == null) return head;
		Node curr = head;
		Node next = null;
		Node prev = null;
		
		while(curr!=null){
			next = curr.next;
			curr.next = prev;
			prev = curr;
			curr = next;
		}
		return prev;
	}
	void display(Node node){
		Node trev = node;
		while(trev !=null){
			System.out.print(trev.data + " ");
			trev = trev.next;
		}
	}
	public static void main(String [] args){
		Reverse l = new Reverse();
		l.insert(1);
		l.insert(2);
		l.insert(3);
		l.insert(4);
		l.insert(5);
		System.out.println("Without Reverse");
		l.display(l.head);
		Node node = l.reverse(l.head);
		System.out.println();
		l.display(node);
		
		
	}
	
}



class DetectCycle{
		Node head;
	static class Node{
		int data;
		Node next;
		Node(int data){
			this.data = data;
			next = null;
		}
	}
	void insert(int value){
		Node newNode = new Node(value);
		if(head == null){
			head = newNode;
			return;
		}
		if(head.next == null){
			head.next = newNode;
			return;
		}
		Node trev = head;
		while(trev.next !=null){
			trev = trev.next;
		}
		trev.next = newNode;
	}
	Boolean detectLoop(){
		Node slow = head;
		Node fast = head.next;
		while(fast!=null){
			fast = fast.next;
			if(fast !=null){
				fast = fast.next;
				slow = slow.next;
			}
			if(fast == slow){
				return true;
			}
		}
		return false;
	}
	public static void main(String [] args){
		DetectCycle l = new DetectCycle();
		
		l.insert(1);
		Node second = new Node(2);
		Node third = new Node(3);
		Node fourth = new Node(4);
		Node fifth = new Node(5);
		l.head.next = second;
		second.next = third;
		third.next = fourth;
		fourth.next = fifth;
		fifth.next = third;
		
		boolean detect = l.detectLoop();
		
		System.out.println(detect);
		
		
	}
}

class LinkedList{
		Node head;
	static class Node{
		int data;
		Node next;
		Node(int data){
			this.data = data;
			next = null;
		}
	}
	void insert(int value){
		Node newNode = new Node(value);
		if(head == null){
			head = newNode;
			return;
		}
		if(head.next == null){
			head.next = newNode;
			return;
		}
		Node trev = head;
		while(trev.next !=null){
			trev = trev.next;
		}
		trev.next = newNode;
	}
	static Node merge(Node head1 ,Node head2){
		if(head1 == null) return head2;
		if(head2 == null) return head1;
		
		if(head1.data < head2.data){
			head1.next = merge(head1.next ,head2);
			return head1;
		}
		else{
			head2.next = merge(head1,head2.next);
			return head2;
		}
	}
}
// tm = O(nlogn);
class MergeTwo{
	public static void main(String[] args){
		LinkedList.Node head1 = new LinkedList.Node(1);
		LinkedList.Node two = new LinkedList.Node(2);
		LinkedList.Node three = new LinkedList.Node(3);
		LinkedList.Node four = new LinkedList.Node(4);
		
		head1.next = two;
		two.next = three;
		three.next = four;
		
		LinkedList.Node head2 = new LinkedList.Node(5);
		LinkedList.Node two1 = new LinkedList.Node(6);
		LinkedList.Node three1 = new LinkedList.Node(7);
		LinkedList.Node four1 = new LinkedList.Node(8);
		head2.next = two1;
		two1.next = three1;
		three1.next = four1;
		
		LinkedList.Node node = LinkedList.merge(head1,head2);
		
		while(node!=null){
			System.out.print(node.data + " ");
			node = node.next;
		}
	}
}


class LinkedList{
		Node head;
	static class Node{
		int data;
		Node next;
		Node(int data){
			this.data = data;
			next = null;
		}
	}
	void insert(int value){
		Node newNode = new Node(value);
		if(head == null){
			head = newNode;
			return;
		}
		if(head.next == null){
			head.next = newNode;
			return;
		}
		Node trev = head;
		while(trev.next !=null){
			trev = trev.next;
		}
		trev.next = newNode;
	}
	void removeDuplicates(){
		Node trev = head;
		while(trev!=null){
			if(trev.next != null  ){
				while(trev.next != null && trev.data == trev.next.data)
				trev.next = trev.next.next;
			}
			trev = trev.next;
		}
	}
	void display(){
		Node trev = head;
		while(trev !=null){
			System.out.print(trev.data + " ");
			trev = trev.next;
		}
	}
}

class RemoveDuplicates{
	public static void main(String [] args){
		LinkedList l = new LinkedList();
	l.insert(1);
	l.insert(1);
	l.insert(2);
	l.insert(3);
	l.insert(3);
	l.insert(4);
	l.display();
	System.out.println();
	l.removeDuplicates();
	l.display();
	}
	
}



class DoublyLinkedList{
	Node head;
	static class Node{
		Node next ;
		Node prev;
		int data;
		Node(int data){
			this.data = data;
			next = prev = null;
		}
	}
	void insert(int value){
		Node newNode = new Node(value);
		if(head == null){
			head = newNode ;
			return;
		}
		if(head.next == null){
			head.next = newNode;
			newNode.prev = head;
			return;
		}
		Node trev = head;
		while(trev.next != null){
			trev = trev.next;
		}
		
		trev.next = newNode;
		newNode.prev = trev;
	}
	void delete(int value){
		if(head == null) return;
		if(head.next == null) {
			if(head.data == value)
			    head = null;
			return;
		}
		Node p = head;
		Node curr = head;
		while(curr != null){
			if(curr.data == value){
				break;
			}
			p = curr;
			curr = curr.next;
		}
		if(curr == null) return;
		if(curr.next == null){
			p.next = null;
			curr.prev = null;
		}
		p.next = curr.next;
		curr.next.prev = p;
		curr.next = null;
		curr.prev = null;
	}
	void forwardTraverse(){
		if(head == null) return;
		if(head.next == null){
			System.out.print(head.data + " ");
			return;
		}
		Node trev = head;
		while(trev !=null){
			System.out.print(trev.data + " ");
			trev = trev.next;
		}
	}
	void reverseTraverse(){
		if(head == null) return;
		if(head.next == null){
			System.out.print(head.data + " ");
			return;
		}
		Node trev = head;
		while(trev.next !=null){
			trev = trev.next;
		}
		while(trev != null){
			System.out.print(trev.data + " ");
			trev = trev.prev;
		}
	}
	
	public static void main(String[] args){
		DoublyLinkedList l = new DoublyLinkedList();
		l.insert(10);
		l.insert(20);
		l.insert(30);
		l.forwardTraverse();
		System.out.println();
		l.delete(20);
		l.forwardTraverse();
	}
}



class DoublyLinkedList{
	Node head;
	static class Node{
		Node next ;
		Node prev;
		int data;
		Node(int data){
			this.data = data;
			next = prev = null;
		}
	}
	void insert(int value){
		Node newNode = new Node(value);
		if(head == null){
			head = newNode ;
			return;
		}
		if(head.next == null){
			head.next = newNode;
			newNode.prev = head;
			return;
		}
		Node trev = head;
		while(trev.next != null){
			trev = trev.next;
		}
		
		trev.next = newNode;
		newNode.prev = trev;
	}
	void delete(int value){
		if(head == null) return;
		if(head.next == null) {
			if(head.data == value)
			    head = null;
			return;
		}
		Node p = head;
		Node curr = head;
		while(curr != null){
			if(curr.data == value){
				break;
			}
			p = curr;
			curr = curr.next;
		}
		if(curr == null) return;
		if(curr.next == null){
			p.next = null;
			curr.prev = null;
		}
		p.next = curr.next;
		curr.next.prev = p;
		curr.next = null;
		curr.prev = null;
	}
	void forwardTraverse(){
		if(head == null) return;
		if(head.next == null){
			System.out.print(head.data + " ");
			return;
		}
		Node trev = head;
		while(trev !=null){
			System.out.print(trev.data + " ");
			trev = trev.next;
		}
	}
	void reverseTraverse(){
		if(head == null) return;
		if(head.next == null){
			System.out.print(head.data + " ");
			return;
		}
		Node trev = head;
		while(trev.next !=null){
			trev = trev.next;
		}
		while(trev != null){
			System.out.print(trev.data + " ");
			trev = trev.prev;
		}
	}
	Node reverse(){
		if(head == null) return head;
		if(head.next == null) return head;
		
		Node p = null;
		Node curr = head;
		Node next = null;
		
		while(curr!=null){
			next = curr.next;
			curr.next = p;
			p = curr;
			curr = next;
		}
		Node curr1 = p;
		Node next1 = null;
		Node prev1 = null;
		
		while(curr1!=null){
			next1 = curr1.prev;
			curr1.prev = prev1;
			prev1 = curr1;
			curr1 = next1;
		}
		return p;
	}
	void forwardTraverseR(Node n){
		if(n == null) return;
		if(n.next == null){
			System.out.print(n.data + " ");
			return;
		}
		Node trev = n;
		while(trev !=null){
			System.out.print(trev.data + " ");
			trev = trev.next;
		}
	}
	
}

class ReverseDoubly{
	public static void main(String args[]){
		DoublyLinkedList l = new DoublyLinkedList();
		l.insert(10);
		l.insert(20);
		l.insert(30);
		l.insert(40);
		l.insert(50);
		DoublyLinkedList.Node n = l.reverse();
		l.forwardTraverseR(n);
	}
}




class LinkedListAdd{
	Node head;
	static class Node{
		int data;
		Node next;
		Node(int data){
			this.data = data;
			next = null;
		}
	}
	void insert(int value){
		Node newNode = new Node(value);
		if(this.head == null){
			this.head = newNode;
			return;
		}
		if(this.head.next == null){
			this.head.next = newNode;
			return;
		}
		Node trev = head;
		while(trev.next !=null){
			trev = trev.next;
		}
		trev.next = newNode;
	}
	
	public static void add(Node head1, Node head2,int rem,Node node){
		if(head1 == null && head2 == null && rem == 0){
			return;
		}
		if(head1 == null && head2 == null && rem != 0){
			int sum = rem;
			Node newNode = new Node(sum%10);
			node.next = newNode;
			node = newNode;
			return;
		}
		if(head1 == null && head2 != null){
			int sum = rem + head2.data;
			Node newNode = new Node(sum%10);
			node.next = newNode;
			node = newNode;
			add(head1,head2.next,sum/10,node);
		}
		if(head1 != null && head2 == null){
			int sum = rem + head1.data;
			Node newNode = new Node(sum%10);
			node.next = newNode;
			node = newNode;
			add(head1.next,head2,sum/10,node);
		}
		else{
			int sum = head1.data + head2.data + rem;
			Node newNode = new Node(sum%10);
			node.next = newNode;
			node = newNode;
			add(head1.next,head2.next,sum/10,node);
		}
	}
	void forwardTraverseR(Node n){
		if(n == null) return;
		if(n.next == null){
			System.out.print(n.data + " ");
			return;
		}
		Node trev = n;
		while(trev !=null){
			System.out.print(trev.data + " ");
			trev = trev.next;
		}
	}
	public static void main(String [] args){
		LinkedListAdd l1 = new LinkedListAdd();
		l1.insert(2);
		l1.insert(4);
		l1.insert(3);
		
		LinkedListAdd l2 = new LinkedListAdd();
		l2.insert(5);
		l2.insert(6);
		l2.insert(4);
		
		int rem =0;
		Node newNode = new Node(-1);
		Node trev = newNode;
		add(l1.head,l2.head,0,trev);
		
		l1.forwardTraverseR(newNode.next);
		
	}
}




class RotateByK{
	Node head;
	static class Node{
		int data;
		Node next;
		Node(int data){
			this.data = data;
			next = null;
		}
	}
	void insert(int value){
		Node newNode = new Node(value);
		if(this.head == null){
			this.head = newNode;
			return;
		}
		if(this.head.next == null){
			this.head.next = newNode;
			return;
		}
		Node trev = head;
		while(trev.next !=null){
			trev = trev.next;
		}
		trev.next = newNode;
	}
	int getLength(){
		Node trev = head;
		int len = 0;
		while(trev!=null){
			len++;
			trev = trev.next;
		}
		return len;
	}
	void rotateByK(int k){
		if(head == null) return;
		if(head.next == null) return;
		int len = getLength();
		k = k% len;
		if(k == 0) return;
		
		while(k>0){
			Node curr = head;
			head = head.next;
			Node trev = curr;
			while(trev.next != null){
				trev = trev.next;
			}
			trev.next = curr;
			curr.next = null;
			k--;
		}
		
	}
	void display(Node n){
		if(n == null) return;
		if(n.next == null){
			System.out.print(n.data + " ");
			return;
		}
		Node trev = n;
		while(trev !=null){
			System.out.print(trev.data + " ");
			trev = trev.next;
		}
	}
	public static void main(String[] args){
		RotateByK l = new RotateByK();
		l.insert(10);
		l.insert(20);
		l.insert(30);
		l.insert(40);
		l.insert(50);
		int k = 2;
		l.display(l.head);
		System.out.println();
		l.rotateByK(k);
		l.display(l.head);
	}
}


class LinkedList{
	Node head;
	static class Node{
		int data;
		Node next;
		Node(int data){
			this.data =data;
			this.next = null;
		}
	}
	
	void append(int value){
		Node newNode = new Node(value);
		if(head == null){
			head = newNode;
			return;
		}
		if(head.next == null){
			head.next = newNode ;
			return;
		}
		Node trev = head;
		while(trev.next != null){
			trev = trev.next;
		}
		trev.next =newNode;
	}
	void makeCircular(){
		Node trev = head;
		while(trev.next != null){
			trev = trev.next;
		}
		trev.next = head;
	}
	
	Node findMid(){
		if(head == null) return null;
		if(head.next == null) return head;
		
		Node fast = head;
		Node slow = head;
		
		while(fast != head){
			System.out.println(fast.data);
			fast = fast.next;
			if(fast != head){
				fast = fast.next ;
				slow = slow.next;
			}
		}
		return slow;
	}
	
	void display(Node node){
		if(node == null) return;
		Node trev = node.next;
		System.out.print(node.data + " ");
		while(trev != node){
			System.out.print(trev.data + " ");
			trev = trev.next;
		}
	}
	
}

class SplitCircularTwoHalves{
	public static void main(String[] args){
		LinkedList l = new LinkedList();
		l.append(10);
		l.append(20);
		l.append(30);
		l.append(40);
		l.append(50);
		l.append(60);
		l.display(l.head);
		l.makeCircular();
		
		LinkedList.Node  mid = l.findMid();
		System.out.println(mid.data);
		/*LinkedList.Node head2 = null;
		if(mid != null){
			if(mid.next != null){
				head2 = mid.next;
				mid.next = null;
				LinkedList.Node trev = head2;
				while(trev.next !=l.head){
					trev = trev.next;
				}
				System.out.println(trev.data);
				trev.next = null;
			}
		}
		
		l.display(l.head);
		l.display(l.head);
		System.out.println();
		l.display(head2); **/
		
	}
}

class Node {
    public int val;
    public Node prev;
    public Node next;
    public Node child;
};

class Solution {
    public Node flatten(Node head) {
        if(head == null) return head;

        Node node = null;
        Node trev = head;
        while(trev.next != null){
            if(trev.child != null){
                node = trev;
                trev = trev.next;
                break;
            }
            trev = trev.next;
        }
        if(node == null) {
            if(trev.child != null){
                node = trev;
                trev = null;
            }
            else{
                return head;
            }
        }

        Node next = node.child;
        node.child = null;
        node.next = flatten(next);
        node.next.prev = node;

        if(trev != null){
            Node temp = next;
            while(temp.next !=null){
                temp = temp.next;
            }
            temp.next = trev;
            trev.prev = temp;
        }
        return head;

    }
}

class LinkedList{
		Node head;
	static class Node{
		int data;
		Node next;
		Node(int data){
			this.data = data;
			next = null;
		}
	}
	void insert(int value){
		Node newNode = new Node(value);
		if(head == null){
			head = newNode;
			return;
		}
		if(head.next == null){
			head.next = newNode;
			return;
		}
		Node trev = head;
		while(trev.next !=null){
			trev = trev.next;
		}
		trev.next = newNode;
	}
	static Node merge(Node head1 ,Node head2){
		if(head1 == null) return head2;
		if(head2 == null) return head1;
		
		if(head1.data < head2.data){
			head1.next = merge(head1.next ,head2);
			return head1;
		}
		else{
			head2.next = merge(head1,head2.next);
			return head2;
		}
	}
	int getLength(Node head){
		Node trev = head;
		int len = 0;
		while(trev != null){
			len++;
			trev = trev.next;
		}
		return len;
	}
	Node findNthformlast(Node head , int position){
		int length = getLength(head);
		int finalPosi = length -position;
		if(finalPosi <0) return head;
		
		while(finalPosi!=0){
			head = head.next;
			finalPosi--;
		}
		return head;
	}
}

class FindNth{
	public static void main(String[] args){
		LinkedList l = new LinkedList();
		l.insert(10);
		l.insert(20);
		l.insert(30);
		l.insert(40);
		l.insert(50);
		LinkedList.Node node = l.findNthformlast(l.head,2);
		System.out.println(node.data);
	}
}

class LinkedList{
	Node head;
	static class Node{
		int data;
		Node next;
		Node(int data){
			this.data = data;
			next = null;
		}
	}
	void insert(int value){
		Node newNode = new Node(value);
		if(this.head == null){
			this.head = newNode;
			return;
		}
		if(this.head.next == null){
			this.head.next = newNode;
			return;
		}
		Node trev = head;
		while(trev.next !=null){
			trev = trev.next;
		}
		trev.next = newNode;
	}
	
	
	
	Node findMiddle(){
		if(head == null) return head;
		if(head.next == null) return head;
		
		Node slow = head;
		Node fast =head;
		
		while(fast != null){
			fast = fast.next;
			if(fast != null){
				fast = fast.next;
				slow = slow.next;
			}
		}
		return slow;
	}
	
}
class FindMiddle{
	public static void main(String [] args){
		LinkedList l = new LinkedList();
		l.insert(1);
		l.insert(2);
		l.insert(3);
		l.insert(4);
		l.insert(5);
		
		LinkedList.Node node = l.findMiddle();
		
		System.out.print(node.data);
		
	}
}


class LinkedList{
		Node head;
	static class Node{
		int data;
		Node next;
		Node(int data){
			this.data = data;
			next = null;
		}
	}
	void insert(int value){
		Node newNode = new Node(value);
		if(head == null){
			head = newNode;
			return;
		}
		if(head.next == null){
			head.next = newNode;
			return;
		}
		Node trev = head;
		while(trev.next !=null){
			trev = trev.next;
		}
		trev.next = newNode;
	}
	int getLength(Node head){
		Node trev = head;
		int len = 0;
		while(trev != null){
			len++;
			trev = trev.next;
		}
		return len;
	}
	void makeCircular(){
		Node trev = head;
		while(trev.next != null){
			trev = trev.next;
		}
		trev.next = head;
	}
	void insetAtCircular(int value){
		Node newNode = new Node(value);
		if(head.data > value){
			Node trev = head.next;
			while(trev.next !=null){
				trev = trev.next;
			}
			newNode.next = head;
			trev.next = newNode;
			return;
		}
		if(head.next.data > value){
			newNode.next = head.next;
			head.next = newNode;
			return;
		}
		Node trev = head.next;
		Node prev = head;
		while(trev.next != head){
			if(trev.data > value){
				break;
			}
			prev  = trev;
			trev = trev.next;
		}
		if(trev.next == head) return;
		
		newNode.next = trev;
		prev.next = newNode;
		
	}
}

class InsertSorted{
	public static void main(String[] args){
		LinkedList l = new LinkedList();
		l.insert(1);
		l.insert(2);
		l.insert(3);
		l.insert(4);
		l.insert(5);
		l.makeCircular();
		
		l.insetAtCircular(6);
		
	}
}
