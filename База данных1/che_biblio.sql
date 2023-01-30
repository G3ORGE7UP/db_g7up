CREATE PROCEDURE che_Biblio
		@idBIBLIO_info int,
		@biblio_name varchar(20),
		@biblio_adress varchar(20),
		@biblio_city varchar(10)
		As
		UPDATE BIBLIO_INFO SET biblio_name = @biblio_name, biblio_adress = @biblio_adress, biblio_city = @biblio_city where idBIBLIO_info = @idBIBLIO_info;
RETURN 0