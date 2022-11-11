prompt Displaying the total number of books available in the library
select count(*) as NO_OF_BOOKS_AVAILABLE from book WHERE issue_status='available';