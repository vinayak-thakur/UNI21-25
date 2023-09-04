class Employee:
    def __init__(self, name, emp_id, department, salary):
        self.name = name
        self.emp_id = emp_id
        self.department = department
        self.salary = salary

    def update_salary(self, new_salary):
        self.salary = new_salary

# Create a list to store employee objects
employees = []

# Input employee details from the user
num_employees = int(input("Enter the number of employees: "))
for _ in range(num_employees):
    name = input("Enter employee name: ")
    emp_id = input("Enter employee ID: ")
    department = input("Enter department: ")
    salary = float(input("Enter salary: "))
    
    employee = Employee(name, emp_id, department, salary)
    employees.append(employee)

# Input the department and new salary
update_department = input("Enter the department to update salaries for: ")
new_salary = float(input("Enter the new salary: "))

# Update salaries for employees in the specified department
for employee in employees:
    if employee.department == update_department:
        employee.update_salary(new_salary)

# Display updated employee details
print("\nUpdated Employee Details:")
for employee in employees:
    print(f"Name: {employee.name}, Employee ID: {employee.emp_id}, Department: {employee.department}, Salary: {employee.salary}")
