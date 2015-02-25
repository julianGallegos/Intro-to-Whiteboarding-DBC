
class Node

	attr_accessor :data, :left, :right
	
	def initialize(data)
		@data = data
	end
end

class BinaryTree

	attr_accessor :root

	def initialize
		@root = nil
	end

	def add_node_to_tree(value)
	
		@root = place_node_left_or_right(@root, value)
		
	end

	def is_value_present?(value)
			
			#this overrides the root value with this method
			# i need to figure out a way to not have the root value changed
			# for some reason i can't figure out how to make current_node variable work in this case instead of accessing @root

			if @root == nil
				return false
			end
		
			if @root.data == value
				return true
			elsif @root.data < value
				@root = @root.right
				is_value_present?(value)

			elsif @root.data > value
				@root = @root.left
				is_value_present?(value)
			end

	end

	private

	def place_node_left_or_right(current_node, value)
		if current_node == nil
			current_node = Node.new(value)

		elsif current_node.data > value
			current_node.left = place_node_left_or_right(current_node.left, value)
		else current_node.data < value
			current_node.right = place_node_left_or_right(current_node.right, value)
		end
		return current_node
	end

end

myTree = BinaryTree.new

#tests to make sure adding function works

myTree.add_node_to_tree(10)

myTree.add_node_to_tree(6)

myTree.add_node_to_tree(4)

myTree.add_node_to_tree(9)

myTree.add_node_to_tree(16)

myTree.add_node_to_tree(11)

myTree.add_node_to_tree(25)

#adding additional nodes

p myTree.root.data == 10

p myTree.root.left.data == 6 

p myTree.root.left.left.data == 4

p myTree.root.left.right.data == 9

p myTree.root.right.data == 16

p myTree.root.right.left.data == 11

p myTree.root.right.right.data == 25


p myTree.is_value_present?(25) == true





