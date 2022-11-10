set serveroutput on
DECLARE
    c_id       customer.customer_id%TYPE;
    b_id       book.book_isbn%TYPE;
    status      varchar2(20);
    Da         varchar2(20);
BEGIN
    c_id:=&CUSTOMER_IDENTITY_NO;
    b_id:=&BOOK_ISBN_TO_ISSUE;
    Da:='&DATE_YYYY_MM_DD';
    select issue_status into status from book where book_isbn=b_id;
    IF status = 'unavailable' THEN
        DBMS_OUTPUT.PUT_LINE('The book is not available currently');
    ELSE
        insert into issues values(it1.nextval,c_id,b_id,TO_DATE(Da, 'yyyy-mm-dd'));
        UPDATE book
        SET 
        issue_status = 'unavailable'
        WHERE
        book_isbn = b_id;
       DBMS_OUTPUT.PUT_LINE('THE BOOK IS SUCCESFULLY REGISTERED IN YOUR NAME');
    END IF;
    EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('SOMETHING WENT WRONG');
END;
/