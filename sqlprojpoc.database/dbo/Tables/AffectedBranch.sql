CREATE TABLE [dbo].[AffectedBranch] (
    [affectedBranchId] INT      IDENTITY (1, 1) NOT NULL,
    [productId]        INT      NOT NULL,
    [branchId]         INT      NOT NULL,
    [status]           INT      NOT NULL,
    [createdBy]        INT      NOT NULL,
    [createdAt]        DATETIME NOT NULL,
    [modifiedBy]       INT      NULL,
    [modifiedAt]       DATETIME NULL,
    CONSTRAINT [PK_ExpenseValue] PRIMARY KEY CLUSTERED ([affectedBranchId] ASC),
    CONSTRAINT [FK_AffectedBranch_Branch] FOREIGN KEY ([branchId]) REFERENCES [dbo].[Branch] ([branchId])
);

