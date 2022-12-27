CREATE TABLE [dbo].[BusinessUnit] (
    [businessUnitId]   INT           IDENTITY (1, 1) NOT NULL,
    [businessUnitCode] VARCHAR (4)   NOT NULL,
    [businessUnitName] VARCHAR (100) NOT NULL,
    [companyId]        SMALLINT      NOT NULL,
    [sapIntegrated]    BIT           CONSTRAINT [DF_Business_Unit_SAPIntegrated] DEFAULT ((0)) NOT NULL,
    [status]           INT           NOT NULL,
    [createdBy]        INT           NOT NULL,
    [createdAt]        DATETIME      CONSTRAINT [DF_Business_Unit_CreatedAt] DEFAULT (getdate()) NOT NULL,
    [modifiedBy]       INT           NULL,
    [modifiedAt]       DATETIME      NULL,
    CONSTRAINT [PK_Business_Unit] PRIMARY KEY CLUSTERED ([businessUnitId] ASC),
    CONSTRAINT [FK_Business_Unit_Company] FOREIGN KEY ([companyId]) REFERENCES [dbo].[Company] ([companyId])
);

