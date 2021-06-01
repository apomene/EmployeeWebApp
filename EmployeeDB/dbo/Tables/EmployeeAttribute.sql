CREATE TABLE [dbo].[EmployeeAttribute] (
    [EMPATTR_EmployeeID]  UNIQUEIDENTIFIER NOT NULL,
    [EMPATTR_AttributeID] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_EmployeeAttribute] PRIMARY KEY CLUSTERED ([EMPATTR_EmployeeID] ASC, [EMPATTR_AttributeID] ASC),
    CONSTRAINT [FK_EmployeeAttribute_Attribute] FOREIGN KEY ([EMPATTR_AttributeID]) REFERENCES [dbo].[Attribute] ([ATTR_ID]),
    CONSTRAINT [FK_EmployeeAttribute_Employee] FOREIGN KEY ([EMPATTR_EmployeeID]) REFERENCES [dbo].[Employee] ([EMP_ID])
);

