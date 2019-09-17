INSERT INTO ZIPCODE (Zip, City, States)
VALUES (7024,'Ft. Lee','NJ'), (7047,'North Bergen','NJ'),(10005,'New York','NY'), (10015,'New York','NY'), (10025,'New York','NY'),
(10035,'New York','NY'), (11419,'Richmond Hill','NY'), (11435,'Jamaica','NY');

INSERT INTO INSTRUCTOR (Instructor_ID, Salutation, First_Name, Last_Name, Street_address, Zip)
VALUES (101,'Mr','Fernand','Hanks','100 East 87th',10015), (102,'Mr','Tom','Wojick','518 West 120th',10025), (103,'Ms','Nina','Schorin','210 West 101st',10025),
(104,'Mr','Gary','Pertez','34 Sixth Ave',10035), (105,'Ms','Anita','Morris','34 Maiden Lane',10015), (106,'Rev','Todd','Smythe','210 West 101st',10025),
(107,'Dr','Marilyn','Frantzen','254 Bleeker',10005);

INSERT INTO STUDENT (Student_ID, Description, Salutation, First_Name, Last_Name, Street_address, Zip, Employer, Registration_Date)
VALUES (102,'Mr.','Fred','Crocitto','101-09 120th St.',718-555-5555,'Albert Hildegard Co.',1/22/2007,11419), (103,'Ms.','J.','Landry','7435 Boulevard East #45',201-555-5555,'Albert Hildegard Co.',1/22/2007,7047),
(104,'Ms.','Laetia','Enison','144-61 87th Ave',718-555-5555,'Albert Hildegard Co.',1/22/2007,11435), (105,'Mr.','Angel','Moskowitz','320 John St.',201-555-5555,'Alex. & Alexander',1/22/2007,7024),
(163,'Ms.','Nicole','Gillen','4301 N Ocean #103',904-555-5555,'Oil of America Corp.',2/2/2007,10025), (223,'Mr.','Frank','Pace','13 Burlington Dr.',203-555-5555,'Board Utilities',2/8/2007,10025),
(399,'Mr.','Jerry','Abdou','460 15th St. #4',718-555-5555,'Health Mgmt.Systems',2/23/2007,10025);

INSERT INTO COURSE (Course_ID, Description, Cost, Prerequisite)
VALUES (330,'Network Administration',1195,130), (310,'Operating Systems',1195,NULL), (142,'Project Management',1195,20),
(140,'Systems Analysis',1195,20), (130,'Intro to Unix',1195,310), (25,'Intro to Programming',1195,140), (20,'Intro to Information Systems',1195,NULL);

INSERT INTO SECTIONS (Section_ID, Course_ID, Course_Section_Num, Start_Date_Time, Location, Instructor_ID)
VALUES ('81','20','2','7/24/2007 9:30','L210','103'), ('86','25','2','6/10/2007 9:30','L210','107'), ('89','25','5','5/15/2007 9:30','L509','103'),
('92','25','8','6/13/2007 9:30','L509','106'), ('104','330','1','7/14/2007 10:30','L511','104'), ('119','142','1','7/14/2007 9:30','L211','103'),
('155','122','4','5/4/2007 9:30','L210','107');

INSERT INTO ENROLLMENT (Student_ID, Section_ID, Enroll_Date, Final_Grade)
VALUES (102,86,1/30/2007,'B'), (102,89,1/30/2007,'A'), (103,81,1/30/2007,NULL), (104,81,1/30/2007,'A'),
(163,92,2/10/2007,NULL), (223,104,2/16/2007,'C'), (223,119,2/16/2007,NULL);
