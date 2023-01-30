CREATE TABLE BIBLIO_INFO (
  idBIBLIO_INFO INTEGER   NOT NULL ,
  biblio_name VARCHAR(20)    ,
  biblio_adress VARCHAR(20)    ,
  biblio_city VARCHAR(10)      ,
PRIMARY KEY(idBIBLIO_INFO));



CREATE TABLE BIBLIO_PERSONAL_INFO (
  biblio_info INTEGER   NOT NULL ,
  BIBLIO_INFO_idBIBLIO_INFO INTEGER   NOT NULL ,
  personal_familia VARCHAR(15)    ,
  personal_biblio_name VARCHAR(10)    ,
  personal_rank VARCHAR(10)    ,
  personal_year INTEGER    ,
  personal_job_year INTEGER    ,
  personal_education VARCHAR(20)    ,
  personal_money INTEGER      ,
PRIMARY KEY(biblio_info),
  FOREIGN KEY(BIBLIO_INFO_idBIBLIO_INFO)
    REFERENCES BIBLIO_INFO(idBIBLIO_INFO));

CREATE INDEX IFK_Rel_05 ON BIBLIO_PERSONAL_INFO (BIBLIO_INFO_idBIBLIO_INFO);


CREATE TABLE BIBLIO_FOUND_INFO (
  biblio_found_info INTEGER   NOT NULL ,
  BIBLIO_INFO_idBIBLIO_INFO INTEGER   NOT NULL ,
  found_biblio_contain INTEGER    ,
  found_name VARCHAR(10)    ,
  found_biblio VARCHAR(20)    ,
  number_books INTEGER    ,
  number_magazine INTEGER    ,
  number_diss INTEGER    ,
  number_ref INTEGER      ,
PRIMARY KEY(biblio_found_info),
  FOREIGN KEY(BIBLIO_INFO_idBIBLIO_INFO)
    REFERENCES BIBLIO_INFO(idBIBLIO_INFO));

CREATE INDEX IFK_Rel_10 ON BIBLIO_FOUND_INFO (BIBLIO_INFO_idBIBLIO_INFO);


CREATE TABLE FOUND_BIBLIO_CONTAIN (
  idFOUND_BIBLIO_CONTAIN INTEGER   NOT NULL ,
  BIBLIO_FOUND_INFO_biblio_found_info INTEGER   NOT NULL ,
  BIBLIO_PERSONAL_INFO_biblio_info INTEGER   NOT NULL ,
  personal_familia VARCHAR(15)    ,
  date_of_fill INTEGER    ,
  type_of_literature VARCHAR(10)      ,
PRIMARY KEY(idFOUND_BIBLIO_CONTAIN),
  FOREIGN KEY(BIBLIO_PERSONAL_INFO_biblio_info)
    REFERENCES BIBLIO_PERSONAL_INFO(biblio_info),
  FOREIGN KEY(BIBLIO_FOUND_INFO_biblio_found_info)
    REFERENCES BIBLIO_FOUND_INFO(biblio_found_info));

CREATE INDEX IFK_Rel_12 ON FOUND_BIBLIO_CONTAIN (BIBLIO_PERSONAL_INFO_biblio_info);
CREATE INDEX IFK_Rel_13 ON FOUND_BIBLIO_CONTAIN (BIBLIO_FOUND_INFO_biblio_found_info);



