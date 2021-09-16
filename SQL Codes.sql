/* Database for Bookstore (Case study) by Mario Caesar
More about myself: https://linktr.ee/caesarmario_ */

CREATE DATABASE Coba2Assignment

DROP DATABASE Coba2Assignment

CREATE TABLE Publisher(
	PublisherID nvarchar(50) primary key,
	PublisherName nvarchar(50),
	PublisherAddress nvarchar(50),
	PublisherContact nvarchar(50)
);

/* Database for Bookstore (Case study) by Mario Caesar
More about myself: https://linktr.ee/caesarmario_ */

CREATE TABLE Book(
	BookID nvarchar(50) primary key,
	BookTitle nvarchar(50),
	BookSerialNumber nvarchar(50),
	BookQuantity int,
	BookPrice int,
	PublisherID nvarchar(50) Foreign Key References Publisher(PublisherID),
	CategoryID nvarchar(50) Foreign Key References Category(CategoryID)
);

CREATE TABLE Category(
	CategoryID nvarchar(50) primary key,
	CategoryName nvarchar(50)
);

CREATE TABLE Employee(
	EmployeeID nvarchar(50) primary key,
	EmployeeName nvarchar(50),
	EmployeeContactNumber nvarchar(50),
	EmployeePosition nvarchar(50)
);

/* Database for Bookstore (Case study) by Mario Caesar
More about myself: https://linktr.ee/caesarmario_ */

CREATE TABLE OrderTbl (
	OrderID nvarchar(50) primary key,
	OrderDate date,
	PublisherID nvarchar(50) Foreign Key References Publisher(PublisherID),
	EmployeeID nvarchar(50) Foreign Key References Employee(EmployeeID),
	OrderTotal int
);

CREATE TABLE OrderDetail(
	OrderDetailID nvarchar(50) primary key,
	OrderID nvarchar(50) Foreign Key References OrderTbl(OrderID),
	BookID nvarchar(50) Foreign Key References Book(BookID),
	OrderQuantity int,
	SubTotalOrder int
);

CREATE TABLE Invoice(
	InvoiceID nvarchar(50) primary key,
	InvoiceDate date,
	PublisherID nvarchar(50) Foreign Key References Publisher(PublisherID),
	OrderID nvarchar(50) Foreign Key References OrderTbl(OrderID),
	TotalInvoice int
);

/* Database for Bookstore (Case study) by Mario Caesar
More about myself: https://linktr.ee/caesarmario_ */

CREATE TABLE Member(
	MemberID nvarchar(50) primary key,
	MemberName nvarchar(50),
	MemberGender nvarchar(50),
	MemberAddress nvarchar(50),
	MemberContact nvarchar(50)
);

CREATE TABLE Cart(
	CartID nvarchar(50) primary key,
	CartDate date,
	MemberID nvarchar(50) Foreign Key References Member(MemberID),
	CartStatus nvarchar(50),
	CartTotal int
);

CREATE TABLE CartDetail(
	CartDetailID nvarchar(50) primary key,
	CartID nvarchar(50) Foreign Key References Cart(CartID),
	BookID nvarchar(50) Foreign Key References Book(BookID),
	CartQuantity int,
	SubTotalCart int
);

/* Database for Bookstore (Case study) by Mario Caesar
More about myself: https://linktr.ee/caesarmario_ */

CREATE TABLE Receipt(
	ReceiptID nvarchar(50) primary key,
	CartID nvarchar(50) Foreign Key References Cart(CartID),
	DatePayment date,
	StatusPayment nvarchar(50),
	TotalPayment int
);

CREATE TABLE Feedback(
	FeedbackID nvarchar(50) primary key,
	FeedbackComment nvarchar(50),
	Rating int,
	BookID nvarchar(50) Foreign Key References Book(BookID),
	MemberID nvarchar(50) Foreign Key References Member(MemberID)
);

/* Database for Bookstore (Case study) by Mario Caesar
More about myself: https://linktr.ee/caesarmario_ */

INSERT INTO Publisher VALUES
('P001','Reinger Group','Mccormick Street','2926330264'),
('P002','Daugherty Group','Burrows Street','7991230545'),
('P003','Wehner Group','Elmside Street','8088143740'),
('P004','Feest Group','Schlimgen Street','4625826402'),
('P005','Hane Group','Delladonna Street','2064784677');

INSERT INTO Book VALUES
('B001','The Smurfs','69-531-7584','8','100','P001','CY02'),
('B002','The Italian Job','56-203-6485','18','200','P002','CY05'),
('B003','O Horten','84-737-1902','14','300','P003','CY04'),
('B004','Stand by Me Doraemon','21-941-9475','20','400','P004','CY03'),
('B005','Atomic Twister','74-412-0200','13','500','P005','CY02'),
('B006','High School High','64-571-1632','15','600','P002','CY01');

/* Database for Bookstore (Case study) by Mario Caesar
More about myself: https://linktr.ee/caesarmario_ */

INSERT INTO Category VALUES
('CY01','Action and Adventure'),
('CY02','Fantasy'),
('CY03','Historical Fiction'),
('CY04','Horror'),
('CY05','Graphic Novel');

INSERT INTO Employee VALUES
('E001','Bianka','6827479859','Manager'),
('E002','Merrick','2574602545','Manager'),
('E003','Gretna','2561647670','Accountant'),
('E004','Octavia','4354864760','Accountant'),
('E005','Myrtle','1904756906','Clerk');

/* Database for Bookstore (Case study) by Mario Caesar
More about myself: https://linktr.ee/caesarmario_ */

INSERT INTO OrderTbl VALUES
('O001','2 Dec 2020','P001','E001','2800'),
('O002','24 Dec 2020','P001','E002','6300'),
('O003','29 Dec 2020','P002','E001','1100'),
('O004','12 Jan 2021','P003','E001','7000'),
('O005','21 Jan 2021','P004','E002','6800'),
('O006','25 Jan 2021','P005','E002','1200');

INSERT INTO OrderDetail VALUES
('OD01','O001','B002','14','2800'),
('OD02','O002','B003','20','6000'),
('OD03','O002','B001','3','300'),
('OD04','O003','B001','11','1100'),
('OD05','O004','B005','14','7000'),
('OD06','O005','B004','17','6800'),
('OD07','O006','B003','4','1200');

/* Database for Bookstore (Case study) by Mario Caesar
More about myself: https://linktr.ee/caesarmario_ */

INSERT INTO Invoice VALUES
('I001','3 Dec 2020','P001','O001','2800'),
('I002','25 Dec 2020','P001','O002','6300'),
('I003','30 Dec 2020','P002','O003','1100'),
('I004','13 Jan 2021','P003','O004','7000'),
('I005','22 Jan 2021','P004','O005','6800'),
('I006','26 Jan 2021','P005','O006','1200');

INSERT INTO Member VALUES
('M001','Mitchel','Female','Nobel Street','4224125465'),
('M002','Ted','Male','Westerfield Street','3464700687'),
('M003','Vladamir','Male','Westend Street','5688605550'),
('M004','Jacqueline','Female','Village Street','8494211303'),
('M005','Josefa','Female','Melrose Street','8806368088');

/* Database for Bookstore (Case study) by Mario Caesar
More about myself: https://linktr.ee/caesarmario_ */

INSERT INTO Cart VALUES
('C001','9 Jan 2021','M001','Delivered','1000'),
('C002','17 Jan 2021','M001','Delivered','1500'),
('C003','19 Jan 2021','M002','Delivered','100'),
('C004','25 Jan 2021','M003','Delivered','400'),
('C005','27 Jan 2021','M004','Delivered','300'),
('C006','1 Feb 2021','M005','Not Delivered','400');

INSERT INTO CartDetail VALUES
('CD01','C001','B003','2','600'),
('CD02','C001','B004','1','400'),
('CD03','C002','B005','3','1500'),
('CD04','C003','B001','1','100'),
('CD05','C004','B002','2','400'),
('CD06','C005','B003','1','300'),
('CD07','C006','B004','1','400');

INSERT INTO Receipt VALUES
('R001','C001','10 Jan 2021','Paid','1000'),
('R002','C002','17 Jan 2021','Paid','1500'),
('R003','C003','20 Jan 2021','Paid','100'),
('R004','C004','26 Jan 2021','Paid','400'),
('R005','C005','30 Jan 2021','Paid','300'),
('R006','C006','3 Feb 2021','Paid','400');

/* Database for Bookstore (Case study) by Mario Caesar
More about myself: https://linktr.ee/caesarmario_ */

INSERT INTO Feedback VALUES
('F001','Great book','7','B003','M001'),
('F002','Nice book','6','B004','M001'),
('F003','Masterpiece','8','B005','M001'),
('F004','Really funny book','9','B001','M002'),
('F005','Highly recommended','8','B002','M003'),
('F006','Recommended for student','7','B003','M004'),
('F007','Good book','8','B004','M005');

--1. Total feedback per book (book id, book title, total number feedback/book)
SELECT f.BookID, b.BookTitle, COUNT(f.FeedbackID) AS TotalNumberFeedbackperBook
FROM Book b, Feedback f
WHERE b.BookID=f.BookID GROUP BY f.BookID,b.BookTitle;

--2. Total feedback per member (member id, member name, total number feedback/book)
SELECT f.MemberID, m.MemberName, COUNT(f.FeedbackID) AS TotalNumberFeedbackperMember
FROM Member m, Feedback f
WHERE m.MemberID=f.MemberID GROUP BY f.MemberID,m.MemberName;

/* Database for Bookstore (Case study) by Mario Caesar
More about myself: https://linktr.ee/caesarmario_ */

--3. Total book each publisher. (publisher id, publisher name, total book published)
SELECT b.PublisherID, p.PublisherName, COUNT(b.BookID) AS TotalBookPublished
FROM Publisher p, Book b
WHERE p.PublisherID=b.PublisherID GROUP BY b.PublisherID,p.PublisherName;

--4. Total book each category. (category id, category name, total book/category)
SELECT b.CategoryID, c.CategoryName, COUNT(b.BookID) AS TotalBookperCategory
FROM Book b,Category c
WHERE c.CategoryID=b.CategoryID GROUP BY b.CategoryID,c.CategoryName;

/* Database for Bookstore (Case study) by Mario Caesar
More about myself: https://linktr.ee/caesarmario_ */

--5. List book w/ quantity > avg quantity of all books
SELECT BookID, BookTitle, BookSerialNumber, BookQuantity, BookPrice
FROM Book
WHERE BookQuantity > (SELECT AVG(BookQuantity) AS AVGQuantity From Book);

--6. Total books ordered from various publisher.
SELECT o.PublisherID, p.PublisherName, SUM(od.OrderQuantity) AS TotalBooksOrdered
FROM OrderTbl o, OrderDetail od, Publisher p
WHERE o.PublisherID=p.PublisherID AND od.OrderID=o.OrderID
GROUP BY o.PublisherID, p.PublisherName;

/* Database for Bookstore (Case study) by Mario Caesar
More about myself: https://linktr.ee/caesarmario_ */

--7. Invoices for various publishers. (invoice number, invoice date, publisher name, publisher address
--total ordered books, total to be paid)
SELECT i.InvoiceID, i.InvoiceDate, i.PublisherID, p.PublisherName, p.PublisherAddress, od.OrderQuantity, o.OrderTotal
FROM Invoice i, Publisher p, OrderTbl o, OrderDetail od
WHERE i.PublisherID=p.PublisherID AND o.PublisherID=p.PublisherID AND i.OrderID=o.OrderID AND o.OrderID=od.OrderID;

--8. Total customer based on gender (total customer registered, total number of gender)
SELECT COUNT(*) AS TotalCustomer,
	   COUNT(CASE WHEN MemberGender='Male' THEN 1 END) AS TotalMale,
	   COUNT(CASE WHEN MemberGender='Female' THEN 1 END) as TotalFemale
FROM Member;

--9. List of purchased book that have delivered and have not delivered. (member id, member address,
--member contact, book serial number, book title, quantity, date, status of delivery)
SELECT c.MemberID, m.MemberAddress, m.MemberContact, b.BookSerialNumber, b.BookTitle, cd.CartQuantity, c.CartDate, c.CartStatus
FROM Cart c, Member m, CartDetail cd, Book b
WHERE c.MemberID=m.MemberID AND cd.CartID=c.CartID AND cd.BookID=b.BookID

/* Database for Bookstore (Case study) by Mario Caesar
More about myself: https://linktr.ee/caesarmario_ */

--10. List of books and total price as added by members in shopping cart.
SELECT c.MemberID,m.MemberName,m.MemberAddress,b.BookTitle, b.BookPrice, cd.CartQuantity, cd.SubTotalCart, c.CartTotal
FROM Book b, Cart c, CartDetail cd, Member m
WHERE b.BookID=cd.BookID AND cd.CartID=c.CartID AND c.MemberID=m.MemberID

/* Database for Bookstore (Case study) by Mario Caesar
More about myself: https://linktr.ee/caesarmario_ */