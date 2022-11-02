import mysql.connector

mydb = mysql.connector.connect(host = 'localhost' , user = 'root' , password = '' , database = 'library_db')

mycursor = mydb.cursor()

while True:
    print("select an option from the menu")
    print('1 add book')
    print('2 view all books')
    print('3 search a book')
    print('4 update the book')
    print('5 delete a book')
    print('6 exit')

    choice = int(input('Enter an option: '))
    if(choice == 1):
        print('Book enter selected')
        name = input('Enter the book name : ')
        category = input('Enter the category of the book : ')
        charge_p_day = input('Enter the price for each day : ')
        AuthorName = input('Enter the author name : ')
        established = input('Enter the date of established : ')

        sql = 'INSERT INTO `books_detail`(`book_name`, `book_categ`, `charge_p_day`, `Author_name`, `Established_date`) VALUES(%s,%s,%s,%s,%s) '
        data = (name,category,charge_p_day,AuthorName,established)
        mycursor.execute(sql,data)
        mydb.commit()
    elif(choice == 2):
        print('view all book selected')
        sql = 'SELECT * FROM `books_detail`'
        mycursor.execute(sql)
        result = mycursor.fetchall()
        for i in result:
            print(i)
        print('Sucessfully !!!!')
    elif(choice==3):
        print('search a book selected')
        category = input('Enter the category of the book you needed : ')
        sql = "SELECT `id`, `book_name`, `book_categ`, `charge_p_day`, `Author_name`, `Established_date` FROM `books_detail` WHERE `book_categ`='"+category+"'"
        mycursor.execute(sql)
        result = mycursor.fetchall()
        print(result)
    elif(choice==4):
        print('update the book selected')
        charge_p_day = input('Enter the price for each day to be get updated : ')
        name = input('Enter the book name : ')
        category = input('Enter the category of the book : ')
       
        AuthorName = input('Enter the author name : ')
        established = input('Enter the date of established : ')
        sql = "UPDATE `books_detail` SET `book_name`='"+name+"',`book_categ`='"+category+"',`charge_p_day`='"+charge_p_day+"',`Author_name`='"+AuthorName+"',`Established_date`='"+established+"' WHERE `charge_p_day`="+charge_p_day
        mycursor.execute(sql)
        mydb.commit()
        print('Updated sucessfully !!!')
    elif(choice==5):
        print('delete the book selected')
    elif(choice==6):
        break    
