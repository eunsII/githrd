-- 제약조건  변경

-- 게시판
ALTER TABLE board
DROP CONSTRAINT BRD_MNO_FK;

ALTER TABLE board
ADD CONSTRAINT BRD_MNO_FK FOREIGN KEY(bmno) REFERENCES member(mno)
ON DELETE CASCADE;

ALTER TABLE fileinfo
DROP CONSTRAINT FI_BNO_FK;

-- 방명록
ALTER TABLE guestboard
DROP CONSTRAINT GBRD_WRITER_FK;

-- 댓글 게시판
ALTER TABLE reboard
DROP CONSTRAINT RBRD_MNO_FK;

ALTER TABLE reboard
ADD CONSTRAINT RBRD_MNO_FK FOREIGN KEY(rbmno) REFERENCES member(mno)
ON DELETE CASCADE;

-- 설문조사
ALTER TABLE survey
DROP CONSTRAINT SV_MNO_FK;

ALTER TABLE survey
DROP CONSTRAINT SV_MNO_NN;


-- 게시글에 데이터 추가
INSERT INTO
    member(mno, name, id, pw, mail, tel, avt, gen)
VALUES(
    (SELECT NVL(MAX(mno) + 1, 1001 ) FROM member),
    'test1', 'test1', '12345', 'test1@githrd.com', '010-9292-7272', 13, 'M'
);

INSERT INTO
    board(bno, bmno, title, body)
VALUES(
    (SELECT NVL(MAX(bno) + 1, 100001 ) FROM board),
    1019, '삭제 테스트...', '회원삭제시 게시글 삭제 테스트...'
);

INSERT INTO 
    member(mno, id, pw, name, mail, tel, gen)
VALUES(
    1, 'admin', '12345', '관리자', 'admin@githrd.com', '010-1111-1111', 'F'
);
commit;