# Requirements Analysis

## Concept
### Steps
* User interviews
* System documentation

### Conceptual Design
* Uses a high-level data model
* Concisely describes user needs
* Includes detailed descriptions of data types, relationships, and constraints
* Easy to understand

### Mapping to Implementation Model
Translation of the conceptual schema into an implementation language.

### Physical Design
* Specification of internal storage structures
* Specification of file organization for DB

## Project
1. Understand the real-world domain being captured
2. Specify using a database design model
3. Translate specification to DBMS model
4. Create schema using DBMS commands (DDL)
5. Load data

## Requirements Elicitation

### Client Demand
For samba school championships, it is necessary to analyze what data needs to be stored and maintain database integrity. Therefore, create a data sheet to elaborate on requirements elicitation.

### Requirements

#### Sambadromes
Each sambadrome has a specific address, inauguration date, a set of founder names, and more. Additionally, sambadromes are divided into various sectors, each with specific characteristics and corresponding prices. Examples of sectors include simple grandstands, covered grandstands, simple cabins, special cabins.

#### Championships
State championships are held annually in São Paulo and Rio de Janeiro. Each championship divides schools into two groups: access group and special group. The groups are judged separately, and a samba school is elected champion of each group. For each championship registered in the system, information such as the year of realization, start and end dates, judges, regulations, etc., must be stored.

#### Schools
For schools, information such as full name, trade name, representative colors, headquarters address, etc., should be stored. Additionally, for each championship in which the samba school participates, the theme, date of the school's parade, start and end times of the parade, participants in that parade, and the duration of the parade should be stored.

#### Judges
Detailed information about personal data should be stored for judges. Additionally, store the main activity of the judge. Each judge participates in one day of parades and judges only one criterion for all participating schools on that day. Examples of criteria judged by judges are drum section, harmony, and samba theme.

#### Participants
Detailed information about personal data should be stored for participants from schools.

#### Spectators
Detailed information about personal data should be stored for spectators. Additionally, store the date they attended the carnival, the ticket price paid, and the sambadrome sector where they were seated.

## Logical Model: Entity-Relationship Model

An abstract representation commonly used to structure the database. Creating an ER model is the first step in building a relational database. Anticipating data resources and how they interrelate are encoded in an ER model. The ER model is then used to create a relational schema for the database, which in turn is used to build the database itself.

<p align="center">
    <img src="/image/ER.svg">
    Figure 1: Entity-Relationship Model
</p>

## Normalization and Mapping

Normalization is a process where rules are applied to all database tables with the aim of avoiding design flaws, such as data redundancy and mixing different subjects in the same table.

<p align="center">
    <img src="/image/mape.png">
    Figure 2: Mapping
</p>

## Relational Model

<p align="center">
    <img src="/image/diagram.png">
    Figure 3: Relational Model
</p>

## Database: MySQL

### Example Queries Resolved by the Database
* Parade order in championship X (X is a user parameter)

<p align="center">
    <img src="/image/paradeOrde.png"> <br>
    Figure 4: Parade Order
</p>

<p align="center">
    <img src="/image/resultadoOrdemDesfile.png"> <br>
    Figure 5: Result: Parade Order
</p>

* List the names of all people who attended championship X in sector Y (X and Y are user parameters).

<p align="center">
    <img src="/image/championPeople.png"> <br>
    Figure 6: Attended Championship
</p>

<p align="center">
    <img src="/image/resultadoPessoasAssitem.png"> <br>
    Figure 7: Result: Attended Championship
</p>

* Duration of parade in championship

<p align="center"> 
    <img src="/image/paradeTime.png"> <br>
    Figure 8: Parade Duration
</p>

<p align="center">
    <img src="/image/resultadoTempo.png"> <br>
    Figure 9: Result: Parade Duration
</p>

* Capacity of Sambadrome

<p align="center">
    <img src="/image/capacity.png"> <br>
    Figure 10 Sambadrome Capacity
</p>

<p align="center">
    <img src="/image/resultadoCapacidade.png"> <br>
    Figure 11: Result: Sambadrome Capacity
</p>

## Tools
- [Database Workbench](https://mariadb.com/kb/en/database-workbench/) with [MariaDB](https://mariadb.org/download/)
- [Overleaf](https://www.overleaf.com/)
- [LibreOffice](https://www.libreoffice.org/)
- [Dia Diagram Editor](http://dia-installer.de/)

## References
ELMASRI, Ramez et al. Sistemas de banco de dados. 2005.
