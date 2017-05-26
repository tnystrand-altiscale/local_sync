#!/usr/bin/python

class Node:

class Tree:
    def __init__(self):

    def getRoot(self):

    def add(self, val):

    def _add(self, val, node):

    def find(self, val):

    def _find(self, val, node):

    def deleteTree(self):

    def printTree(self):

    def _printTree(self, node):

#     3
# 0     4
#   2      8
tree = Tree()
tree.add(3)
tree.add(4)
tree.add(0)
tree.add(8)
tree.add(2)
tree.printTree()
print (tree.find(3)).v
print tree.find(10)
tree.deleteTree()
tree.printTree()
