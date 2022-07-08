CREATE TABLE MEMBER_BACK
AS
    SELECT
        m.*, sysdate backup_date
    FROM
        member m
    WHERE
        1 = 2
;

CREATE TABLE SURVEY_BACK
AS
    SELECT
        m.*, sysdate backup_date
    FROM
        survey m
    WHERE
        1 = 2
;

CREATE TABLE BOARD_BACK
AS
    SELECT
        m.*, sysdate backup_date
    FROM
        board m
    WHERE
        1 = 2
;

CREATE TABLE REBOARD_BACK
AS
    SELECT
        m.*, sysdate backup_date
    FROM
        reboard m
    WHERE
        1 = 2
;

CREATE TABLE GUESTBOARD_BACK
AS
    SELECT
        m.*, sysdate backup_date
    FROM
        guestboard m
    WHERE
        1 = 2
;

ALTER TABLE member_back
MODIFY backup_date
    CONSTRAINT MEMBBACK_BDATE_NN NOT NULL;

ALTER TABLE surbey_back
MODIFY backup_date
    CONSTRAINT SVBACK_BDATE_NN NOT NULL;

ALTER TABLE board_back
MODIFY backup_date
    CONSTRAINT BRDBACK_BDATE_NN NOT NULL;

ALTER TABLE guestboard_back
MODIFY backup_date
    CONSTRAINT GBRDBACK_BDATE_NN NOT NULL;

ALTER TABLE reboard_back
MODIFY backup_date
    CONSTRAINT RBRDBACK_BDATE_NN NOT NULL;
