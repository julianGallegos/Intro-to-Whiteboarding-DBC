function Node(value){
	this.value = value;
	this.pointer = null;
}


function LinkedList(){
	this.head = null;
	this.pointer = null;
	this.size = 0
}

LinkedList.prototype.insertNode = function(value){
	if (this.head === null){
		this.head = new Node(value)
	} else {
		var current = this.head;
		while(current.pointer != null){
			current = current.pointer
		}
		current.pointer = new Node(value)
		this.size += 1
	}
}

LinkedList.prototype.walkThroughList = function(){
	var currentNode = this.head
	var index = 0

	while (currentNode != null){
		console.log("index: " + index + "value: " + currentNode.value)
		currentNode = currentNode.pointer
		index += 1
	}
}

var myList = new LinkedList()

myList.insertNode(1)

myList.insertNode(2)

myList.insertNode(3)

myList.insertNode(4)

myList.walkThroughList()