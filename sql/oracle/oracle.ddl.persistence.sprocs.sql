DROP PROCEDURE GetEmpOneFirstNameFromOut !
CREATE OR REPLACE PROCEDURE GetEmpOneFirstNameFromOut (OUT_PARAM out VARCHAR) AS BEGIN SELECT FIRSTNAME into OUT_PARAM FROM EMPLOYEE WHERE ID=1; END; !

DROP PROCEDURE GetEmpFirstNameFromOut !
CREATE OR REPLACE PROCEDURE GetEmpFirstNameFromOut (IN_PARAM in INTEGER, OUT_PARAM out VARCHAR) AS BEGIN SELECT FIRSTNAME into OUT_PARAM FROM EMPLOYEE WHERE ID=IN_PARAM; END; !


DROP PROCEDURE GetEmpLastNameFromInOut !
CREATE OR REPLACE PROCEDURE GetEmpLastNameFromInOut (INOUT_PARAM in out VARCHAR) AS BEGIN SELECT LASTNAME into INOUT_PARAM FROM EMPLOYEE WHERE ID=to_number(INOUT_PARAM); END; !

DROP PROCEDURE GetEmpASCFromRS !
CREATE OR REPLACE PROCEDURE GetEmpASCFromRS(p_recordset out SYS_REFCURSOR) AS BEGIN OPEN p_recordset FOR SELECT ID, FIRSTNAME, LASTNAME, HIREDATE, SALARY FROM EMPLOYEE ORDER BY ID; END; !

DROP PROCEDURE GetEmpIdFNameLNameFromRS !
CREATE OR REPLACE PROCEDURE GetEmpIdFNameLNameFromRS(IN_PARAM in INTEGER, p_recordset out SYS_REFCURSOR) AS BEGIN OPEN p_recordset FOR SELECT ID, FIRSTNAME, LASTNAME FROM EMPLOYEE WHERE ID=IN_PARAM; END; !

DROP PROCEDURE GetEmpIdUsingHireDateFromOut !
CREATE OR REPLACE PROCEDURE GetEmpIdUsingHireDateFromOut (IN_PARAM in DATE, OUT_PARAM out INTEGER) AS BEGIN SELECT ID into OUT_PARAM FROM EMPLOYEE WHERE HIREDATE=IN_PARAM; END; !

DROP PROCEDURE UpdateEmpSalaryColumn !
CREATE OR REPLACE PROCEDURE UpdateEmpSalaryColumn AS BEGIN UPDATE EMPLOYEE set SALARY=0.00; END; !

DROP PROCEDURE DeleteAllEmp !
CREATE OR REPLACE PROCEDURE DeleteAllEmp AS BEGIN DELETE FROM EMPLOYEE; END; !
