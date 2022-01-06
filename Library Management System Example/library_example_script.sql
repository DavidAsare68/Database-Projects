
-- Query examples I made based on the library database

-- Inserting names of authours into the author table.

INSERT INTO `library_example`.`author` (`id`, `first_name`, `last_name`) VALUES ('1', 'Tony', 'Stark');
INSERT INTO `library_example`.`author` (`id`, `first_name`, `last_name`) VALUES ('2', 'Bruce', 'Wayne');
INSERT INTO `library_example`.`author` (`id`, `first_name`, `last_name`) VALUES ('3', 'Oliver', 'Queen');

select * from library_example.author;

-- Inserting info into category table
INSERT INTO `library_example`.`category` (`id`, `category_name`) VALUES ('100', 'Cat One');
INSERT INTO `library_example`.`category` (`id`, `category_name`) VALUES ('200', 'Cat Two');
INSERT INTO `library_example`.`category` (`id`, `category_name`) VALUES ('300', 'Cat three');

select * from library_example.category;

-- Inserting info into book table. 
INSERT INTO `library_example`.`book` (`id`, `title`, `category_id`, `publication_date`, `copies_owned`) VALUES ('10', 'My Story One', '100', '2021-03-19', '38');
INSERT INTO `library_example`.`book` (`id`, `title`, `category_id`, `publication_date`, `copies_owned`) VALUES ('20', 'My Story Two', '200', '2020-01-2', '45');
INSERT INTO `library_example`.`book` (`id`, `title`, `category_id`, `publication_date`, `copies_owned`) VALUES ('30', 'My  Story Three', '300', '2019-02-12', '34');

select * from library_example.book;

-- Inserting info into member_status tabe.
INSERT INTO `library_example`.`member_status` (`id`, `status_value`) VALUES ('451', 'value One');
INSERT INTO `library_example`.`member_status` (`id`, `status_value`) VALUES ('452', 'Value Two');
INSERT INTO `library_example`.`member_status` (`id`, `status_value`) VALUES ('453', 'Value Three');

select * from library_example.member_status;

-- Inserting info into the member table
INSERT INTO `library_example`.`member` (`id`, `first_name`, `last_name`, `joined_date`, `active_status_id`) VALUES ('351', 'Jason', 'Todd', '2018-02-28', '451');
INSERT INTO `library_example`.`member` (`id`, `first_name`, `last_name`, `joined_date`, `active_status_id`) VALUES ('352', 'Barbra ', 'Gordon', '2019-01-27', '452');
INSERT INTO `library_example`.`member` (`id`, `first_name`, `last_name`, `joined_date`, `active_status_id`) VALUES ('353', 'Felicity', 'Smoke', '2020-03-26', '453');

select * from library_example.member;

-- Inserting info into loan table.
INSERT INTO `library_example`.`loan` (`id`, `book_id`, `member_id`, `loan_date`, `returned_date`) VALUES ('251', '10', '351', '2020-02-17', '2020-02-19');
INSERT INTO `library_example`.`loan` (`id`, `book_id`, `member_id`, `loan_date`, `returned_date`) VALUES ('252', '20', '352', '2021-03-18', '2021-03-19');
INSERT INTO `library_example`.`loan` (`id`, `book_id`, `member_id`, `loan_date`, `returned_date`) VALUES ('253', '30', '353', '2022-04-19', '2022-04-20');

select * from library_example.loan

-- Inserting info the fine table
INSERT INTO `library_example`.`fine` (`id`, `book_id`, `loan_id`, `fine_date`, `fine_amount`) VALUES ('151', '10', '251', '2020-02-20', '1000');
INSERT INTO `library_example`.`fine` (`id`, `book_id`, `loan_id`, `fine_date`, `fine_amount`) VALUES ('152', '20', '252', '2019-05-12', '2000');
INSERT INTO `library_example`.`fine` (`id`, `book_id`, `loan_id`, `fine_date`, `fine_amount`) VALUES ('153', '30', '253', '2021-05-13', '3000');

select * from library_example.fine

-- Inserting info into fine_payment table
INSERT INTO `library_example`.`fine_payment` (`id`, `member_id`, `payment_date`, `payment_amount`) VALUES ('141', '351', '2021-08-19', '2000');
INSERT INTO `library_example`.`fine_payment` (`id`, `member_id`, `payment_date`, `payment_amount`) VALUES ('142', '352', '2021-09-12', '4000');
INSERT INTO `library_example`.`fine_payment` (`id`, `member_id`, `payment_date`, `payment_amount`) VALUES ('143', '353', '2021-10-13', '6000');

select * from library_example.fine_payment

-- Inserting info into reservation_status table
INSERT INTO `library_example`.`reservation_status` (`id`, `status_value`) VALUES ('700', '421');
INSERT INTO `library_example`.`reservation_status` (`id`, `status_value`) VALUES ('800', '422');
INSERT INTO `library_example`.`reservation_status` (`id`, `status_value`) VALUES ('900', '423');

select * from library_example.reservation_status;

INSERT INTO `library_example`.`reservation` (`id`, `book_id`, `member_id`, `reservation_date`, `reservation_status_id`) VALUES ('651', '10', '351', '2020-06-18', '700');
INSERT INTO `library_example`.`reservation` (`id`, `book_id`, `member_id`, `reservation_date`, `reservation_status_id`) VALUES ('652', '20', '352', '2021-03-19', '800');
INSERT INTO `library_example`.`reservation` (`id`, `book_id`, `member_id`, `reservation_date`, `reservation_status_id`) VALUES ('653', '30', '353', '2022-04-20', '900');

select * from library_example.reservation;

-- Displaying records with fine amount larger than 1000
select *from library_example.fine 
where fine_amount > 1000;

-- Counting number of rows in the fine payment table
select count(payment_amount)
from library_example.fine_payment;

-- Selecting the rows with first names that start with letter b from the author table.
select * from library_example.author
where first_name like 'b%';

-- Selecting rows from member table and member_status joining the two tables
select member.first_name, member.last_name, member.joined_date, member_status.status_value
from library_example.member, library_example.member_status
where member.id = member_status.id;

-- Selecting the largest payment value from the fine_payment table
select max(payment_amount) as LargestPayment
from library_example.fine_payment;






