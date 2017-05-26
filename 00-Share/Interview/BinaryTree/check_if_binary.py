# Node class
class Node:
    def __init__(self, val=None):
        self.left, self.right, self.val = None, None, val


# Check each node is within binary search interval
INFINITY = float("infinity")
NEG_INFINITY = float("-infinity")
 
def isBST(tree, minVal=NEG_INFINITY, maxVal=INFINITY):
    if tree is None:
        return True
 
    if not minVal <= tree.val <= maxVal:
        return False
 
    return isBST(tree.left, minVal, tree.val) and \
           isBST(tree.right, tree.val, maxVal)

# Traverse inode and check it is sorted
def isBST2(tree, lastNode=[NEG_INFINITY]):
    if tree is None:
        return True
 
    if not isBST2(tree.left, lastNode):
        return False
 
    if tree.val < lastNode[0]:
        return False
 
    lastNode[0]=tree.val
 
    return isBST2(tree.right, lastNode)
