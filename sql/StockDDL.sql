DROP TABLE stock;

	
CREATE TABLE stock(
	 cmpName	   	VARCHAR2(30) NOT NULL,
	 recordDate	   	VARCHAR2(20) NOT NULL,
	 close	   		VARCHAR2(20) NOT NULL,
	 high	   		VARCHAR2(20) NOT NULL,
	 low	   		VARCHAR2(20) NOT NULL,
	 open	   		VARCHAR2(20) NOT NULL,
	 volume	   		VARCHAR2(20) NOT NULL,
	 CONSTRAINT stock_cmpName_fk FOREIGN KEY (cmpName) REFERENCES info (cmpName)
);
