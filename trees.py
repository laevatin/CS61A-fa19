def tree(label, branches = []):
    for branch in branches:
        assert is_tree(branch), 'branch must be a tree'
    return [label] + list(branches)

def label(tree):
    return tree[0]

def branches(tree):
    return tree[1:]

def is_tree(tree):
    if len(tree) < 1 or type(tree) != list:
        return False
    for branch in branches(tree):
        if not is_tree(branch):
            return False
    return True

def is_leaf(tree):
    return len(tree) == 1

