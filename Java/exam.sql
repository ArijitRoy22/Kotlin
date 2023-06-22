-- Question01
create table employees1 (
    EMPLOYEE_ID int,
    FIRST_NAME VARCHAR2(20),
    LAST_NAME VARCHAR2(20),
    EMAIL VARCHAR2(30),
    PHONE_NUMBER int,
    HIRE_DATE date,
    JOB_ID varchar2(10),
    SALARY int,
    COMMISSION_PCT float,
    MANAGER_ID int,
    DEPARTMENT_ID int
);
create table departments1(
    DEPARTMENT_ID int,
    DEPARTMENT_NAME VARCHAR2(20),
    MANAGER_ID int,
    LOCATION_ID int
);
create table countries1(
    COUNTRY_ID VARCHAR2(2),
    COUNTRY_NAME VARCHAR2(20),
    REGION_ID int
);
create table JOB1(
    JOB_ID VARCHAR2(20),
    JOB_TITLE VARCHAR2(40),
    MIN_SALARY int,
    MAX_SALARY int
);
CREATE TABLE JOB_HISTORY1(
    EMPLOYEE_ID int,
    START_DATE VARCHAR2(20),
    END_DATE VARCHAR2(20),
    JOB_ID VARCHAR2(20),
    DEPARTMENT_ID int
);
drop table regions1;
create table LOCATIONS1(
    LOCATION_ID int,
    STREET_ADDRESS VARCHAR2(30),
    POSTAL_CODE VARCHAR2(20),
    CITY VARCHAR2(20),
    STATE_PROVINCE VARCHAR2(20),
    COUNTRY_ID VARCHAR2(2)
);
create table REGIONS1(
    REGION_ID int,
    REGION_NAME VARCHAR2(40)
);
alter table job1
modify JOB_TITLE VARCHAR2(40);

delete from EMPLOYEES1 where EMPLOYEE_ID=100;
-- Question02
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(100,'Steven','King','SKING','515.123.4567','06/17/03','AD_PRES',24000,null,null,90);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(101,'Neena','Kochhar','NKOCHHAR','515.123.4568','09/21/05','AD_VP',17000,null,100,90);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(102,'Lex','De Haan','LDEHAAN','515.123.4569','01/13/01','AD_VP',17000,null,100,90);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(103,'Alexander','Hunold','AHUNOLD','590.423.4567','01/03/06','IT_PROG',9000,null,102,60);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(104,'Bruce','Ernst','BERNST','590.423.4568','05/21/07','IT_PROG',6000,null,103,60);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(105,'David','Austin','DAUSTIN','590.423.4569','06/25/05','IT_PROG',4800,null,103,60);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(106,'Valli','Pataballa','VPATABAL','590.423.4560','02/05/06','IT_PROG',4800,null,103,60);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(107,'Diana','Lorentz','DLORENTZ','590.423.5567','02/07/07','IT_PROG',4200,null,103,60);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(108,'Nancy','Greenberg','NGREENBE','515.124.4569','08/17/02','FI_MGR',12008,null,101,100);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(109,'Daniel','Faviet','DFAVIET','515.124.4169','08/16/02','FI_ACCOUNT',9000,null,108,100);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(110,'John','Chen','JCHEN','515.124.4269','09/28/05','FI_ACCOUNT',8200,null,108,100);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(111,'Ismael','Sciarra','ISCIARRA','515.124.4369','09/30/05','FI_ACCOUNT',7700,null,108,100);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(112,'Jose Manuel','Urman','JMURMAN','515.124.4469','03/07/06','FI_ACCOUNT',7800,null,108,100);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(113,'Luis','Popp','LPOPP','515.124.4567','12/07/07','FI_ACCOUNT',6900,null,108,100);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(114,'Den','Raphaely','DRAPHEAL','515.127.4561','12/07/02','PU_MAN',11000,null,100,30);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(115,'Alexander','Khoo','AKHOO','515.127.4562','05/18/03','PU_CLERK',3100,null,114,30);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(116,'Shelli','Baida','SBAIDA','515.127.4563','12/24/05','PU_CLERK',2900,null,114,30);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(117,'Sigal','Tobias','STOBIAS','515.127.4564','07/24/05','PU_CLERK',2800,null,114,30);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(118,'Guy','Himuro','GHIMURO','515.127.4565','11/15/06','PU_CLERK',2600,null,114,30);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(119,'Karen','Colmenares','KCOLMENA','515.127.4566','08/10/07','PU_CLERK',2500,null,114,30);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(120,'Matthew','Weiss','MWEISS','650.123.1234','07/18/04','ST_MAN',8000,null,100,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(121,'Adam','Fripp','AFRIPP','650.123.2234','04/10/05','ST_MAN',8200,null,100,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(122,'Payam','Kaufling','PKAUFLIN','650.123.3234','05/01/03','ST_MAN',7900,null,100,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(123,'Shanta','Vollman','SVOLLMAN','650.123.4234','10/10/05','ST_MAN',6500,null,100,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(124,'Kevin','Mourgos','KMOURGOS','650.123.5234','11/16/07','ST_MAN',5800,null,100,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(125,'Julia','Nayer','JNAYER','650.124.1214','07/16/05','ST_CLERK',3200,null,120,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(126,'Irene','Mikkilineni','IMIKKILI','650.124.1224','09/28/06','ST_CLERK',2700,null,120,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(127,'James','Landry','JLANDRY','650.124.1334','01/14/07','ST_CLERK',2400,null,120,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(128,'Steven','Markle','SMARKLE','650.124.1434','03/08/08','ST_CLERK',2200,null,120,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(129,'Laura','Bissot','LBISSOT','650.124.5234','08/20/05','ST_CLERK',3300,null,121,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(130,'Mozhe','Atkinson','MATKINSO','650.124.6234','10/30/05','ST_CLERK',2800,null,121,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(131,'James','Marlow','JAMRLOW','650.124.7234','02/16/05','ST_CLERK',2500,null,121,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(132,'TJ','Olson','TJOLSON','650.124.8234','04/10/07','ST_CLERK',2100,null,121,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(133,'Jason','Mallin','JMALLIN','650.127.1934','06/14/04','ST_CLERK',3300,null,122,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(134,'Michael','Rogers','MROGERS','650.127.1834','08/26/06','ST_CLERK',2900,null,122,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(135,'Ki','Gee','KGEE','650.127.1734','12/12/07','ST_CLERK',2400,null,122,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(136,'Hazel','Philtanker','HPHILTAN','650.127.1634','02/06/08','ST_CLERK',2200,null,122,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(137,'Renske','Ladwig','RLADWIG','650.121.1234','07/14/03','ST_CLERK',3600,null,123,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(138,'Stephen','Stiles','SSTILES','650.121.2034','10/26/05','ST_CLERK',3200,null,123,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(139,'John','Seo','JSEO','650.121.2019','02/12/06','ST_CLERK',2700,null,123,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(140,'Joshua','Patel','JPATEL','650.121.1834','04/06/06','ST_CLERK',2500,null,123,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(141,'Trenna','Rajs','TRAJS','650.121.8009','10/17/03','ST_CLERK',3500,null,124,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(142,'Curtis','Davies','CDAVIES','650.121.2994','01/29/05','ST_CLERK',3100,null,124,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(143,'Randall','Matos','RMATOS','650.121.2874','03/15/06','ST_CLERK',2600,null,124,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(144,'Peter','Vargas','PVARGAS','650.121.2004','07/09/06','ST_CLERK',2500,null,124,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(145,'John','Russell','JRUSSEL','011.44.1344.429268','10/01/04','SA_MAN',14000,0.4,100,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(146,'Karen','Partners','KPARTNER','011.44.1344.467268','01/05/05','SA_MAN',13500,0.3,100,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(147,'Alberto','Errazuriz','AERRAZUR','011.44.1344.429278','03/10/05','SA_MAN',12000,0.3,100,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(148,'Gerald','Cambrault','GCAMBRAU','011.44.1344.619268','10/15/07','SA_MAN',11000,0.3,100,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(149,'Eleni','Zlotkey','EZLOTKEY','011.44.1344.429018','01/29/08','SA_MAN',10500,0.2,100,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(150,'Peter','Tucker','PTUCKER','011.44.1344.129268','01/30/05','SA_REP',10000,0.3,145,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(151,'David','Bernstein','DBERNSTE','011.44.1344.345268','03/24/05','SA_REP',9500,0.25,145,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(152,'Peter','Hall','PHALL','011.44.1344.478968','08/20/05','SA_REP',9000,0.25,145,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(153,'Christopher','Olsen','COLSEN','011.44.1344.498718','03/30/06','SA_REP',8000,0.2,145,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(154,'Nanette','Cambrault','NCAMBRAU','011.44.1344.987668','12/09/06','SA_REP',7500,0.2,145,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(155,'Oliver','Tuvault','OTUVAULT','011.44.1344.486508','11/23/07','SA_REP',7000,0.15,145,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(156,'Janette','King','JKING','011.44.1345.429268','01/30/04','SA_REP',10000,0.35,146,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(157,'Patrick','Sully','PSULLY','011.44.1345.929268','03/04/04','SA_REP',9500,0.35,146,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(158,'Allan','McEwen','AMCEWEN','011.44.1345.829268','08/01/04','SA_REP',9000,0.35,146,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(159,'Lindsey','Smith','LSMITH','011.44.1345.729268','03/10/05','SA_REP',8000,0.3,146,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(160,'Louise','Doran','LDORAN','011.44.1345.629268','12/15/05','SA_REP',7500,0.3,146,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(161,'Sarath','Sewall','SSEWALL','011.44.1345.529268','11/03/06','SA_REP',7000,0.25,146,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(162,'Clara','Vishney','CVISHNEY','011.44.1346.129268','11/11/05','SA_REP',10500,0.25,147,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(163,'Danielle','Greene','DGREENE','011.44.1346.229268','03/19/07','SA_REP',9500,0.15,147,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(164,'Mattea','Marvins','MMARVINS','011.44.1346.329268','01/24/08','SA_REP',7200,0.1,147,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(165,'David','Lee','DLEE','011.44.1346.529268','02/23/08','SA_REP',6800,0.1,147,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(166,'Sundar','Ande','SANDE','011.44.1346.629268','03/24/08','SA_REP',6400,0.1,147,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(167,'Amit','Banda','ABANDA','011.44.1346.729268','04/21/08','SA_REP',6200,0.1,147,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(168,'Lisa','Ozer','LOZER','011.44.1343.929268','03/11/05','SA_REP',11500,0.25,148,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(169,'Harrison','Bloom','HBLOOM','011.44.1343.829268','03/23/06','SA_REP',10000,0.2,148,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(170,'Tayler','Fox','TFOX','011.44.1343.729268','01/24/06','SA_REP',9600,0.2,148,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(171,'William','Smith','WSMITH','011.44.1343.629268','02/23/07','SA_REP',7400,0.15,148,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(172,'Elizabeth','Bates','EBATES','011.44.1343.529268','03/24/07','SA_REP',7300,0.15,148,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(173,'Sundita','Kumar','SKUMAR','011.44.1343.329268','04/21/08','SA_REP',6100,0.1,148,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(174,'Ellen','Abel','EABEL','011.44.1644.429267','05/11/04','SA_REP',11000,0.3,149,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(175,'Alyssa','Hutton','AHUTTON','011.44.1644.429266','03/19/05','SA_REP',8800,0.25,149,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(176,'Jonathon','Taylor','JTAYLOR','011.44.1644.429265','03/24/06','SA_REP',8600,0.2,149,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(177,'Jack','Livingston','JLIVINGS','011.44.1644.429264','04/23/06','SA_REP',8400,0.2,149,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(178,'Kimberely','Grant','KGRANT','011.44.1644.429263','05/24/07','SA_REP',7000,0.15,149,null);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(179,'Charles','Johnson','CJOHNSON','011.44.1644.429262','01/04/08','SA_REP',6200,0.1,149,80);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(180,'Winston','Taylor','WTAYLOR','650.507.9876','01/24/06','SH_CLERK',3200,null,120,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(181,'Jean','Fleaur','JFLEAUR','650.507.9877','02/23/06','SH_CLERK',3100,null,120,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(182,'Martha','Sullivan','MSULLIVA','650.507.9878','06/21/07','SH_CLERK',2500,null,120,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(183,'Girard','Geoni','GGEONI','650.507.9879','02/03/08','SH_CLERK',2800,null,120,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(184,'Nandita','Sarchand','NSARCHAN','650.509.1876','01/27/04','SH_CLERK',4200,null,121,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(185,'Alexis','Bull','ABULL','650.509.2876','02/20/05','SH_CLERK',4100,null,121,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(186,'Julia','Dellinger','JDELLING','650.509.3876','06/24/06','SH_CLERK',3400,null,121,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(187,'Anthony','Cabrio','ACABRIO','650.509.4876','02/07/07','SH_CLERK',3000,null,121,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(188,'Kelly','Chung','KCHUNG','650.505.1876','06/14/05','SH_CLERK',3800,null,122,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(189,'Jennifer','Dilly','JDILLY','650.505.2876','08/13/05','SH_CLERK',3600,null,122,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(190,'Timothy','Gates','TGATES','650.505.3876','07/11/06','SH_CLERK',2900,null,122,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(191,'Randall','Perkins','RPERKINS','650.505.4876','12/19/07','SH_CLERK',2500,null,122,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(192,'Sarah','Bell','SBELL','650.501.1876','02/04/04','SH_CLERK',4000,null,123,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(193,'Britney','Everett','BEVERETT','650.501.2876','03/03/05','SH_CLERK',3900,null,123,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(194,'Samuel','McCain','SMCCAIN','650.501.3876','07/01/06','SH_CLERK',3200,null,123,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(195,'Vance','Jones','VJONES','650.501.4876','03/17/07','SH_CLERK',2800,null,123,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(196,'Alana','Walsh','AWALSH','650.507.9811','04/24/06','SH_CLERK',3100,null,124,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(197,'Kevin','Feeney','KFEENEY','650.507.9822','05/23/06','SH_CLERK',3000,null,124,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(198,'Donald','OConnell','DOCONNEL','650.507.9833','06/21/07','SH_CLERK',2600,null,124,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(199,'Douglas','Grant','DGRANT','650.507.9844','01/13/08','SH_CLERK',2600,null,124,50);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(200,'Jennifer','Whalen','JWHALEN','515.123.4444','09/17/03','AD_ASST',4400,null,101,10);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(201,'Michael','Hartstein','MHARTSTE','515.123.5555','02/17/04','MK_MAN',13000,null,100,20);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(202,'Pat','Fay','PFAY','603.123.6666','08/17/05','MK_REP',6000,null,201,20);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(203,'Susan','Mavris','SMAVRIS','515.123.7777','06/07/02','HR_REP',6500,null,101,40);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(204,'Hermann','Baer','HBAER','515.123.8888','06/07/02','PR_REP',10000,null,101,70);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(205,'Shelley','Higgins','SHIGGINS','515.123.8080','06/07/02','AC_MGR',12008,null,101,110);
insert into employees1(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,EMAIL,PHONE_NUMBER,HIRE_DATE,JOB_ID,SALARY,COMMISSION_PCT,MANAGER_ID,DEPARTMENT_ID)values(206,'William','Gietz','WGIETZ','515.123.8181','06/07/02','AC_ACCOUNT',8300,null,205,110);

insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(10,'Administration',200,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(20,'Marketing',201,1800);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(30,'Purchasing',114,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(40,'Human Resources',203,2400);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(50,'Shipping',121,1500);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(60,'IT',103,1400);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(70,'Public Relations',204,2700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(80,'Sales',145,2500);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(90,'Executive',100,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(100,'Finance',108,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(110,'Accounting',205,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(120,'Treasury',null,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(130,'Corporate Tax',null,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(140,'Control And Credit',null,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(150,'Shareholder Services',null,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(160,'Benefits',null,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(170,'Manufacturing',null,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(180,'Construction',null,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(190,'Contracting',null,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(200,'Operations',null,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(210,'IT Support',null,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(220,'NOC',null,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(230,'IT Helpdesk',null,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(240,'Government Sales',null,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(250,'Retail Sales',null,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(260,'Recruiting',null,1700);
insert into departments1(DEPARTMENT_ID,DEPARTMENT_NAME,MANAGER_ID,LOCATION_ID)values(270,'Payroll',null,1700);

insert into countries1(country_id,country_name,region_id)values('AR','Argentina',2);
insert into countries1(country_id,country_name,region_id)values('AU','Australia',3);
insert into countries1(country_id,country_name,region_id)values('BE','Belgium',1);
insert into countries1(country_id,country_name,region_id)values('BR','Brazil',2);
insert into countries1(country_id,country_name,region_id)values('CA','Canada',2);
insert into countries1(country_id,country_name,region_id)values('CH','Switzerland',1);
insert into countries1(country_id,country_name,region_id)values('CN','China',3);
insert into countries1(country_id,country_name,region_id)values('DE','Germany',1);
insert into countries1(country_id,country_name,region_id)values('DK','Denmark',1);
insert into countries1(country_id,country_name,region_id)values('EG','Egypt',4);
insert into countries1(country_id,country_name,region_id)values('FR','France',1);
insert into countries1(country_id,country_name,region_id)values('IL','Israel',4);
insert into countries1(country_id,country_name,region_id)values('IN','India',3);
insert into countries1(country_id,country_name,region_id)values('IT','Italy',1);
insert into countries1(country_id,country_name,region_id)values('JP','Japan',3);
insert into countries1(country_id,country_name,region_id)values('KW','Kuwait',4);
insert into countries1(country_id,country_name,region_id)values('ML','Malaysia',3);
insert into countries1(country_id,country_name,region_id)values('MX','Mexico',2);
insert into countries1(country_id,country_name,region_id)values('NG','Nigeria',4);
insert into countries1(country_id,country_name,region_id)values('NL','Netherlands',1);
insert into countries1(country_id,country_name,region_id)values('SG','Singapore',3);
insert into countries1(country_id,country_name,region_id)values('UK','United Kingdom',1);
insert into countries1(country_id,country_name,region_id)values('US','United States of America',2);
insert into countries1(country_id,country_name,region_id)values('ZM','Zambia',4);
insert into countries1(country_id,country_name,region_id)values('ZW','Zimbabwe',4);

insert into job1(job_id,job_title,min_salary,max_salary)values('AD_PRES','President',20080,40000);
insert into job1(job_id,job_title,min_salary,max_salary)values('AD_VP','Administration Vice President',15000,30000);
insert into job1(job_id,job_title,min_salary,max_salary)values('AD_ASST','Administration Assistant',3000,6000);
insert into job1(job_id,job_title,min_salary,max_salary)values('FI_MGR','Finance Manager',8200,16000);
insert into job1(job_id,job_title,min_salary,max_salary)values('FI_ACCOUNT','Accountant',4200,9000);
insert into job1(job_id,job_title,min_salary,max_salary)values('AC_MGR','Accounting Manager',8200,16000);
insert into job1(job_id,job_title,min_salary,max_salary)values('AC_ACCOUNT','Public Accountant',4200,9000);
insert into job1(job_id,job_title,min_salary,max_salary)values('SA_MAN','Sales Manager',10000,20080);
insert into job1(job_id,job_title,min_salary,max_salary)values('SA_REP','Sales Representative',6000,12008);
insert into job1(job_id,job_title,min_salary,max_salary)values('PU_MAN','Purchasing Manager',8000,15000);
insert into job1(job_id,job_title,min_salary,max_salary)values('PU_CLERK','Purchasing Clerk',2500,5500);
insert into job1(job_id,job_title,min_salary,max_salary)values('ST_MAN','Stock Manager',5500,8500);
insert into job1(job_id,job_title,min_salary,max_salary)values('ST_CLERK','Stock Clerk',2008,5000);
insert into job1(job_id,job_title,min_salary,max_salary)values('SH_CLERK','Shipping Clerk',2500,5500);
insert into job1(job_id,job_title,min_salary,max_salary)values('IT_PROG','Programmer',4000,10000);
insert into job1(job_id,job_title,min_salary,max_salary)values('MK_MAN','Marketing Manager',9000,15000);
insert into job1(job_id,job_title,min_salary,max_salary)values('MK_REP','Marketing Representative',4000,9000);
insert into job1(job_id,job_title,min_salary,max_salary)values('HR_REP','Human Resources Representative',4000,9000);
insert into job1(job_id,job_title,min_salary,max_salary)values('PR_REP','Public Relations Representative',4500,10500);

drop table job1;

insert into job_history1(employee_id,start_date,end_date,job_id,department_id)values(102,'1/13/2001','07/24/06','IT_PROG',60);
insert into job_history1(employee_id,start_date,end_date,job_id,department_id)values(101,'9/21/1997','10/27/01','AC_ACCOUNT',110);
insert into job_history1(employee_id,start_date,end_date,job_id,department_id)values(101,'10/28/2001','03/15/05','AC_MGR',110);
insert into job_history1(employee_id,start_date,end_date,job_id,department_id)values(201,'2/17/2004','12/19/07','MK_REP',20);
insert into job_history1(employee_id,start_date,end_date,job_id,department_id)values(114,'3/24/2006','12/31/07','ST_CLERK',50);
insert into job_history1(employee_id,start_date,end_date,job_id,department_id)values(122,'1/1/2007','12/31/07','ST_CLERK',50);
insert into job_history1(employee_id,start_date,end_date,job_id,department_id)values(200,'9/17/1995','06/17/01','AD_ASST',90);
insert into job_history1(employee_id,start_date,end_date,job_id,department_id)values(176,'3/24/2006','12/31/06','SA_REP',80);
insert into job_history1(employee_id,start_date,end_date,job_id,department_id)values(176,'1/1/2007','12/31/07','SA_MAN',80);
insert into job_history1(employee_id,start_date,end_date,job_id,department_id)values(200,'7/1/2002','12/31/06','AC_ACCOUNT',90);

insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(1000,'1297 Via Cola di Rie','989','Roma','','IT');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(1100,'93091 Calle della Testa','10934','Venice','','IT');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(1200,'2017 Shinjuku-ku','1689','Tokyo','Tokyo Prefecture','JP');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(1300,'9450 Kamiya-cho','6823','Hiroshima','','JP');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(1400,'2014 Jabberwocky Rd','26192','Southlake','Texas','US');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(1500,'2011 Interiors Blvd','99236','South San Francisco','California','US');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(1600,'2007 Zagora St','50090','South Brunswick','New Jersey','US');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(1700,'2004 Charade Rd','98199','Seattle','Washington','US');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(1800,'147 Spadina Ave','M5V 2L7','Toronto','Ontario','CA');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(1900,'6092 Boxwood St','YSW 9T2','Whitehorse','Yukon','CA');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(2000,'40-5-12 Laogianggen','190518','Beijing','','CN');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(2100,'1298 Vileparle (E)','490231','Bombay','Maharashtra','IN');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(2200,'12-98 Victoria Street','2901','Sydney','New South Wales','AU');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(2300,'198 Clementi North','540198','Singapore','','SG');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(2400,'8204 Arthur St','','London','','UK');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(2500,'Magdalen Centre, The Oxford Science Park','OX9 9ZB','Oxford','Oxford','UK');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(2600,'9702 Chester Road','9629850293','Stretford','Manchester','UK');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(2700,'Schwanthalerstr. 7031','80925','Munich','Bavaria','DE');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(2800,'Rua Frei Caneca 1360 ','01307-002','Sao Paulo','Sao Paulo','BR');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(2900,'20 Rue des Corps-Saints','1730','Geneva','Geneve','CH');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(3000,'Murtenstrasse 921','3095','Bern','BE','CH');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(3100,'Pieter Breughelstraat 837','3029SK','Utrecht','Utrecht','NL');
insert into locations1(location_id,street_address,postal_code,city,state_province,country_id)values(3200,'Mariano Escobedo 9991','11932','Mexico City','Distrito Federal,','MX');

insert into regions1(region_id,region_name)values(1,'Europe');
insert into regions1(region_id,region_name)values(2,'Americas');
insert into regions1(region_id,region_name)values(3,'Asia');
insert into regions1(region_id,region_name)values(4,'Middle East and Africa');

select * from regions1;
select * from locations1;
select * from job1;
select * from job_history1;
select * from employees1;
select * from countries1;
select * from departments1;
-- Question03
select EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID from EMPLOYEES1 WHERE FIRST_NAME like 'S%';
-- Question04
select DISTINCT JOB_ID from EMPLOYEES1;
-- Question05
select count(EMPLOYEE_ID) as Total_no_employees
from EMPLOYEES1;
-- Question06
select FIRST_NAME,LAST_NAME, SALARY FROM EMPLOYEES1 WHERE SALARY<7000;
-- Question07
SELECT JOB_TITLE,
MAX(MAX_SALARY)-min(MIN_SALARY) as Salery_difference
 from JOB1 WHERE MAX_SALARY BETWEEN 11000 and 19000
 GROUP BY JOB_TITLE;
-- Question08
SELECT
    departments1.DEPARTMENT_NAME,
    COUNT(employees1.EMPLOYEE_ID)
FROM
    departments1
    INNER JOIN employees1
    ON departments1.DEPARTMENT_ID=employees1.DEPARTMENT_ID
GROUP BY
    departments1.DEPARTMENT_NAME;
-- Question 09
SELECT
    departments1.DEPARTMENT_NAME,
    COUNT(employees1.EMPLOYEE_ID)
FROM
    departments1
    INNER JOIN employees1
    ON departments1.DEPARTMENT_ID=employees1.DEPARTMENT_ID
HAVING
    COUNT(employees1.EMPLOYEE_ID)<6
GROUP BY
    departments1.DEPARTMENT_NAME;
-- Question 10
CREATE VIEW VIEW_EMPLOYEE AS
    SELECT
        employees1.FIRST_NAME,
        employees1.LAST_NAME,
        departments1.DEPARTMENT_ID AS DEPARMENT_NUMBER,
        departments1.DEPARTMENT_NAME
    FROM
        departments1
        INNER JOIN employees1
        ON departments1.DEPARTMENT_ID=employees1.DEPARTMENT_ID;

SELECT * FROM VIEW_EMPLOYEE;
-- Question 11
CREATE VIEW Test AS
    SELECT employees1.EMPLOYEE_ID, employees1.FIRST_NAME,employees1.LAST_NAME,JOB1.JOB_TITLE, employees1.SALARY, departments1.DEPARTMENT_NAME,LOCATIONS1.STREET_ADDRESS,LOCATIONS1.CITY, COUNTRIES1.COUNTRY_NAME, REGIONS1.REGION_NAME
    FROM
        departments1
        INNER JOIN employees1
        ON departments1.DEPARTMENT_ID=employees1.DEPARTMENT_ID
        INNER JOIN JOB1
        ON JOB1.JOB_ID=employees1.JOB_ID
        INNER JOIN LOCATIONS1
        ON LOCATIONS1.LOCATION_ID=departments1.LOCATION_ID
        INNER JOIN COUNTRIES1
        ON COUNTRIES1.COUNTRY_ID=LOCATIONS1.COUNTRY_ID
        INNER JOIN REGIONS1
        ON REGIONS1.REGION_ID=COUNTRIES1.REGION_ID;

        SELECT * from test;
    
-- Question12
CREATE OR REPLACE PROCEDURE SP_SALARY_INFO ( ID IN INT
) AS FNAME  EMPLOYEES1.FIRST_NAME%TYPE;
    LNAME  EMPLOYEES1.LAST_NAME%TYPE;
    SALARY EMPLOYEES1.SALARY%TYPE;
BEGIN
    SELECT
        FIRST_NAME, LAST_NAME, SALARY INTO FNAME, LNAME,SALARY FROM EMPLOYEES1
        where EMPLOYEES1.EMPLOYEE_ID=ID;
        DBMS_OUTPUT.PUT_LINE('Hi '|| FNAME ||' '|| LNAME || ' your salary is :' || SALARY);
END;
/
exec SP_SALARY_INFO(100);