import math


class Shape:
    def __init__(self):
        self.area = 0
        self.name = ""

    def showarea(self):
        print(f"The area of {self.name} is {self.area}")


class Circle(Shape):
    def __init__(self, radius):
        self.radius = radius

    def calculate(self):
        self.name = "circle"
        self.area = math.pi * self.radius * self.radius


class Triangle(Shape):
    def __init__(self, base, height):
        self.base = base
        self.height = height

    def calculate(self):
        self.name = "triangle"
        self.area = 0.5 * self.base * self.height


class Rectangle(Shape):
    def __init__(self, length, breadth):
        self.length = length
        self.breadth = breadth

    def calculate(self):
        self.name = "rectangle"
        self.area = self.length * self.breadth


radius = int(input("Enter radius of circle: "))
base = int(input("Enter base of triangle: "))
height = int(input("Enter height of triangle: "))
length = int(input("Enter length of rectangle: "))
breadth = int(input("Enter breadth of triangle: "))

c = Circle(radius)
c.calculate()
c.showarea()

t = Triangle(base, height)
t.calculate()
t.showarea()


r = Rectangle(length, breadth)
r.calculate()
r.showarea()
