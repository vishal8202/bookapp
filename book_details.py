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
    print('6 : Update the total amount for each book depending on the return date')
    print('7 :.Display the total number of books in each category of book table')
    print('8 : Display the book details where book name starting character contain ')
    print('9 : Exit')
    

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
        charge_p_day = input('Enter the price for each day to be get updated : ')
        sql = 'DELETE FROM `books_detail` WHERE `charge_p_day`='+charge_p_day
        mycursor.execute(sql)
        mydb.commit()
        print('Deleted sucessfully !!!')
    elif(choice == 6 ):
        sql = 'SELECT i.`User_Id`, i.`book_id`, i.`issue_date`, i.`return_date`,DATEDIFF(i.`return_date`,i.issue_date) AS datediff,DATEDIFF(i.`return_date`,i.issue_date)*b.charge_p_day AS Total_Amount FROM `issuing_book` i JOIN books_detail b ON i.book_id=b.id'
        mycursor.execute(sql)
        result = mycursor.fetchall()
        for i in result:
            print(i)
        
    elif(choice == 7):
        print('displays Total number of books for each category')
        sql = 'SELECT COUNT(*) AS total_book_per_category,`book_categ` FROM `books_detail` GROUP BY `book_categ`'
        mycursor.execute(sql)
        result = mycursor.fetchall()
        for i in result:
            print(i)
    elif(choice == 8):
        print('Displays the character which you needed ')
    elif(choice == 9):
        break
    
