DROP TABLE info CASCADE CONSTRAINT;

CREATE TABLE info(
	cmpName	      	VARCHAR2(30) NOT NULL,
	busName	      	VARCHAR2(30) NOT NULL,
	cmpTxt			VARCHAR2(3000) NOT NULL,
	CONSTRAINT info_cmpName_pk PRIMARY KEY (cmpName)
);
