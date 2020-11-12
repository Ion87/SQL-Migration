INSERT INTO REGIONS
               (REGION_ID, REGION_NAME)
VALUES(1, 'SOROCA');

INSERT INTO COUNTRIES
               (COUNTRY_ID, COUNTRY_NAME,REGION_ID)
VALUES('MD', 'MOLDOVA', 1);

INSERT INTO LOCATIONS
                (LOCATION_ID, STREET_ADDRESS, POSTAL_CODE, CITY, STATE_PROVINCE, COUNTRY_ID)
VALUES(1,'Stefan cel Mic', '1000','Cremenciug', 'Cremenciug', 'MD');

INSERT INTO JOBS
              (JOB_ID, JOB_TITLE, MIN_SALARY, MAX_SALARY)
VALUES(1, 'DEVELOPER', 15000, 17000);

INSERT INTO DEPARTMENTS
              (DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID)
VALUES(1,'PROGRAMING', NULL,1);

INSERT INTO EMPLOYEES
              (EMPLOYEE_ID, FIRST_NAME, LAST_NAME, EMAIL, PHONE_NUMBER, HIRE_DATE, JOB_ID, SALARY, COMMISSION_PCT, MANAGER_ID, DEPARTMENT_ID)
VALUES(1,'Ivan', 'Postolachi', 'ion@mail.ru', '12345678', TO_DATE('2006/10/10','yyyy/mm/dd'),'1' , 15000.00, 0.75, 1, 1);

UPDATE DEPARTMENTS
SET MANAGER_ID = 1;

INSERT INTO JOB_HISTORY (EMPLOYEE_ID, START_DATE, END_DATE, JOB_ID, DEPARTMENT_ID)
VALUES(1,TO_DATE('2000/01/01','yyyy/mm/dd'), TO_DATE('2001/02/02','yyyy/mm/dd'),1, 1);