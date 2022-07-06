select
    ano, ddata, TO_CHAR(wdate, 'yyyy/MM/dd HH:mi:ss') wdate
from
    ardudata
ORDER BY
    wdate DESC
;

CREATE TABLE arduCount(
    acno NUMBER(6)
        CONSTRAINT ADCNT_NO_PK PRIMARY KEY,
    count NUMBER DEFAULT 0
        CONSTRAINT ADCNT_CNT_NN NOT NULL,
    cdate DATE DEFAULT sysdate
        CONSTRAINT ADCNT_DATE_UK UNIQUE
        CONSTRAINT ADCNT_DATE_NN NOT NULL
);

INSERT INTO 
    arduCount(acno)
VALUES(
    (SELECT NVL(MAX(acno) + 1, 100001) FROM arduCount)
);

commit;

