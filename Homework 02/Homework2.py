import sys

# Define Data Types

class Student:
    def __init__(self, firstname, lastname, major, age):
        self.firstname = firstname
        self.lastname = lastname
        self.major = major
        self.age = age

class Node:
    def __init__(self, student):
        self.student = student
        self.left = None
        self.right = None

# Binary Search Tree

def insert(root, node):
    if root is None:
        root = node
    else:
        if int(root.student.age) < int(node.student.age):
            if root.right is None:
                root.right = node
            else:
                insert(root.right, node)
        if int(root.student.age) > int(node.student.age):
            if root.left is None:
                root.left = node
            else:
                insert(root.left, node)

def elem(root, age):
    if root is None:
        return False
    if int(root.student.age) == age:
        return True
    if int(root.student.age) > age:
        return elem(root.left, age)
    if int(root.student.age) < age:
        return elem(root.right, age)

def inOrder(root, inOrderStudents):
    if root:
        inOrder(root.left, inOrderStudents)
        inOrderStudents.append(studentToString(root.student))
        inOrder(root.right, inOrderStudents)

# Program (If not args given, this will read the hardcoded filename) E.g ...\python Homework2.py filename

def main():
    if (len(sys.argv) > 1):
        with open(sys.argv[1], 'r') as file:
            students = createStudents(file)
    else:
        with open('Students.csv', 'r') as file:
            students = createStudents(file)
    inOrderStudents = []
    tree = createTree(students)
    age = int(input('Search a student with age: '))
    print('Student found? ' + str(elem(tree, age)))
    userInput = input('Input [0] to search again, [1] to show E.C, anything else to end program: ')
    if userInput == '0':
        main()
    if userInput == '1':
        print('\nE.C: In-order traversal stored as a list of strings:\n')
        inOrder(tree, inOrderStudents)
        print(inOrderStudents)
    else:
        return()

# Crate list of Students

def createStudents(file):
    info = file.readlines()
    temp = []
    students = []

    for i in info:
        temp.append(i.replace('\n','').split(','))
    
    for i in temp:
        students.append(Student(i[0], i[1], i[2], i[3]))
    
    return students

# Create Tree

def createTree(students):
    root = Node(students[0])
    
    for i in students[1:]:
        insert(root, Node(i));

    return root

# E.C

def studentToString(student):
    return student.firstname + ', ' + student.lastname + ', ' + student.major + ', ' + student.age

main()