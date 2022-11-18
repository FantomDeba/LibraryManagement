prompt Displaying books of Detective genre
select book_type,book_isbn,book_name from book where issue_status='available'  and book_type='Detective';