CREATE PROCEDURE del_Biblio1
@idBIBLIO_info int
As

if (NOT EXISTS(select * from BIBLIO_INFO where idBIBLIO_info=@idBIBLIO_info))

		DELETE Biblio WHERE idBIBLIO_info = @idBIBLIO_info;

ELSE
	RAISERROR('������ ��������� ���������� �. �. ������ ������������ � �������� ���� ������',16,1)

RETURN 0 