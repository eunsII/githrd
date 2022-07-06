CREATE TABLE category(
    cno NUMBER(6) 
        CONSTRAINT CATEG_NO_PK PRIMARY KEY,
    cate_name VARCHAR2(30 CHAR)
        CONSTRAINT CATEG_NAME_NN NOT NULL,
    upno NUMBER(6)
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),	
    '컴퓨터/노트북', NULL
);

INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),	
    '패션/잡화/뷰티', NULL
);

------------------------ 중 카테고리 --------------------------------
-- 가전/TV
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),	
    '프로젝터/스크린', 100001
);

INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),	
    '홈시어터/오디오', 100001
);

INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),	
    '에어컨/선풍기/제습기', 100001
);

INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),	
    '생활가전', 100001
);

INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),	
    '주방가전', 100001
);

INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),	
    '계절가전', 100001
);

INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),	
    '미용욕실가전', 100001
);

-- 컴퓨터/노트북
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'컴퓨터', 100008
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'노트북', 100008
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'브랜드PC/조립PC', 100008
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'모니터/사운드', 100008
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'PC주요부품', 100008
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'PC저장장치', 100008
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'PC주변기기', 100008
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'복합기/프린터/SW', 100008
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'게임기/게이밍기구', 100008
);

-- 패션/잡화/뷰티
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
    '가방/지갑', 100009
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'시계/쥬얼리', 100009
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'남성신발', 100009
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'여성신발', 100009
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'잡화/벨트/소품', 100009
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'남성의류', 100009
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'여성의류', 100009
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'언더웨어', 100009
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'스킨케어', 100009
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'헤어케어', 100009
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'바디케어', 100009
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'향수/메이크업', 100009
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'남성뷰티', 100009
);

-- TV

INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'80인치 이상', 100002
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'70인치대', 100002
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'60인치대', 100002
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'50인치대', 100002
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'40인치대', 100002
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'39인치 이하', 100002
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'디스플레이별', 100002
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'중소 제조사', 100002
);
INSERT INTO
    category
VALUES(
    (SELECT NVL(MAX(cno) + 1 , 100001) FROM category),
'셋톱박스/TV스탠드', 100002
);

commit;
-----------------------------------------------------------

SELECT
    cno, cate_name, upno
FROM
    category
WHERE
    upno = 100001
;







---------------------------------------------------------------------
INSERT INTO
    category
VALUES(
    100001,	
    '가전/TV',	    NULL
);

INSERT INTO
    category
VALUES(
    100002,	'TV',   100001
);

INSERT INTO
    category
VALUES(
    100003,	'80인치이상',   100002
);

INSERT INTO
    category
VALUES(
    100004,	'90인치이상',   100003
);

INSERT INTO
    category
VALUES(
    100005,	'86/88인치',  100003
);

INSERT INTO
    category
VALUES(
    100006,	'85인치', 100003
);

INSERT INTO
    category
VALUES(
    100007,	'82/83인치',  100003
);

commit;


CREATE TABLE product(
    pno NUMBER(6)
        CONSTRAINT PRODUCT_NO_PK PRIMARY KEY,
    pname VARCHAR2(50 CHAR)
        CONSTRAINT PRODUCT_NAME_NN NOT NULL,
    cno NUMBER(6)
        CONSTRAINT PRODUCT_CNO_FK REFERENCES category(cno)
        CONSTRAINT PRODUCT_CNO_NN NOT NULL,
    price NUMBER(8)
        CONSTRAINT PRODUCT_PRICE_NN NOT NULL,
    summary VARCHAR2(4000)
        CONSTRAINT PRODUCT_SUMMARY_NN NOT NULL,
    manuf_co VARCHAR2(50 CHAR)
        CONSTRAINT PRODUCT_MANUCO_NN NOT NULL,
    reldate DATE 
        CONSTRAINT PRODUCT_RDATE_NN NOT NULL,
    pisshow CHAR(1) DEFAULT 'Y'
        CONSTRAINT PRODUCT_SHOW_CK CHECK (pisshow IN('Y', 'N'))
        CONSTRAINT PRODUCT_SHOW_NN NOT NULL
);


-- pno, pname, cno, price, summary, manu_co, reldate

INSERT INTO
    product(pno, pname, cno, price, summary, manuf_co, reldate)
VALUES(
    (SELECT NVL(MAX(pno) + 1, 100001) FROM product),
    'Neo QLED KQ98QNA90AFXKR', 100004, 12822280, 'mini LED TV / 247cm(98인치) / 네오QLED / 4K UHD / 최대주사율: 120Hz / 직하형 / 4K업스케일링 / 인공지능화질 / 네오퀀텀프로세서4K / HDR10+ / HLG / 게임: FreeSync, ALLM, 게임모드 / 스마트: 타이젠OS, 넷플릭스, 유튜브, 미러링, 음성인식, 구글어시스턴트 / 사운드: 돌비디지털, 인공지능, 블루투스 / 스피커: 4.2.2채널 / 출력: 60W / HDMI(전체): 4개 / USB: 2개 / 지원: HDMI2.1, eARC, CEC / Wi-Fi / Wi-Fi다이렉트 / LAN / 블루투스 / 옵티컬 / 소비전력: 435W / 베사홀: 600x400mm / 2021년형 / 크기(가로x세로x깊이): 2185x1249(1319)x31(367)mm',
    '삼성전자', TO_DATE('2021/08/01', 'YYYY/MM/DD')
);

INSERT INTO
    product(pno, pname, cno, price, summary, manuf_co, reldate)
VALUES(
    (SELECT NVL(MAX(pno) + 1, 100001) FROM product),
    '울트라HD 86UR642S0NC', 100005, 2328550, 'LED TV / 217cm(86인치) / LED / 4K UHD / IPS패널 / 최대주사율: 120Hz / 4K업스케일링 / 인공지능화질 / 4세대 알파7 / HDR10 / HLG / 게임: ALLM, HGIG, 게임모드 / 스마트: 웹OS / 사운드: 인공지능, 블루투스 / 스피커: 2.0채널 / 출력: 20W / HDMI(전체): 3개 / USB: 1개 / 지원: eARC / LAN / 블루투스 / 옵티컬 / 소비전력: 335W / 2021년형 / 크기(가로x세로x깊이): 1927x1104x60mm',
    'LG전자', TO_DATE('2021/10/01', 'YYYY/MM/DD')
);


INSERT INTO
    product(pno, pname, cno, price, summary, manuf_co, reldate)
VALUES(
    (SELECT NVL(MAX(pno) + 1, 100001) FROM product),
    'Crystal UHD KU86UT9000FXKR', 100005, 2557020, 'LED TV / 217cm(86인치) / LED / 4K UHD / 최대주사율: 120Hz / 4K업스케일링 / 크리스털UHD / HDR10+ / HLG / 게임: FreeSync, ALLM, 게임모드 / 스마트: 타이젠OS, 넷플릭스, 유튜브, 미러링, 음성인식 / 사운드: 인공지능, 블루투스 / 스피커: 2.0채널 / 출력: 20W / HDMI(전체): 4개 / USB: 2개 / 지원: HDMI2.1, eARC, CEC / Wi-Fi / Wi-Fi다이렉트 / LAN / 블루투스 / 옵티컬 / 소비전력: 290W / 2021년형 / 크기(가로x세로x깊이): 1925x1097(1203)x55(392)mm',
    '삼성전자', TO_DATE('2021/08/01', 'YYYY/MM/DD')
);

commit;


SELECT
    cno, cate_name, cate
FROM
    category
WHERE
    cate LIKE '%#' || 100002 || '#'
;

SELECT
    cno, cate_name, cate
FROM
    category c
WHERE
    cate = (
        SELECT
            cate
        FROM
            category
        WHERE
            cate LIKE '@#' || 100003 || '#'
    )
;

CREATE TABLE char_Cate(
    cno NUMBER(6) 
        CONSTRAINT CATE_NO_PK PRIMARY KEY,
    cate_name VARCHAR2(30 CHAR)
        CONSTRAINT CATE_NAME_NN NOT NULL,
    cate VARCHAR2(4000)
        CONSTRAINT CATE_CATE_NN NOT NULL
);

INSERT INTO
    char_cate
VALUES(
100001,	'가전/TV',	'#'
);
INSERT INTO
    char_cate
VALUES(
100002,	'TV',	'#100001#'
);

INSERT INTO
    char_cate
VALUES(
100003,	'80인치이상',	'#100001#100002#'
);
INSERT INTO
    char_cate
VALUES(
100004,	'90인치이상',	'#100001#100002#100003#'
);

INSERT INTO
    char_cate
VALUES(
100005,	'86/88인치',	'#100001#100002#100003#'
);

INSERT INTO
    char_cate
VALUES(
100006,	'85인치',	'#100001#100002#100003#'
);

INSERT INTO
    char_cate
VALUES(
100007,	'82/83인치',	'#100001#100002#100003#'
);

commit;

-- 대 카테고리 조회질의명령
SELECT
    cno, cate_name cname
FROM
    char_cate
WHERE
    cate = '#'
;


-- 진짜소 카테고리 조회 질의명령
SELECT
    cno, cate_name cname, cate
FROM
    char_cate
WHERE
    cate = (
        SELECT
            cate || 100003 || '#'
        FROM
            char_cate
        WHERE
            cno = 100003
    )
;


INSERT INTO charcate
    SELECT
        *
    FROM
        CHAR_CATE
;
ALTER TABLE charcate
DROP CONSTRAINT CCATE_CATE_NN;

ALTER TABLE charcate
MODIFY cate NUMBER(6);

UPDATE 
    CHARCATE
SET
    CATE = NULL
;



SELECT
    cno, cate_name cname 
FROM
    charcate
WHERE
    cate = 100003
;