prompt Result of 1st test query
select customer.first_name,customer.last_name from customer where customer.customer_id=any(select cust_id from issues where issues.book_bn=any(select book_isbn from book where book_type='Comedy'));
prompt Result of 2nd test query
select issues.issue_id,customer.first_name,customer.last_name from customer  inner join issues on issues.cust_id=customer.customer_id where issues.book_bn=1004;
prompt Result of 3rd test query
select * from issues where issues.book_bn = any(select book_is from return);
prompt Result of 4th test query
ALTER TABLE customer ADD book_type varchar2(20);
desc customer;