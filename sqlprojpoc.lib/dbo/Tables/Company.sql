CREATE TABLE [dbo].[Company] (
    [companyId]       SMALLINT      IDENTITY (1, 1) NOT NULL,
    [companyCode]     VARCHAR (4)   NOT NULL,
    [companyName]     VARCHAR (100) NOT NULL,
    [parentCompanyId] SMALLINT      NULL,
    [structureLevel]  TINYINT       NOT NULL,
    [suspendFlag]     BIT           CONSTRAINT [DF_Company_SuspendFlag] DEFAULT ((0)) NULL,
    [sapIntegrated]   BIT           CONSTRAINT [DF_Company_SAPIntegrated] DEFAULT ((0)) NULL,
    [status]          INT           NOT NULL,
    [createdBy]       INT           NOT NULL,
    [createdAt]       DATETIME      CONSTRAINT [DF_Company_CreatedAt] DEFAULT (getdate()) NOT NULL,
    [modifiedBy]      INT           NULL,
    [modifiedAt]      DATETIME      NULL,
    CONSTRAINT [PK_Company] PRIMARY KEY CLUSTERED ([companyId] ASC),
    CONSTRAINT [FK_Company_Company_ParentCompanyId] FOREIGN KEY ([parentCompanyId]) REFERENCES [dbo].[Company] ([companyId])
);

