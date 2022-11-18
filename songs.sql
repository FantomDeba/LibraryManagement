prompt Displaying books of songs genre
select book_type,book_isbn,book_name from book where issue_status='available'  and book_type='Songs';