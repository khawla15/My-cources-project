# -*- coding: utf-8 -*-
"""
Created on Sun Apr 10 01:01:31 2022

@author: خوله
"""
from tkinter import *
import tkinter as tk
from tkinter import ttk
import mysql  
from tkinter import *
from tkinter import messagebox
import sys
#begin connection 
print()
print("Create Connection")
import mysql.connector
mydb = mysql.connector.connect(
    host = "localhost",
    user = "root",
    passwd = "kh1256400",
    database = "DB2_project",
    auth_plugin='mysql_native_password'
    
        )
mycursor = mydb.cursor()

#---------------------------------------

def submit ():
    mydb = mysql.connector.connect(
        host = "localhost",
        user = "root",
        passwd = "kh1256400",
        database = "DB2_project",
        auth_plugin='mysql_native_password'
        
            )
    mycursor = mydb.cursor()
    SSN = S1.get()
    mycursor.execute('select SSN from DB2_project.employees')
    SSN_1 = mycursor.fetchall()
    #make dictionary to store each user Email with password
    SSN_dict={}
    for i in SSN_1 :
        SSN_dict[i[0]] = i[0]
    
    #check if SSN in our database (autherized to access or not)
    if SSN not in SSN_dict  : 
        
        if (SSN =="" ):
            messagebox.showinfo("","The field is empty! You must enter a value ❌ ")
        else:
            messagebox.showinfo("","the SSN isn’t exist in the database❌ ")
        

    
    
   
    sql="select FNAME , LNAME , SALARY from DB2_project.employees where SSN ='"+SSN+"' "
    mycursor.execute(sql)
    result = mycursor.fetchone()
    
    tree.insert('',0,values =(result[0] , result[1] ,result[2]))
  
    
def tab2():
    #page 2
   
        w1=tk.Tk()
        w1.title('Employee information')
        w1.geometry('500x100')
        Label(w1,text='''Enter Employee SSN ''').place(x=10,y=10)
        global S1

        S1 = Entry(w1)
        S1.place(x=140,y=10)
        global tree
        
        #tree
        tree = ttk.Treeview(w1 , height =1)

        tree.pack(side = BOTTOM)

        tree['show']='headings'

        s=ttk.Style(w1)
        s.theme_use("clam")
        

        #Define the number of column
        tree["columns"]=("Fname","Lname","salary")

    #the propraties of columns
        tree.column("Fname" , width = 80 , minwidth =50 , anchor =tk.CENTER)
        tree.column("Lname" , width = 80 , minwidth =50 , anchor =tk.CENTER)
        tree.column("salary" , width = 80 , minwidth =50 , anchor =tk.CENTER)

    # assin the name of column 
        tree.heading("Fname" , text="Frist Name " , anchor =tk.CENTER)
        tree.heading("Lname" , text="Last Name " , anchor =tk.CENTER)
        tree.heading("salary" , text="Salary" , anchor =tk.CENTER)

        tree.pack()
        Button(w1,text=' Submit ', bg ='skyblue' ,
                        activebackground='pink', command = submit ,height=1 , width =13).place(x=300,y=10)
        Button.pack()
#this method will do the action of Button Sign In
def check():
    from tkinter import messagebox
    #get userEmail and password which user input it 
    userm=email.get()
    userpw=password.get()
    
    
    mycursor.execute('select email,user_password from users')
    users = mycursor.fetchall()
    #make dictionary to store each user Email with password
    users_dict={}
    for i in users :
        users_dict[i[0]] = i[1]
        
    
    #check if user in our database (autherized to access or not)
    if userm in users_dict and userpw == users_dict[userm]: #sign in success>go
        tab2()
    elif (userm =="" and userpw ==""):
        messagebox.showinfo("","Blank not allowed ❌ ")
    
    else:
        messagebox.showinfo("","Incorrect username or password ❌ ")
 

  
def tab1():
    
#UI for login page
#create frame
      
    top.title("Login page")
    top.minsize(600,300)

    label1 = Label(text='Login Here',font=('Helvetica bold',40))
#to make label1 visible
    label1.pack()

#1- user email
    mailLabel = Label(text='User Email',font=('Helvetica bold',16))
   
#to make label1 visible
    mailLabel.pack()

#input from user
    global email
    global password
    email = Entry()
    email.config(font = ('Helvetica bold',16))
    email.pack()

#2- password
    passLabel = Label(text='Password',font=('Helvetica bold',16))
   
#to make label1 visible
    passLabel.pack()

#input from user
    password = Entry()
    password.config(font = ('Helvetica bold',16))
    password.pack()

#Button Sign in (check is method above will do work for button)
    signin = Button(text= "Sign In", font =('Helvetica bold',16),bg ='skyblue' ,
                    activebackground='pink',command = check)
    signin.pack()







top = Tk()
tab1()
#make frame visible 
top.mainloop()