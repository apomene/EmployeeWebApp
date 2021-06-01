CREATE PROCEDURE AddTeam (@emp_id UNIQUEIDENTIFIER)
AS
--CREATE TMP TABLE THAT CONTAINS THE EMPLOYEES WITH GIVEN ID THAT ARE SUPEVISORS
SELECT emp_id,emp_name
INTO   #employee
FROM   employee 
WHERE EMP_Supervisor = @emp_id;

DECLARE @EmpID UNIQUEIDENTIFIER
DECLARE @EmpName NVARCHAR(100)
WHILE EXISTS (SELECT *
              FROM   #employee)
  BEGIN
      SELECT @EmpID = (SELECT TOP 1 emp_id
                       FROM   #employee
                       ORDER  BY emp_id ASC)
	SELECT @EmpName = (SELECT emp_name FROM employee WHERE emp_id= @emp_id);
					 
        BEGIN           
            DECLARE @attrID UNIQUEIDENTIFIER;

            SET @attrID = Newid();

            INSERT INTO [EmployeeDB].[dbo].[attribute]
                        (attr_id,
                         attr_name,
                         attr_value)
            VALUES     (@attrID,
                        'Team',
                        @EmpName);

            INSERT INTO [EmployeeDB].[dbo].employeeattribute
                        (empattr_employeeid,
                         empattr_attributeid)
            VALUES      (@EmpID,
                         @attrID)
			PRINT 'New Attributed Added with Name Team and Value '+@EmpName
        END
     
      DELETE #employee
      WHERE  emp_id = @EmpID
  END

--WE ARE DONE RELEASE RESOURCES
DROP TABLE #employee  