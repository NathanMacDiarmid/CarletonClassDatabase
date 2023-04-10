from distutils import command
from tkinter import *
import sqlite3

root = Tk()
root.title('Carleton Class Databse')
root.geometry('1500x1000')

# Database

# Create / Connect to database
conn = sqlite3.connect('FinalProject.db')

# Create cursor
cursor = conn.cursor()

def studentSearch():

    # Create / Connect to database
    conn = sqlite3.connect('FinalProject.db')

    # Create cursor
    cursor = conn.cursor()

    # See if something was typed
    input = studentNumber.get()
    printStudents = ''

    if (input != ''):
        cursor.execute('SELECT * FROM Students WHERE student_number LIKE \'%{}%\''.format(input))
        printStudents = 'Here is the student matching that student number: \n \n'
        students = cursor.fetchmany(5)
        previousStudent = ''
        for student in students:
            currentStudent = str(student[0]) + '\n' + str(student[1]) +'\n' + str(student[2]) + '\n' + str(student[3]) + '\n' + str(student[4]) + '\n \n'
            if (currentStudent == previousStudent):
                next
            else :
                printStudents += str(student[0]) + '\n' + str(student[1]) +'\n' + str(student[2]) + '\n' + str(student[3])  + '\n' + str(student[4]) + '\n \n'
            previousStudent = str(student[0]) + '\n' + str(student[1]) +'\n' + str(student[2]) + '\n' + str(student[3])  + '\n' + str(student[4]) + '\n \n'
    else:
        printStudents = 'Please input a valid student number'

    global studentSearchLabel
    studentSearchLabel = Label(root, text=printStudents)
    studentSearchLabel.grid(row=8, column=0, columnspan=2)
    
    # Commit changes
    conn.commit()

    # Close connection
    conn.close()

def classSearch():
    # Create / Connect to database
    conn = sqlite3.connect('FinalProject.db')

    # Create cursor
    cursor = conn.cursor()

    # See if something was typed
    input = classId.get()
    printClasses = ''

    if (input != ''):
        cursor.execute('SELECT * FROM Classes WHERE id LIKE \'%{}%\''.format(input))
        printClasses = 'Here is the class matching that ID: \n \n'
        classes = cursor.fetchone()
        printClasses += str(classes[0]) + '\n' + str(classes[1]) +'\n \n'
    else:
        printClasses = 'Please input a valid class id'

    global searchClassLabel
    searchClassLabel = Label(root, text=printClasses)
    searchClassLabel.grid(row=8, column=2, columnspan=2)

    # Commit changes
    conn.commit()

    # Close connection
    conn.close()

def professorSearch():
    # Create / Connect to database
    conn = sqlite3.connect('FinalProject.db')

    # Create cursor
    cursor = conn.cursor()

    # See if something was typed
    input = profId.get()
    printProfessors = ''

    if (input != ''):
        cursor.execute('SELECT * FROM Professors WHERE prof_id LIKE \'%{}%\''.format(input))
        printProfessors = 'Here is the professor matching that ID: \n \n'
        professors = cursor.fetchone()
        printProfessors += str(professors[0]) + '\n' + str(professors[1]) + '\n' + str(professors[3]) + '\n \n'
    else:
        printProfessors = 'Please input a valid professor id'

    global searchProfessorLabel
    searchProfessorLabel = Label(root, text=printProfessors)
    searchProfessorLabel.grid(row=8, column=4, columnspan=2)

    # Commit changes
    conn.commit()

    # Close connection
    conn.close()

def backgroundSearch():
    # Create / Connect to database
    conn = sqlite3.connect('FinalProject.db')

    # Create cursor
    cursor = conn.cursor()

    # See if something was typed
    input = profBackground.get()
    printProfessors = ''

    if (input != ''):
        cursor.execute('SELECT * FROM Professors WHERE background LIKE \'%{}%\''.format(input))
        printProfessors = 'Here are the professors with that background: \n \n'
        professors = cursor.fetchall()
        previousProfessor = ''
        for professor in professors:
            currentProfessor = str(professor[0]) + '\n' + str(professor[1]) + '\n' + str(professor[3]) + '\n \n'
            if (currentProfessor == previousProfessor):
                next
            else:
                printProfessors += str(professor[0]) + '\n' + str(professor[1]) + '\n' + str(professor[3]) + '\n \n'
            previousProfessor = str(professor[0]) + '\n' + str(professor[1]) + '\n' + str(professor[3]) + '\n \n'
    else:
        printProfessors = 'Please input a valid professor background'

    global searchProfessorLabel
    searchProfessorLabel = Label(root, text=printProfessors)
    searchProfessorLabel.grid(row=8, column=4, columnspan=2)

    # Commit changes
    conn.commit()

    # Close connection
    conn.close()

def showCurrentClasses():
    # Create / Connect to database
    conn = sqlite3.connect('FinalProject.db')

    # Create cursor
    cursor = conn.cursor()

    # See if something was typed
    input = studentNumber.get()
    printStudent = ''
    printClasses = ''

    if (input != ''):
        cursor.execute('SELECT current_classes FROM Students WHERE student_number LIKE \'%{}%\''.format(input))
        classes = cursor.fetchall()
        cls = []
        for cl in classes:
            cursor.execute('SELECT * FROM Classes WHERE id LIKE \'{}\' AND student_number LIKE \'{}\''.format(cl[0], input))
            temp = cursor.fetchall()
            if (len(temp) != 0):
                cls.append(temp[0])
        cursor.execute('SELECT * FROM Students WHERE student_number LIKE \'{}\''.format(input))
        student = cursor.fetchone()
        printStudent = 'Here is the student matching the student number: \n \n'
        printClasses = 'Here are the grades the student currently has: \n \n'
        for cl in cls:
            printClasses += str(cl[0]) + '\n' + str(cl[1]) + '\n' + str(cl[2]) + '\n \n'
        printStudent += str(student[0]) + '\n' + str(student[1]) +'\n' + str(student[2]) + '\n' + str(student[3])  + '\n' + str(student[4]) + '\n \n'
    else:
        printStudent = 'Please input a valid student number'
        printClasses = 'No classes to show'

    global showStudentLabel
    global showCurrentClassesLabel
    showStudentLabel = Label(root, text=printStudent)
    showStudentLabel.grid(row=8, column=0, columnspan=2)
    showCurrentClassesLabel = Label(root, text=printClasses)
    showCurrentClassesLabel.grid(row=8, column=2, columnspan=2)

    # Commit changes
    conn.commit()

    # Close connection
    conn.close()

def showPrereqs():
    # Create / Connect to database
    conn = sqlite3.connect('FinalProject.db')

    # Create cursor
    cursor = conn.cursor()

    # See if something was typed
    input = classId.get()

    printClasses = ''

    if (input != ''):
        cursor.execute('SELECT prerequisites FROM Classes WHERE id LIKE \'%{}%\''.format(input))
        printClasses = 'Here is the class matching that ID: \n \n'
        classes = cursor.fetchall()
        cls = []
        for cl in classes:
            cursor.execute('SELECT * FROM Classes WHERE id LIKE \'%{}%\''.format(cl[0]))
            classes = cursor.fetchall()
            cls.append(classes[0])
        printClasses = 'Here are the prerequisites for this class: \n \n'
        for cl in cls:
            printClasses += str(cl[0]) + '\n' + str(cl[1]) + '\n \n'
    else:
        printClasses = 'Please input a valid class id'

    global searchClassLabel
    searchClassLabel = Label(root, text=printClasses)
    searchClassLabel.grid(row=8, column=2, columnspan=2)

    # Commit changes
    conn.commit()

    # Close connection
    conn.close()

def refresh():
    # Create / Connect to database
    conn = sqlite3.connect('FinalProject.db')

    try:
        studentSearchLabel.destroy()
    except:
        pass
    try:
        searchClassLabel.destroy()
    except:
        pass
    try:
        searchProfessorLabel.destroy()
    except:
        pass
    try:
        showStudentLabel.destroy()
    except:
        pass
    try:
        showCurrentClassesLabel.destroy()
    except:
        pass


    # Commit changes
    conn.commit()

    # Close connection
    conn.close()

# Create text boxes
name = Entry(root, width=30)
name.grid(row=1, column=1)

studentNumber = Entry(root, width=30)
studentNumber.grid(row=2, column=1, padx=20)

program = Entry(root, width=30)
program.grid(row=3, column=1, padx=20)

classTitle = Entry(root, width=30)
classTitle.grid(row=1, column=3, padx=20)

classId = Entry(root, width=30)
classId.grid(row=2, column=3, padx=20)

profName = Entry(root, width=30)
profName.grid(row=1, column=5, padx=20)

profId = Entry(root, width=30)
profId.grid(row=2, column=5, padx=20)

profBackground = Entry(root, width=30)
profBackground.grid(row=3, column=5, padx=20)

# Create text box labels
studentLabel = Label(root, text='Students')
studentLabel.grid(row=0, column=0, columnspan=2)

nameLabel = Label(root, text='Name')
nameLabel.grid(row=1, column=0)

studentNumberLabel = Label(root, text='Student Number')
studentNumberLabel.grid(row=2, column=0)

programLabel = Label(root, text='Program')
programLabel.grid(row=3, column=0)

classLabel = Label(root, text='Classes')
classLabel.grid(row=0, column=2, columnspan=2)

classTitleLabel = Label(root, text='Title')
classTitleLabel.grid(row=1, column=2)

classIdLabel = Label(root, text='ID')
classIdLabel.grid(row=2, column=2)

profLabel = Label(root, text='Professors')
profLabel.grid(row=0, column=4, columnspan=2)

profNameLabel = Label(root, text='Professor Name')
profNameLabel.grid(row=1, column=4)

profIdLabel = Label(root, text='Professor ID')
profIdLabel.grid(row=2, column=4)

profBackgroundLabel = Label(root, text='Professor Background')
profBackgroundLabel.grid(row=3, column=4)

# Binding keys for search
studentNumber.bind('<KeyRelease>')
classId.bind('<KeyRelease>')
profId.bind('<KeyRelease>')
profBackground.bind('<KeyReleasee>')

# Create student search button
searchStudentBtn = Button(root, text='Search Students By ID', command=studentSearch)
searchStudentBtn.grid(row=5, column=0, columnspan=2, pady=10, padx=10, ipadx=137)

# Create class search button
searchClassBtn = Button(root, text='Search Classes By ID', command=classSearch)
searchClassBtn.grid(row=5, column = 2, columnspan=2, pady=10, padx=10, ipadx=100)

# Create search professor button
searchProfessorBtn = Button(root, text='Search Professors By ID', command=professorSearch)
searchProfessorBtn.grid(row = 5, column=4, columnspan=2, pady=10, padx=10, ipadx=100)

# Create search by background button
searchProfessorBackgroundBtn = Button(root, text='Search Professors By Background', command=backgroundSearch)
searchProfessorBackgroundBtn.grid(row=6, column=4, columnspan=2, pady=10, padx=10, ipadx=100)

# Search current classes button
searchCurrentClassesBtn = Button(root, text='Show Current Classes', command=showCurrentClasses)
searchCurrentClassesBtn.grid(row=6, column=0, columnspan=2, pady=10, padx=10, ipadx=100)

# Create show pre-reqs button
showPrereqsBtn = Button(root, text='Show Class Prerequisites', command=showPrereqs)
showPrereqsBtn.grid(row=6, column=2, columnspan=2, pady=10, padx=10, ipadx=100)

# Refresh Button
refreshBtn = Button(root, text='Refresh', command=refresh)
refreshBtn.grid(row=7, column=0, columnspan=6, pady=10, padx=10, ipadx=100)

# Commit changes
conn.commit()

# Close connection
conn.close()

root.mainloop()