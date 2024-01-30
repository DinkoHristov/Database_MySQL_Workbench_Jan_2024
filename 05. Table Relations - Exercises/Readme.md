##
# Exercises: Table Relations

This document defines the **exercise assignments** for the [MySQL course @ Software University.](https://softuni.bg/opencourses/databases-basics-mysql)

Please submit your solutions (source code) to all the below-described problems in [Judge](https://judge.softuni.org/Contests/605/Table-Relations-Exercise).

1.
## One-To-One Relationship

Create two tables as follows. Use appropriate data types.

| **people** |
| --- |
| **person\_id** | **first\_name** | **salary** | **passport\_id** |
| 1 | Roberto | 43300.00 | 102 |
| 2 | Tom | 56100.00 | 103 |
| 3 | Yana | 60200.00 | 101 |

| **passports** |
| --- |
| **passport\_id** | **passport\_number** |
| 101 | N34FG21B |
| 102 | K65LO4R7 |
| 103 | ZE657QP2 |


**Insert the data from the example above.**

- Alter table **people** and make **person\_id** a **primary key**.
- Create a **foreign key** between **people** and **passports** by using the **passport\_id** column.
- Think about which passport field should be **UNIQUE**.
- Format salary to **second** digit after decimal point.

Submit your queries by using " **MySQL run queries & check DB**" strategy **.**

1.
## One-To-Many Relationship

Create two tables as follows. Use appropriate data types.

| **manufacturers** |
| --- |
| **manufacturer\_id** | **name** | **established\_on** |
| 1 | BMW | 01/03/1916 |
| 2 | Tesla | 01/01/2003 |
| 3 | Lada | 01/05/1966 |

| **models** |
| --- |
| **model\_id** | **name** | **manufacturer\_id** |
| 101 | X1 | 1 |
| 102 | i6 | 1 |
| 103 | Model S | 2 |
| 104 | Model X | 2 |
| 105 | Model 3 | 2 |
| 106 | Nova | 3 |


**Insert the data from the example above.**

- Add primary and foreign keys.

Submit your queries by using " **MySQL run queries & check DB"** strategy.

1.
## Many-To-Many Relationship

Create three tables as follows. Use appropriate data types.

| **exams** |
| --- |
| **exam\_id** | **name** |
| 101 | Spring MVC |
| 102 | Neo4j |
| 103 | Oracle 11g |

| **students** |
| --- |
| **student\_id** | **name** |
| 1 | Mila |
| 2 | Toni |
| 3 | Ron |


| **students\_exams** |
| --- |
| **student\_id** | **exam\_id** |
| 1 | 101 |
| 1 | 102 |
| 2 | 101 |
| 3 | 103 |
| 2 | 102 |
| 2 | 103 |


**Insert the data from the example above.**

- Add primary and foreign keys.
- Have in mind that the table **student\_exams** should have a

**composite** primary key.

Submit your queries by using " **MySQL run queries & check DB**" strategy **.**

1.
## Self-Referencing

Create a single table as follows. Use appropriate data types.

| **teachers** |
| --- |
| **teacher\_id** | **name** | **manager\_id** |
| 101 | John |
 |
| 102 | Maya | 106 |
| 103 | Silvia | 106 |
| 104 | Ted | 105 |
| 105 | Mark | 101 |
| 106 | Greta | 101 |

**Insert the data from the example above.**

- Add primary and foreign keys.
- The foreign key should be between **manager\_id** and **teacher\_id**.

Submit your queries by using " **MySQL run queries & check DB**" strategy **.**

1.
## Online Store Database

Create a new database and design the following structure:

![](RackMultipart20240122-1-t2zuis_html_df3b7448ade7e334.jpg)

Submit your queries by using " **MySQL run queries & check DB"** strategy **.**

1.
## University Database

Create a new database and design the following structure: ![](RackMultipart20240122-1-t2zuis_html_8d01b55af6e2aa27.jpg)

Submit your queries by using " **MySQL run queries & check DB**" strategy.

1.
## SoftUni Design

Create an E/R Diagram of the SoftUni Database. There are some special relations you should check out: **employees** are **self-referenced**** (manager\_id) **and** departments **have** One-to-One **with the** employees****(manager\_id)** while the **employees** have **One-to-Many** ( **department\_id** ). You might find it interesting how it looks on à diagram. ?

1.
## Geography Design

Create an E/R Diagram of the Geography Database.

1.
## Peaks in Rila

Display all peaks for " **Rila**" **mountain\_range**. Include:

- **mountain\_range**
- **peak\_name**
- **peak\_elevation**

Peaks should be sorted by **peak\_elevation** descending.

### Example

| **mountain\_range** | **peak\_name** | **peak\_elevation** |
| --- | --- | --- |
| Rila | Musala | 2925 |
| … | … | … |

Submit your queries by using " **MySQL prepare DB & run queries**" strategy.

![Shape3](RackMultipart20240122-1-t2zuis_html_6f222e41d7629786.gif) ![Shape2](RackMultipart20240122-1-t2zuis_html_5f0f2ddacbac70d2.gif) ![Shape1](RackMultipart20240122-1-t2zuis_html_51bd00be29b85496.gif) ![Shape4](RackMultipart20240122-1-t2zuis_html_f746d52952cd7e91.gif)[![](RackMultipart20240122-1-t2zuis_html_3aa486326bfa75e9.png)](https://softuni.org/)

Follow us:

© SoftUni – [about.softuni.bg](https://about.softuni.bg/). Copyrighted document. Unauthorized copy, reproduction or use is not permitted.

[![](RackMultipart20240122-1-t2zuis_html_9b17934bfedeb713.png)](https://softuni.org/)[![](RackMultipart20240122-1-t2zuis_html_c9db196993f48ff8.png)](https://softuni.bg/)[![Software University @ Facebook](RackMultipart20240122-1-t2zuis_html_94be3df36d913358.png)](https://www.facebook.com/softuni.org)[![](RackMultipart20240122-1-t2zuis_html_7e8e605369b4ad74.png)](https://www.instagram.com/softuni_org)[![Software University @ Twitter](RackMultipart20240122-1-t2zuis_html_ff9c629b0a21eb6b.png)](https://twitter.com/SoftUni1)[![Software University @ YouTube](RackMultipart20240122-1-t2zuis_html_7db86a748da0e575.png)](https://www.youtube.com/channel/UCqvOk8tYzfRS-eDy4vs3UyA)[![](RackMultipart20240122-1-t2zuis_html_95554caa563bbdb3.png)](https://www.linkedin.com/company/softuni/)[![](RackMultipart20240122-1-t2zuis_html_4df51bfadcab813.png)](https://github.com/SoftUni)[![Software University: Email Us](RackMultipart20240122-1-t2zuis_html_d7fa82ab7332f3fa.png)](mailto:info@softuni.org)

Page 2 of 2