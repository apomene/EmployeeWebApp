CREATE TABLE [dbo].[Attribute] (
    [ATTR_ID]    UNIQUEIDENTIFIER NOT NULL,
    [ATTR_Name]  NVARCHAR (50)    NOT NULL,
    [ATTR_Value] NVARCHAR (50)    NOT NULL,
    CONSTRAINT [PK_Attribute] PRIMARY KEY CLUSTERED ([ATTR_ID] ASC)
);

