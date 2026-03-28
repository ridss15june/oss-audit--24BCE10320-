# Name: Ridhima Agarwal
# Reg No: 24BCE10320
# Script 5: Advanced Student Manager

students = []

def add_student():
    name = input("Enter student name: ")
    roll = input("Enter roll number: ")
    course = input("Enter course: ")

    student = {
        "name": name,
        "roll": roll,
        "course": course
    }

    students.append(student)
    print("Student added successfully!\n")

def view_students():
    if not students:
        print("No records found!\n")
        return

    print("\n--- Student Records ---")
    for i, s in enumerate(students, start=1):
        print(f"{i}. Name: {s['name']}, Roll: {s['roll']}, Course: {s['course']}")
    print()

def search_student():
    roll = input("Enter roll number to search: ")
    found = False

    for s in students:
        if s['roll'] == roll:
            print(f"Found: {s}")
            found = True
    if not found:
        print("Student not found!\n")
def delete_student():
    roll = input("Enter roll number to delete: ")
    global students
    students = [s for s in students if s['roll'] != roll]
    print("Record updated!\n")
while True:
    print("====================================")
    print("     VITYARTHI STUDENT MANAGER      ")
    print("====================================")
    print("1. Add Student")
    print("2. View Students")
    print("3. Search Student")
    print("4. Delete Student")
    print("5. Exit")
    choice = input("Enter choice: ")
    if choice == "1":
        add_student()
    elif choice == "2":
        view_students()
    elif choice == "3":
        search_student()
    elif choice == "4":
        delete_student()
    elif choice == "5":
        print("Goodbye!")
        break
    else:
        print("Invalid choice!\n")
