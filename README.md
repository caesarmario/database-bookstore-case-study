<h1 align="center"> 📚 Case Study - Database Bookstore 📚 </h1>
<p align="center">using <b>SQL 🔩</b></p><br>
<p align="center">
  <img src="https://img.shields.io/static/v1?label=%F0%9F%8C%9F&message=If%20Useful&style=style=flat&color=BC4E99" alt="Star Badge"/>
  <a href="https://www.github.com/caesarmario">
    <img src="https://img.shields.io/github/followers/caesarmario?style=social&link=https://www.github.com/caesarmario" alt"GitHub"/>
  </a>
  <a href="https://linktr.ee/caesarmario_">
    <img src="https://img.shields.io/badge/Follow%20My%20Other%20Works-019875?style=flat&labelColor=019875&link=https:/linktr.ee/caesarmario_" alt"Linktree"/>
  </a>
</p>
<br>


## 📃 Table of Contents:
  - [About Project](#-about-project)
  - [Scenario](#-scenario)
  - [Business Rules](#-business-rules)
  - [Normalization Process](#-normalization-process)
  - [Data Dictionary](#-data-dictionary)
  - [Database Schema](#-database-schema)
<br>


## 🖋 About Project:
👉 A database built for e-bookstore case studies. <br>
👉 The database built using **SQL** in _Microsoft SQL Server 18_. <br><br>


## 🧾 Scenario:
> The availability of books and reading material for purchase within the University is quite inadequate. Although the university library has vast collection of books (both hardcopy and e-books), the availability of it is quite limited and bound by many restrictions. Student and staffs only have the option of a small bookshop within the enterprise. Larger books store in the city are often sought for other varieties. <br><br>
In view of the growing population, the university is planning to establish an e-bookstore. The online store will facilitate the purchase of latest books and material of many genres. Your team is assigned the project to design a database system for online University e-Bookstore System. <br><br>
•	Publishers of books frequently send lists of latest books and materials to the e-bookstore manager. The bookstore manager compiles a list of needed books and sends an order to the publishers. The publisher supplies the ordered books to the university. The bookstore manager records the details of a new book, along with the number of the books that have arrived at the bookstore. An invoice is sent to the accounts department to be processed and payment made. <br><br>
•	Customers, who wish to purchase books online, need to initially register as members. Members will be able to view the book, read reviews and compare the online products with other similar articles. <br><br>
•	Members who wish to purchase can select their books into the website’s shopping cart. The cart will show the summary of the selection and total cost to be paid. Once the payment is made, the customer will be able to print or save the receipts. The bookstore will send the books to the customers within 7 working days. <br><br>
•	The system should manage information about books in the bookstore, inventory, (registered) customers and books they have ordered. It should also store information about user opinions and book ratings. <br><br>
•	Users can also provide 'feedback' for a book, as a score (1-10 which is 0= terrible, 10= masterpiece) along with optional short text. No changes are allowed; only one feedback per user per book is allowed.
<br><br>


## 📋 ERD Design:
👉 Based on the scenario above, the ERD designs defined as follows [here](https://github.com/caesarmario/database-bookstore-case-study/blob/main/ERD%20Design.jpg).
<br><br>
[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br><br>


## 📑 Business Rules:
- A **publisher** can have **only one invoice**, invoice is made by publisher by the end of the month.
- An **invoice** can be associated with **one or many orders**, **one order can only be associated with one invoice**.
- A **publisher** can have **one or many orders**.
- An **order** can be associated with **one or many order detail**.
- An **employee** can manage **one or many orders**.
- A **book** can be associated with **one or many order detail**.
- A **publisher** can publish **one or many books**.
- A **book** can have **only one category**.
- A **member** can **only give one feedback for each book**.
- A **book** can have **one or many feedbacks**.
- A **member** can have **one or many carts**.
- A **cart** can be associated with **one or many cart detail**.
- A **book** can be associated with **one or many cart detail**.
- A **cart** has **only one receipt**.
- **MemberID** can only be **associated to single member** and there **shall be no null**.
<br><br>
[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br><br>


## ⚙ Normalization Process:
### ▶ UNF
*   [Feedback Form](https://github.com/caesarmario/database-bookstore-case-study/blob/main/UNF/Feedback%20Form.PNG)
*   [Receipt](https://github.com/caesarmario/database-bookstore-case-study/blob/main/UNF/Receipt.PNG)
*   [Order Form](https://github.com/caesarmario/database-bookstore-case-study/blob/main/UNF/Order%20Form.PNG)
*   [Invoice Form](https://github.com/caesarmario/database-bookstore-case-study/blob/main/UNF/Invoice%20Form.PNG)
### ▶ 1NF
*   [1NF - Part 1](https://github.com/caesarmario/database-bookstore-case-study/blob/main/1NF/1NF_1.PNG)
*   [1NF - Part 2](https://github.com/caesarmario/database-bookstore-case-study/blob/main/1NF/1NF_2.PNG)
### ▶ 2NF
*   [2NF - Part 1](https://github.com/caesarmario/database-bookstore-case-study/blob/main/2NF/2NF_1.PNG)
*   [2NF - Part 2](https://github.com/caesarmario/database-bookstore-case-study/blob/main/2NF/2NF_2.PNG)
*   [2NF - Part 3](https://github.com/caesarmario/database-bookstore-case-study/blob/main/2NF/2NF_3.PNG)
### ▶ 3NF
*   [3NF - Part 1](https://github.com/caesarmario/database-bookstore-case-study/blob/main/3NF/3NF_1.PNG)
*   [3NF - Part 2](https://github.com/caesarmario/database-bookstore-case-study/blob/main/3NF/3NF_2.PNG)
*   [3NF - Part 3](https://github.com/caesarmario/database-bookstore-case-study/blob/main/3NF/3NF_3.PNG)
*   [3NF - Part 4](https://github.com/caesarmario/database-bookstore-case-study/blob/main/3NF/3NF_4.PNG)
<br><br>
[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br><br>

## 📗 Data Dictionary:
👉 Based on normalization process, below are the screenshot of data dictionaries:
*   [Data Dictionary - Part 1](https://github.com/caesarmario/database-bookstore-case-study/blob/main/Data%20Dictionary/Data%20Dictionary_1.PNG)
*   [Data Dictionary - Part 2](https://github.com/caesarmario/database-bookstore-case-study/blob/main/Data%20Dictionary/Data%20Dictionary_2.PNG)
*   [Data Dictionary - Part 3](https://github.com/caesarmario/database-bookstore-case-study/blob/main/Data%20Dictionary/Data%20Dictionary_3.PNG)
<br><br>
[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br><br>

## 📝 Database Schema:
👉 Database schema generated by _Microsoft SQL Server 18_.
*   [Database Schema](https://github.com/caesarmario/database-bookstore-case-study/blob/main/Database%20Schema.png)
<br><br>
[![](https://img.shields.io/badge/back%20to%20top-%E2%86%A9-blue)](#-table-of-contents)
<br><br>

## 🙌 Support me!

👉 If you find this project useful, **please ⭐ this repository 😆**!

---

👉 _More about myself: <a href="https://linktr.ee/caesarmario_"> here </a>_
