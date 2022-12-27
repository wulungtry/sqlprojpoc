CREATE TABLE [dbo].[Branch] (
    [branchId]       INT           IDENTITY (1, 1) NOT NULL,
    [branchCode]     VARCHAR (4)   NOT NULL,
    [branchName]     VARCHAR (100) NOT NULL,
    [businessUnitId] INT           NOT NULL,
    [regionId]       INT           NOT NULL,
    [sapIntegrated]  BIT           CONSTRAINT [DF_Branch_SAPIntegration] DEFAULT ((0)) NOT NULL,
    [status]         INT           NOT NULL,
    [createdBy]      INT           NOT NULL,
    [createdAt]      DATETIME      CONSTRAINT [DF_Branch_CreatedAt] DEFAULT (getdate()) NOT NULL,
    [modifiedBy]     INT           NULL,
    [modifiedAt]     DATETIME      NULL,
    CONSTRAINT [PK_Branch] PRIMARY KEY CLUSTERED ([branchId] ASC),
    CONSTRAINT [FK_Branch_BusinessUnit] FOREIGN KEY ([businessUnitId]) REFERENCES [dbo].[BusinessUnit] ([businessUnitId]),
    CONSTRAINT [FK_Branch_Region] FOREIGN KEY ([regionId]) REFERENCES [dbo].[Region] ([regionId])
);

