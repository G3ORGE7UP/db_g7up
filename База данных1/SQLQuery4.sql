CREATE PROCEDURE add_Biblio
	@idBIBLIO_info int,
	@biblio_name varchar(20),
	@biblio_adress varchar(20),
	@biblio_city varchar(10)
	As
	if (not exists(select * from BIBLIO_INFO where idbiblio_info=@idbiblio_info))
		insert into BIBLIO_INFO values 
		(@idBIBLIO_info,@biblio_name,@biblio_adress,@biblio_city)
	else
		raiserror('Данная библиотека уже присутствует в базе данных',1,16 )
RETURN 0