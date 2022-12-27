CREATE TABLE [dbo].[Region] (
    [regionId]   INT           IDENTITY (1, 1) NOT NULL,
    [regionName] VARCHAR (100) NOT NULL,
    [status]     INT           NOT NULL,
    [createdBy]  INT           NOT NULL,
    [createdAt]  DATETIME      CONSTRAINT [DF_Region_CreatedAt] DEFAULT (getdate()) NOT NULL,
    [modifiedBy] INT           NULL,
    [modifiedAt] DATETIME      NULL,
    CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED ([regionId] ASC)
);

