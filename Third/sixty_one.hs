--Count the leaves of a binary tree 

data Tree a = Leaf | Node a (Tree a) (Tree a)

countLeaves :: Tree a -> Int
countLeaves Leaf                 = 1
countLeaves (Node _ Leaf Leaf)   = 2
countLeaves (Node _ l r)         = countLeaves l + countLeaves r

tree1 = Node 1 Leaf Leaf
tree2 = Leaf
tree3 = Node 5 (Node 3 Leaf Leaf) (Node 2 Leaf Leaf)

--countLeaves tree1
--2
--countLeaves tree2
--1
--countLeaves tree3
--4
