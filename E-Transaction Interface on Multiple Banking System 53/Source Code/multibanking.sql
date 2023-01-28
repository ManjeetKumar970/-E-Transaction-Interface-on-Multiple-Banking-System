
CREATE TABLE BANK
(
  ID     NUMBER                                     NULL,
  BNAME  VARCHAR2(100 BYTE)                         NULL
)
TABLESPACE SYSTEM
LOGGING 
NOCACHE
NOPARALLEL
NOMONITORING;


CREATE TABLE BLOGIN
(
  ID      NUMBER                                    NULL,
  BID     VARCHAR2(100 BYTE)                        NULL,
  PWD     VARCHAR2(100 BYTE)                        NULL,
  BNAME   VARCHAR2(100 BYTE)                        NULL,
  STATUS  NUMBER                                    NULL
)
TABLESPACE SYSTEM
LOGGING 
NOCACHE
NOPARALLEL
NOMONITORING;


CREATE TABLE CLOGIN
(
  ID      NUMBER                                    NULL,
  CID     VARCHAR2(100 BYTE)                        NULL,
  PWD     VARCHAR2(100 BYTE)                        NULL,
  STATUS  NUMBER                                    NULL
)
TABLESPACE SYSTEM
LOGGING 
NOCACHE
NOPARALLEL
NOMONITORING;


CREATE TABLE CREJECT
(
  CID    VARCHAR2(100 BYTE)                         NULL,
  PWD    VARCHAR2(100 BYTE)                         NULL,
  ACCNO  VARCHAR2(100 BYTE)                         NULL,
  BNAME  VARCHAR2(100 BYTE)                         NULL
)
TABLESPACE SYSTEM
LOGGING 
NOCACHE
NOPARALLEL
NOMONITORING;


CREATE TABLE CUSTOMER
(
  ID      VARCHAR2(100 BYTE)                        NULL,
  CID     VARCHAR2(100 BYTE)                        NULL,
  PWD     VARCHAR2(100 BYTE)                        NULL,
  ACCNO   VARCHAR2(100 BYTE)                        NULL,
  ATYPE   VARCHAR2(100 BYTE)                        NULL,
  CNAME   VARCHAR2(100 BYTE)                        NULL,
  BNAME   VARCHAR2(100 BYTE)                        NULL,
  BAL     NUMBER                                    NULL,
  TPWD    VARCHAR2(100 BYTE)                        NULL,
  STATUS  NUMBER                                    NULL
)
TABLESPACE SYSTEM
LOGGING 
NOCACHE
NOPARALLEL
NOMONITORING;


CREATE TABLE REJECT
(
  CID    VARCHAR2(100 BYTE)                         NULL,
  ACCNO  VARCHAR2(100 BYTE)                         NULL,
  ATYPE  VARCHAR2(100 BYTE)                         NULL,
  BNAME  VARCHAR2(100 BYTE)                         NULL
)
TABLESPACE SYSTEM
LOGGING 
NOCACHE
NOPARALLEL
NOMONITORING;


CREATE TABLE TACCEPT
(
  SCID    VARCHAR2(100 BYTE)                        NULL,
  SACCNO  VARCHAR2(100 BYTE)                        NULL,
  ATYPE   VARCHAR2(100 BYTE)                        NULL,
  SBNAME  VARCHAR2(100 BYTE)                        NULL,
  SBAL    NUMBER                                    NULL,
  DCID    VARCHAR2(100 BYTE)                        NULL,
  DACCNO  VARCHAR2(100 BYTE)                        NULL,
  DTYPE   VARCHAR2(100 BYTE)                        NULL,
  DBNAME  VARCHAR2(100 BYTE)                        NULL,
  DBAL    NUMBER                                    NULL
)
TABLESPACE SYSTEM
LOGGING 
NOCACHE
NOPARALLEL
NOMONITORING;


CREATE TABLE TRANSFER
(
  ID      VARCHAR2(100 BYTE)                        NULL,
  SACCNO  VARCHAR2(100 BYTE)                        NULL,
  DACCNO  VARCHAR2(100 BYTE)                        NULL,
  AMT     NUMBER                                    NULL,
  ATYPE   VARCHAR2(100 BYTE)                        NULL,
  DTYPE   VARCHAR2(100 BYTE)                        NULL,
  TPWD    VARCHAR2(100 BYTE)                        NULL,
  SBANK   VARCHAR2(100 BYTE)                        NULL,
  DBANK   VARCHAR2(100 BYTE)                        NULL
)
TABLESPACE SYSTEM
LOGGING 
NOCACHE
NOPARALLEL
NOMONITORING;



