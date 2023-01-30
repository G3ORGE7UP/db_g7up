CREATE TABLE [dbo].[BIBLIO_FOUND_INFO] (
    [Biblio_S]         INT          NOT NULL,
    [BIBLIO_INFO_idBIBLIO_INFO] INT          NOT NULL,
    [found_biblio_contain]      INT          NULL,
    [found_name]                VARCHAR (10) NULL,
    [found_biblio]              VARCHAR (20) NULL,
    [number_books]              INT          NULL,
    [number_magazine]           INT          NULL,
    [number_diss]               INT          NULL,
    [number_ref]                INT          NULL,
    PRIMARY KEY CLUSTERED ([Biblio_S] ASC),
    FOREIGN KEY ([BIBLIO_INFO_idBIBLIO_INFO]) REFERENCES [dbo].[BIBLIO_INFO] ([idBIBLIO_INFO])
);


GO
CREATE NONCLUSTERED INDEX [IFK_Rel_10]
    ON [dbo].[BIBLIO_FOUND_INFO]([BIBLIO_INFO_idBIBLIO_INFO] ASC);

