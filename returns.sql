set serveroutput on
DECLARE
    c_id       customer.customer_id%TYPE;
    b_id       book.book_isbn%TYPE;
    status      varchar2(20);
    count      number;
    Da         varchar2(20);
BEGIN
    c_id:=&CUSTOMER_IDENTITY_NO;
    b_id:=&BOOK_ISBN_TO_RETURN;
    Da:='&DATE_YYYY_MM_DD';
    insert into return values(it2.nextval,b_id,c_id,TO_DATE(Da,'YYYY-MM-DD'));
    delete from issues where book_bn=b_id;
        UPDATE book
        SET 
        issue_status = 'available'
        WHERE
        book_isbn = b_id;
       DBMS_OUTPUT.PUT_LINE('THE BOOK IS SUCCESFULLY REMOVED FROM YOUR NAME');
END;
/