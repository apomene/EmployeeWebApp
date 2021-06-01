CREATE TABLE [dbo].[Employee] (
    [EMP_ID]         UNIQUEIDENTIFIER NOT NULL,
    [EMP_Name]       NVARCHAR (100)   NOT NULL,
    [EMP_DateOfHire] DATETIME         NOT NULL,
    [EMP_Supervisor] UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED ([EMP_ID] ASC),
    CONSTRAINT [FK_Employee_Employee] FOREIGN KEY ([EMP_Supervisor]) REFERENCES [dbo].[Employee] ([EMP_ID])
);

