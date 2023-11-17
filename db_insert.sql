CREATE TABLE "AS_LIST" (	"AS_NO" NUMBER, "AS_GUBUN" CHAR(1), "MEMBER_NO" NUMBER, "AS_TITLE" VARCHAR2(100), "AS_CONTENT" VARCHAR2(4000), "ORDER_NO" NUMBER, "ORDER_DETAIL_NO" NUMBER, "AS_STATE" CHAR(1), "AS_SDATE" DATE, "AS_EDATE" DATE, "ORDER_STATE" VARCHAR2(20)); 
COMMENT ON COLUMN "AS_LIST"."AS_NO" IS 'AS번호';
 
COMMENT ON COLUMN "AS_LIST"."AS_GUBUN" IS '교환환불구분';
 
COMMENT ON COLUMN "AS_LIST"."MEMBER_NO" IS '회원번호';
 
COMMENT ON COLUMN "AS_LIST"."AS_TITLE" IS '요청제목';
 
COMMENT ON COLUMN "AS_LIST"."AS_CONTENT" IS '요청내용';
 
COMMENT ON COLUMN "AS_LIST"."ORDER_NO" IS '주문번호';
 
COMMENT ON COLUMN "AS_LIST"."ORDER_DETAIL_NO" IS '주문디테일번호';
 
COMMENT ON COLUMN "AS_LIST"."AS_STATE" IS 'AS진행상태';
 
COMMENT ON COLUMN "AS_LIST"."AS_SDATE" IS 'AS신청날짜';
 
COMMENT ON COLUMN "AS_LIST"."AS_EDATE" IS 'AS완료날짜';

CREATE TABLE "BASKET" (	"BASKET_NO" NUMBER, "MEMBER_NO" NUMBER, "GOODS_NO" NUMBER, "GOODS_ATT_NO" NUMBER, "BASKET_GOODS_AMOUNT" NUMBER, "BASKET_DATE" DATE, "ORDER_COLOR" VARCHAR2(100), "ORDER_SIZE" VARCHAR2(100), "GUBUN" CHAR(1) DEFAULT 0);
 

COMMENT ON COLUMN "BASKET"."BASKET_NO" IS '장바구니번호';
 
COMMENT ON COLUMN "BASKET"."MEMBER_NO" IS '회원번호';
 
COMMENT ON COLUMN "BASKET"."GOODS_NO" IS '상품번호';
 
COMMENT ON COLUMN "BASKET"."GOODS_ATT_NO" IS '상품속성번호';
 
COMMENT ON COLUMN "BASKET"."BASKET_GOODS_AMOUNT" IS '상품수량';
 
COMMENT ON COLUMN "BASKET"."BASKET_DATE" IS '장바구니담은날짜';

CREATE TABLE "COUPON" (	"COUPON_NO" NUMBER, "COUPON_ID" VARCHAR2(100), "COUPON_VALUE" VARCHAR2(100), "COUPON_S_VALIDITY" DATE, "COUPON_E_VALIDITY" DATE);
 

COMMENT ON COLUMN "COUPON"."COUPON_NO" IS '쿠폰번호';
 
COMMENT ON COLUMN "COUPON"."COUPON_ID" IS '쿠폰명';
 
COMMENT ON COLUMN "COUPON"."COUPON_VALUE" IS '쿠폰값';
 
COMMENT ON COLUMN "COUPON"."COUPON_S_VALIDITY" IS '쿠폰시작일자';
 
COMMENT ON COLUMN "COUPON"."COUPON_E_VALIDITY" IS '쿠폰종료일자';

CREATE TABLE "COUPON_STATUS" (	"COUPON_STATUS_NO" NUMBER, "COUPON_NO" NUMBER, "MEMBER_NO" NUMBER, "COUPON_USE_STATE" CHAR(1) DEFAULT '0', "COUPON_ISSUE_DATE" DATE, "COUPON_USE_DATE" DATE);
 

COMMENT ON COLUMN "COUPON_STATUS"."COUPON_STATUS_NO" IS '쿠폰현황번호';
 
COMMENT ON COLUMN "COUPON_STATUS"."COUPON_NO" IS '쿠폰번호';
 
COMMENT ON COLUMN "COUPON_STATUS"."MEMBER_NO" IS '회원번호';
 
COMMENT ON COLUMN "COUPON_STATUS"."COUPON_USE_STATE" IS '쿠폰사용여부';
 
COMMENT ON COLUMN "COUPON_STATUS"."COUPON_ISSUE_DATE" IS '쿠폰지급날짜';
 
COMMENT ON COLUMN "COUPON_STATUS"."COUPON_USE_DATE" IS '쿠폰사용날짜';

CREATE TABLE "GOODS" (	"GOODS_NO" NUMBER, "GOODS_CATEGORY" VARCHAR2(100), "GOODS_NAME" VARCHAR2(200), "GOODS_CONTENT" VARCHAR2(4000), "GOODS_ORIGIN_PRICE" NUMBER, "GOODS_SELL_PRICE" NUMBER, "GOODS_SALE_PRICE" NUMBER, "GOODS_DATE" DATE, "GOODS_KEYWORD" VARCHAR2(100), "GOODS_READCNT" NUMBER DEFAULT 0, "GOODS_PICK" VARCHAR2(100) DEFAULT 0, "GOODS_THUMBNAIL" VARCHAR2(1000), "GUBUN" CHAR(1) DEFAULT 0);
 

COMMENT ON COLUMN "GOODS"."GOODS_NO" IS '상품번호';
 
COMMENT ON COLUMN "GOODS"."GOODS_CATEGORY" IS '상품 카테고리';
 
COMMENT ON COLUMN "GOODS"."GOODS_NAME" IS '상품명';
 
COMMENT ON COLUMN "GOODS"."GOODS_CONTENT" IS '상세정보';
 
COMMENT ON COLUMN "GOODS"."GOODS_ORIGIN_PRICE" IS '원가';
 
COMMENT ON COLUMN "GOODS"."GOODS_SELL_PRICE" IS '판매가';
 
COMMENT ON COLUMN "GOODS"."GOODS_SALE_PRICE" IS '할인판매가';
 
COMMENT ON COLUMN "GOODS"."GOODS_DATE" IS '상품등록일';
 
COMMENT ON COLUMN "GOODS"."GOODS_KEYWORD" IS '키워드';
 
COMMENT ON COLUMN "GOODS"."GOODS_READCNT" IS '상품조회수';
 
COMMENT ON COLUMN "GOODS"."GOODS_PICK" IS '상품표출';
 
COMMENT ON COLUMN "GOODS"."GOODS_THUMBNAIL" IS '썸네일사진';
 
COMMENT ON COLUMN "GOODS"."GUBUN" IS '삭제구분';

CREATE TABLE "GOODS_ATTRIBUTE" (	"GOODS_ATT_NO" NUMBER, "GOODS_NO" NUMBER, "GOODS_ATT_SIZE" VARCHAR2(1000), "GOODS_ATT_COLOR" VARCHAR2(100), "GOODS_ATT_AMOUNT" NUMBER, "GOODS_ATT_DISPLAY" CHAR(1));
 

COMMENT ON COLUMN "GOODS_ATTRIBUTE"."GOODS_ATT_NO" IS '상품속성번호';
 
COMMENT ON COLUMN "GOODS_ATTRIBUTE"."GOODS_NO" IS '상품번호';
 
COMMENT ON COLUMN "GOODS_ATTRIBUTE"."GOODS_ATT_SIZE" IS '사이즈';
 
COMMENT ON COLUMN "GOODS_ATTRIBUTE"."GOODS_ATT_COLOR" IS '색상';
 
COMMENT ON COLUMN "GOODS_ATTRIBUTE"."GOODS_ATT_AMOUNT" IS '수량';
 
COMMENT ON COLUMN "GOODS_ATTRIBUTE"."GOODS_ATT_DISPLAY" IS '출력여부';

CREATE TABLE "GOODS_IMAGE" (	"GOODS_IMAGE_NUM" NUMBER, "GOODS_NO" NUMBER, "GOODS_IMAGE_ORG" VARCHAR2(1000), "GOODS_IMAGE_STD" VARCHAR2(1000));


CREATE TABLE "GOODS_LIKE" (	"LIKE_NO" NUMBER, "GOODS_NO" NUMBER, "MEMBER_NO" NUMBER, "LIKE_DATE" DATE, "LIKE_DELETE" CHAR(1) DEFAULT '0');
 

COMMENT ON COLUMN "GOODS_LIKE"."LIKE_NO" IS '찜하기번호';
 
COMMENT ON COLUMN "GOODS_LIKE"."GOODS_NO" IS '상품번호';
 
COMMENT ON COLUMN "GOODS_LIKE"."MEMBER_NO" IS '회원번호';
 
COMMENT ON COLUMN "GOODS_LIKE"."LIKE_DATE" IS '찜하기날짜';
 
COMMENT ON COLUMN "GOODS_LIKE"."LIKE_DELETE" IS '삭제여부';

CREATE TABLE "GOODS_QNA" (	"GOODS_QNA_NO" NUMBER, "GOODS_NO" NUMBER, "MEMBER_NO" NUMBER, "GOODS_QNA_LEVEL" NUMBER, "GOODS_QNA_TITLE" VARCHAR2(100), "GOODS_QNA_CONTENT" VARCHAR2(4000), "GOODS_QNA_DATE" DATE, "GOODS_QNA_SECRET" CHAR(1) DEFAULT '0', "MEMBER_NAME" VARCHAR2(100),"GOODS_QNA_AN" VARCHAR2(30) DEFAULT '0');
 

COMMENT ON COLUMN "GOODS_QNA"."GOODS_QNA_NO" IS '상품문의번호';
 
COMMENT ON COLUMN "GOODS_QNA"."GOODS_NO" IS '상품번호';
 
COMMENT ON COLUMN "GOODS_QNA"."MEMBER_NO" IS '회원번호';
 
COMMENT ON COLUMN "GOODS_QNA"."GOODS_QNA_LEVEL" IS '답변레벨';
 
COMMENT ON COLUMN "GOODS_QNA"."GOODS_QNA_TITLE" IS '제목';
 
COMMENT ON COLUMN "GOODS_QNA"."GOODS_QNA_CONTENT" IS '내용';
 
COMMENT ON COLUMN "GOODS_QNA"."GOODS_QNA_DATE" IS '등록일자';
 
COMMENT ON COLUMN "GOODS_QNA"."GOODS_QNA_SECRET" IS '비밀글여부';

CREATE TABLE "MEMBER" (	"MEMBER_NO" NUMBER, "MEMBER_ID" VARCHAR2(100), "MEMBER_PASSWD" VARCHAR2(100), "MEMBER_NAME" VARCHAR2(100), "MEMBER_BIRTH" DATE, "MEMBER_EMAIL" VARCHAR2(100), "MEMBER_PHONE" VARCHAR2(100), "MEMBER_ZIPCODE" VARCHAR2(100), "MEMBER_ADDR1" VARCHAR2(100), "MEMBER_ADDR2" VARCHAR2(100), "MEMBER_DATE" DATE, "MEMBER_GRADE" VARCHAR2(100), "MEMBER_TOTAL" NUMBER DEFAULT 0, "MEMBER_LOG" DATE, "EMAIL_AGREE" CHAR(1) DEFAULT '0',"SMS_AGREE" CHAR(1) DEFAULT '0',"MEMBER_DELETE" CHAR(1) DEFAULT '0');
 

COMMENT ON COLUMN "MEMBER"."MEMBER_NO" IS '회원번호';
 
COMMENT ON COLUMN "MEMBER"."MEMBER_ID" IS '회원ID';
 
COMMENT ON COLUMN "MEMBER"."MEMBER_PASSWD" IS '비밀번호';
 
COMMENT ON COLUMN "MEMBER"."MEMBER_NAME" IS '이름';
 
COMMENT ON COLUMN "MEMBER"."MEMBER_BIRTH" IS '생년월일';
 
COMMENT ON COLUMN "MEMBER"."MEMBER_EMAIL" IS '이메일';
 
COMMENT ON COLUMN "MEMBER"."MEMBER_PHONE" IS '핸드폰';
 
COMMENT ON COLUMN "MEMBER"."MEMBER_ZIPCODE" IS '우편번호';
 
COMMENT ON COLUMN "MEMBER"."MEMBER_ADDR1" IS '주소';
 
COMMENT ON COLUMN "MEMBER"."MEMBER_ADDR2" IS '상세주소';
 
COMMENT ON COLUMN "MEMBER"."MEMBER_DATE" IS '가입날짜';
 
COMMENT ON COLUMN "MEMBER"."MEMBER_GRADE" IS '등급';
 
COMMENT ON COLUMN "MEMBER"."MEMBER_TOTAL" IS '총결제금액';
 
COMMENT ON COLUMN "MEMBER"."MEMBER_LOG" IS '마지막접속일';
 
COMMENT ON COLUMN "MEMBER"."EMAIL_AGREE" IS 'Email수신여부';

COMMENT ON COLUMN "MEMBER"."SMS_AGREE" IS 'SMS수신여부';

COMMENT ON COLUMN "MEMBER"."MEMBER_DELETE" IS '삭제여부';

CREATE TABLE "NOTICE" (	"NOTICE_NO" NUMBER, "NOTICE_GUBUN" CHAR(1) DEFAULT '0', "NOTICE_TITLE" VARCHAR2(100), "NOTICE_CONTENT" VARCHAR2(4000), "NOTICE_DATE" DATE, "MEMBER_NO" NUMBER);
 

COMMENT ON COLUMN "NOTICE"."NOTICE_NO" IS '공지번호';
 
COMMENT ON COLUMN "NOTICE"."NOTICE_GUBUN" IS '구분';
 
COMMENT ON COLUMN "NOTICE"."NOTICE_TITLE" IS '제목';
 
COMMENT ON COLUMN "NOTICE"."NOTICE_CONTENT" IS '내용';
 
COMMENT ON COLUMN "NOTICE"."NOTICE_DATE" IS '등록일자';
 
COMMENT ON COLUMN "NOTICE"."MEMBER_NO" IS '회원번호';

CREATE TABLE "ORDER_DETAIL" (	"ORDER_DETAIL_NO" NUMBER, "ORDER_NO" NUMBER, "GOODS_NO" NUMBER, "GOODS_ATT_NO" NUMBER, "ORDER_DETAIL_PRICE" NUMBER, "ORDER_DETAIL_COLOR" VARCHAR2(20), "ORDER_DETAIL_SIZE" VARCHAR2(20), "ORDER_DETAIL_AMOUNT" NUMBER, "COUPON_NO" NUMBER, "COUPON_DISCOUNT" NUMBER, "ORDER_DISCOUNT_APPLY" NUMBER, "ORDER_DETAIL_SAVE_POINT" NUMBER, "ORDER_DETAIL_STATE" VARCHAR2(20));
 

COMMENT ON COLUMN "ORDER_DETAIL"."ORDER_DETAIL_NO" IS '주문디테일번호';
 
COMMENT ON COLUMN "ORDER_DETAIL"."ORDER_NO" IS '주문번호';
 
COMMENT ON COLUMN "ORDER_DETAIL"."GOODS_NO" IS '상품번호';
 
COMMENT ON COLUMN "ORDER_DETAIL"."GOODS_ATT_NO" IS '상품속성번호';
 
COMMENT ON COLUMN "ORDER_DETAIL"."ORDER_DETAIL_PRICE" IS '상품별가격';
 
COMMENT ON COLUMN "ORDER_DETAIL"."ORDER_DETAIL_COLOR" IS '주문상품색상';
 
COMMENT ON COLUMN "ORDER_DETAIL"."ORDER_DETAIL_SIZE" IS '주문상품사이즈';
 
COMMENT ON COLUMN "ORDER_DETAIL"."ORDER_DETAIL_AMOUNT" IS '주문상품수량';
 
COMMENT ON COLUMN "ORDER_DETAIL"."COUPON_NO" IS '사용쿠폰번호';
 
COMMENT ON COLUMN "ORDER_DETAIL"."COUPON_DISCOUNT" IS '쿠폰할인값';
 
COMMENT ON COLUMN "ORDER_DETAIL"."ORDER_DISCOUNT_APPLY" IS '할인적용최종결제가';
 
COMMENT ON COLUMN "ORDER_DETAIL"."ORDER_DETAIL_SAVE_POINT" IS '적립포인트';

CREATE TABLE "ORDER_LIST" (	"ORDER_NO" NUMBER, "MEMBER_NO" NUMBER, "ORDER_NAME" VARCHAR2(20), "ORDER_ZIPCODE" NUMBER, "ORDER_ADDR1" VARCHAR2(100), "ORDER_ADDR2" VARCHAR2(100), "ORDER_PHONE" NUMBER, "ORDER_PAY_NAME" VARCHAR2(20), "ORDER_PAY_OPTION" VARCHAR2(20), "ORDER_PAY_BANK" VARCHAR2(20), "ORDER_DATE" DATE, "ORDER_TOTAL_ORDER_PRICE" NUMBER, "ORDER_TOTAL_PAY_PRICE" NUMBER, "ORDER_STATE" VARCHAR2(20), "ORDER_USE_POINT" NUMBER, "ORDER_SAVE_POINT" NUMBER, "ORDER_FEE" NUMBER, "ORDER_EXPRESS" VARCHAR2(20));
 

COMMENT ON COLUMN "ORDER_LIST"."ORDER_NO" IS '주문번호';
 
COMMENT ON COLUMN "ORDER_LIST"."MEMBER_NO" IS '회원번호';
 
COMMENT ON COLUMN "ORDER_LIST"."ORDER_NAME" IS '수령인 이름';
 
COMMENT ON COLUMN "ORDER_LIST"."ORDER_ZIPCODE" IS '수령인 우편번호';
 
COMMENT ON COLUMN "ORDER_LIST"."ORDER_ADDR1" IS '수령인 주소1';
 
COMMENT ON COLUMN "ORDER_LIST"."ORDER_ADDR2" IS '수령인 상세주소2';
 
COMMENT ON COLUMN "ORDER_LIST"."ORDER_PHONE" IS '수령인 연락처';
 
COMMENT ON COLUMN "ORDER_LIST"."ORDER_PAY_NAME" IS '입금인 이름';
 
COMMENT ON COLUMN "ORDER_LIST"."ORDER_PAY_OPTION" IS '결제방법';
 
COMMENT ON COLUMN "ORDER_LIST"."ORDER_PAY_BANK" IS '입금 은행';
 
COMMENT ON COLUMN "ORDER_LIST"."ORDER_DATE" IS '주문날짜';
 
COMMENT ON COLUMN "ORDER_LIST"."ORDER_TOTAL_ORDER_PRICE" IS '총 주문금액';
 
COMMENT ON COLUMN "ORDER_LIST"."ORDER_TOTAL_PAY_PRICE" IS '총 결제금액';
 
COMMENT ON COLUMN "ORDER_LIST"."ORDER_STATE" IS '주문진행상태';
 
COMMENT ON COLUMN "ORDER_LIST"."ORDER_USE_POINT" IS '사용포인트';
 
COMMENT ON COLUMN "ORDER_LIST"."ORDER_SAVE_POINT" IS '적립포인트';
 
COMMENT ON COLUMN "ORDER_LIST"."ORDER_FEE" IS '배송비';

CREATE TABLE "POINT" (	"POINT_NO" NUMBER, "MEMBER_NO" NUMBER, "POINT_VAL" NUMBER, "POINT_SAVE_DATE" DATE, "POINT_USE_DATE" DATE, "POINT_TOTAL" NUMBER);
 

COMMENT ON COLUMN "POINT"."POINT_NO" IS '포인트번호';
 
COMMENT ON COLUMN "POINT"."MEMBER_NO" IS '회원번호';
 
COMMENT ON COLUMN "POINT"."POINT_VAL" IS '포인트(금액)';
 
COMMENT ON COLUMN "POINT"."POINT_SAVE_DATE" IS '적립날짜';
 
COMMENT ON COLUMN "POINT"."POINT_USE_DATE" IS '사용날짜';
 
COMMENT ON COLUMN "POINT"."POINT_TOTAL" IS '총 합산 포인트';

CREATE TABLE "QNA" (	"QNA_NO" NUMBER, "MEMBER_NO" NUMBER, "QNA_NAME" VARCHAR2(20), "QNA_LEVEL" NUMBER, "QNA_CATEGORY" NUMBER, "QNA_TITLE" VARCHAR2(100), "QNA_CONTENT" VARCHAR2(4000), "QNA_DATE" DATE, "QNA_SECRET" CHAR(1) DEFAULT '0', "QNA_PASSWD" VARCHAR2(20),"QNA_AN" VARCHAR2(30) DEFAULT '0');
 

COMMENT ON COLUMN "QNA"."QNA_NO" IS 'QnA번호';
 
COMMENT ON COLUMN "QNA"."MEMBER_NO" IS '회원번호';
 
COMMENT ON COLUMN "QNA"."QNA_NAME" IS '이름';
 
COMMENT ON COLUMN "QNA"."QNA_LEVEL" IS '답변레벨';
 
COMMENT ON COLUMN "QNA"."QNA_CATEGORY" IS '카테고리';
 
COMMENT ON COLUMN "QNA"."QNA_TITLE" IS '제목';
 
COMMENT ON COLUMN "QNA"."QNA_CONTENT" IS '내용';
 
COMMENT ON COLUMN "QNA"."QNA_DATE" IS '등록일자';
 
COMMENT ON COLUMN "QNA"."QNA_SECRET" IS '비밀글여부';
 
COMMENT ON COLUMN "QNA"."QNA_PASSWD" IS '비밀번호';

CREATE TABLE "REVIEW" (	"REVIEW_NO" NUMBER, "MEMBER_NO" NUMBER, "ORDER_NO" NUMBER, "ORDER_DETAIL_NO" NUMBER, "REVIEW_TITLE" VARCHAR2(50), "REVIEW_CONTENT" VARCHAR2(4000), "REVIEW_RATING" NUMBER, "REVIEW_DATE" DATE, "GOODS_NO" NUMBER, "REVIEW_READCNT" NUMBER DEFAULT 0, "REVIEW_IMG" VARCHAR2(1000), "MEMBER_NAME" VARCHAR2(100));
 

COMMENT ON COLUMN "REVIEW"."REVIEW_NO" IS '상품후기번호';
 
COMMENT ON COLUMN "REVIEW"."MEMBER_NO" IS '회원번호';
 
COMMENT ON COLUMN "REVIEW"."ORDER_NO" IS '주문번호';
 
COMMENT ON COLUMN "REVIEW"."ORDER_DETAIL_NO" IS '주문디테일번호';
 
COMMENT ON COLUMN "REVIEW"."REVIEW_TITLE" IS '후기제목';
 
COMMENT ON COLUMN "REVIEW"."REVIEW_CONTENT" IS '후기내용';
 
COMMENT ON COLUMN "REVIEW"."REVIEW_RATING" IS '상품평점';
 
COMMENT ON COLUMN "REVIEW"."REVIEW_DATE" IS '후기등록일자';

CREATE TABLE "REVIEW_IMAGE" (	"REVIEW_IMAGE_NUM" NUMBER, "GOODS_NO" NUMBER, "REVIEW_IMAGE_ORG" VARCHAR2(1000), "REVIEW_IMAGE_STD" VARCHAR2(1000));

CREATE TABLE "UPLOAD" (	"UPLOAD_NO" NUMBER, "GOODS_NO" NUMBER, "REVIEW_NO" NUMBER, "UPLOAD_ORIGIN_NAME" VARCHAR2(1000), "UPLOAD_SAVE_NAME" VARCHAR2(1000), "UPLOAD_SIZE" VARCHAR2(1000), "UPLOAD_DELETE" CHAR(1) DEFAULT 0);

CREATE TABLE "ZIPCODE" (	"ZIPCODE_NO" VARCHAR2(10), "ZIPCODE_SIDO" VARCHAR2(200), "ZIPCODE_SIGUN" VARCHAR2(200), "ZIPCODE_ROAD" VARCHAR2(200), "ZIPCODE_BNO" VARCHAR2(200), "ZIPCODE_CODE" VARCHAR2(200), "ZIPCODE_DONG" VARCHAR2(200));
 

COMMENT ON COLUMN "ZIPCODE"."ZIPCODE_NO" IS '우편코드';
 
COMMENT ON COLUMN "ZIPCODE"."ZIPCODE_SIDO" IS '시도';
 
COMMENT ON COLUMN "ZIPCODE"."ZIPCODE_SIGUN" IS '시군';
 
COMMENT ON COLUMN "ZIPCODE"."ZIPCODE_ROAD" IS '도로명';
 
COMMENT ON COLUMN "ZIPCODE"."ZIPCODE_BNO" IS '건물번호';
 
COMMENT ON COLUMN "ZIPCODE"."ZIPCODE_CODE" IS '법정동코드';
 
COMMENT ON COLUMN "ZIPCODE"."ZIPCODE_DONG" IS '동';
REM INSERTING into AS_LIST
SET DEFINE OFF;
REM INSERTING into BASKET
SET DEFINE OFF;
REM INSERTING into COUPON
SET DEFINE OFF;
Insert into COUPON (COUPON_NO,COUPON_ID,COUPON_VALUE,COUPON_S_VALIDITY,COUPON_E_VALIDITY) values (1,'10%할인','10',to_date('20/05/17','RR/MM/DD'),to_date('20/06/18','RR/MM/DD'));
REM INSERTING into COUPON_STATUS
SET DEFINE OFF;
REM INSERTING into GOODS
SET DEFINE OFF;

REM INSERTING into GOODS_ATTRIBUTE
SET DEFINE OFF;

REM INSERTING into GOODS_IMAGE
SET DEFINE OFF;

REM INSERTING into GOODS_LIKE
SET DEFINE OFF;
REM INSERTING into GOODS_QNA
SET DEFINE OFF;

REM INSERTING into MEMBER
SET DEFINE OFF;
Insert into MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PASSWD,MEMBER_NAME,MEMBER_BIRTH,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ZIPCODE,MEMBER_ADDR1,MEMBER_ADDR2,MEMBER_DATE,MEMBER_GRADE,MEMBER_TOTAL,MEMBER_LOG,MEMBER_DELETE) values (3,'hnjung','jung2201!','정하나',to_date('84/02/12','RR/MM/DD'),'hnjung@test.com','01044448888','12345','서울','살만한데',to_date('20/06/17','RR/MM/DD'),'NORMAL',null,to_date('20/06/17','RR/MM/DD'),'0');
Insert into MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PASSWD,MEMBER_NAME,MEMBER_BIRTH,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ZIPCODE,MEMBER_ADDR1,MEMBER_ADDR2,MEMBER_DATE,MEMBER_GRADE,MEMBER_TOTAL,MEMBER_LOG,MEMBER_DELETE) values (4,'mekang','kang0022@','강미애',to_date('98/06/07','RR/MM/DD'),'mekang@gmail.com','01032142423','123456','서울특별시','종로구',to_date('20/06/17','RR/MM/DD'),'NORMAL',null,to_date('20/06/17','RR/MM/DD'),'0');
Insert into MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PASSWD,MEMBER_NAME,MEMBER_BIRTH,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ZIPCODE,MEMBER_ADDR1,MEMBER_ADDR2,MEMBER_DATE,MEMBER_GRADE,MEMBER_TOTAL,MEMBER_LOG,MEMBER_DELETE) values (5,'ckyun','yun0032!@','윤철규',to_date('92/02/01','RR/MM/DD'),'ckyun@gmail.com','01030582757','121258','서울시 마포구','망원2동 종로 빌딩 501',to_date('20/06/17','RR/MM/DD'),'NORMAL',null,to_date('20/06/17','RR/MM/DD'),'0');

Insert into MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PASSWD,MEMBER_NAME,MEMBER_BIRTH,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ZIPCODE,MEMBER_ADDR1,MEMBER_ADDR2,MEMBER_DATE,MEMBER_GRADE,MEMBER_TOTAL,MEMBER_LOG,MEMBER_DELETE) values (6,'shpark931','wlaud@10','박수현',to_date('96/01/01','RR/MM/DD'),'shpark931@gmail.com','01044559000','123456','서울특별시','종로구',to_date('20/06/17','RR/MM/DD'),'NORMAL',null,to_date('20/06/17','RR/MM/DD'),'0');
Insert into MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PASSWD,MEMBER_NAME,MEMBER_BIRTH,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ZIPCODE,MEMBER_ADDR1,MEMBER_ADDR2,MEMBER_DATE,MEMBER_GRADE,MEMBER_TOTAL,MEMBER_LOG,MEMBER_DELETE) values (7,'hrlim','lim0001@','임효림',to_date('98/06/07','RR/MM/DD'),'hrlim@gmail.com','01012345678','123456','서울특별시','종로구',to_date('20/06/17','RR/MM/DD'),'NORMAL',null,to_date('20/06/17','RR/MM/DD'),'0');
Insert into MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PASSWD,MEMBER_NAME,MEMBER_BIRTH,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ZIPCODE,MEMBER_ADDR1,MEMBER_ADDR2,MEMBER_DATE,MEMBER_GRADE,MEMBER_TOTAL,MEMBER_LOG,MEMBER_DELETE) values (8,'jmpark','park0023!','박지명',to_date('96/12/31','RR/MM/DD'),'jmpark@gmail.com','01012345678','123456','서울특별시','종로구',to_date('20/06/17','RR/MM/DD'),'NORMAL',null,to_date('20/06/17','RR/MM/DD'),'0');
Insert into MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PASSWD,MEMBER_NAME,MEMBER_BIRTH,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ZIPCODE,MEMBER_ADDR1,MEMBER_ADDR2,MEMBER_DATE,MEMBER_GRADE,MEMBER_TOTAL,MEMBER_LOG,MEMBER_DELETE) values (9,'ejoh','oh0010!','오은진',to_date('00/01/01','RR/MM/DD'),'ejoh@gmail.com','01012345678','123456','서울특별시','종로구',to_date('20/06/17','RR/MM/DD'),'NORMAL',null,to_date('20/06/17','RR/MM/DD'),'0');
Insert into MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PASSWD,MEMBER_NAME,MEMBER_BIRTH,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ZIPCODE,MEMBER_ADDR1,MEMBER_ADDR2,MEMBER_DATE,MEMBER_GRADE,MEMBER_TOTAL,MEMBER_LOG,MEMBER_DELETE) values (10,'hjjeon','jeon1001!','전형준',to_date('96/01/01','RR/MM/DD'),'hjjeon@gmail.com','01012345678','123456','서울특별시','종로구',to_date('20/06/17','RR/MM/DD'),'NORMAL',null,to_date('20/06/17','RR/MM/DD'),'0');
Insert into MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PASSWD,MEMBER_NAME,MEMBER_BIRTH,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ZIPCODE,MEMBER_ADDR1,MEMBER_ADDR2,MEMBER_DATE,MEMBER_GRADE,MEMBER_TOTAL,MEMBER_LOG,MEMBER_DELETE) values (11,'jsjung','jung3001@','정재석',to_date('98/01/01','RR/MM/DD'),'jsjung@gmail.com','01012345678','123456','서울특별시','종로구',to_date('20/06/17','RR/MM/DD'),'NORMAL',null,to_date('20/06/17','RR/MM/DD'),'0');
Insert into MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PASSWD,MEMBER_NAME,MEMBER_BIRTH,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ZIPCODE,MEMBER_ADDR1,MEMBER_ADDR2,MEMBER_DATE,MEMBER_GRADE,MEMBER_TOTAL,MEMBER_LOG,MEMBER_DELETE) values (12,'khlee','lee2002@','이건희',to_date('94/01/01','RR/MM/DD'),'khlee@gmail.com','01012345678','123456','서울특별시','종로구',to_date('20/06/17','RR/MM/DD'),'NORMAL',null,to_date('20/06/17','RR/MM/DD'),'0');

Insert into MEMBER (MEMBER_NO,MEMBER_ID,MEMBER_PASSWD,MEMBER_NAME,MEMBER_BIRTH,MEMBER_EMAIL,MEMBER_PHONE,MEMBER_ZIPCODE,MEMBER_ADDR1,MEMBER_ADDR2,MEMBER_DATE,MEMBER_GRADE,MEMBER_TOTAL,MEMBER_LOG,MEMBER_DELETE) values (13,'sksrkl3600','sksmswlaud@30','관리자',to_date('94/12/30','RR/MM/DD'),'skrkl3600@naver.com','01035227801','123456','서울특별시','종로구',to_date('20/06/17','RR/MM/DD'),'NORMAL',null,to_date('20/06/17','RR/MM/DD'),'0');

REM INSERTING into NOTICE
SET DEFINE OFF;
REM INSERTING into ORDER_DETAIL
SET DEFINE OFF;
REM INSERTING into ORDER_LIST
SET DEFINE OFF;
REM INSERTING into POINT
SET DEFINE OFF;
REM INSERTING into QNA
SET DEFINE OFF;
REM INSERTING into REVIEW
SET DEFINE OFF;
REM INSERTING into REVIEW_IMAGE
SET DEFINE OFF;
REM INSERTING into UPLOAD
SET DEFINE OFF;
REM INSERTING into ZIPCODE
SET DEFINE OFF;

CREATE UNIQUE INDEX "AS_LIST_PK" ON "AS_LIST" ("AS_NO");

CREATE UNIQUE INDEX "BASKET_PK" ON "BASKET" ("BASKET_NO");

CREATE UNIQUE INDEX "SYS_C0012286" ON "COUPON" ("COUPON_NO");

CREATE UNIQUE INDEX "SYS_C0012290" ON "COUPON_STATUS" ("COUPON_STATUS_NO");

CREATE UNIQUE INDEX "GOODS_PK" ON "GOODS" ("GOODS_NO");

CREATE UNIQUE INDEX "GOODS_ATTRIBUTE_PK" ON "GOODS_ATTRIBUTE" ("GOODS_ATT_NO");

CREATE UNIQUE INDEX "SYS_C0012042" ON "GOODS_IMAGE" ("GOODS_IMAGE_NUM");

CREATE UNIQUE INDEX "SYS_C0012197" ON "GOODS_LIKE" ("LIKE_NO");

CREATE UNIQUE INDEX "SYS_C0012331" ON "GOODS_QNA" ("GOODS_QNA_NO");

CREATE UNIQUE INDEX "SYS_C0012280" ON "MEMBER" ("MEMBER_NO");

CREATE UNIQUE INDEX "SYS_C0012339" ON "NOTICE" ("NOTICE_NO");

CREATE UNIQUE INDEX "ORDER_DETAIL_PK" ON "ORDER_DETAIL" ("ORDER_DETAIL_NO");


CREATE UNIQUE INDEX "SYS_C0012309" ON "ORDER_LIST" ("ORDER_NO");

CREATE UNIQUE INDEX "SYS_C0012295" ON "POINT" ("POINT_NO");

CREATE UNIQUE INDEX "SYS_C0012350" ON "QNA" ("QNA_NO");

CREATE UNIQUE INDEX "SYS_C0012543" ON "REVIEW" ("REVIEW_NO");

CREATE UNIQUE INDEX "SYS_C0012577" ON "REVIEW_IMAGE" ("REVIEW_IMAGE_NUM");

CREATE UNIQUE INDEX "SYS_C0011928" ON "UPLOAD" ("UPLOAD_NO");

ALTER TABLE "AS_LIST" ADD CONSTRAINT "AS_LIST_PK" PRIMARY KEY ("AS_NO") ENABLE;
 
ALTER TABLE "AS_LIST" MODIFY ("AS_NO" NOT NULL ENABLE);
 
ALTER TABLE "AS_LIST" MODIFY ("AS_GUBUN" NOT NULL ENABLE);
 
ALTER TABLE "AS_LIST" MODIFY ("MEMBER_NO" NOT NULL ENABLE);
 
ALTER TABLE "AS_LIST" MODIFY ("AS_TITLE" NOT NULL ENABLE);
 
ALTER TABLE "AS_LIST" MODIFY ("AS_CONTENT" NOT NULL ENABLE);
 
ALTER TABLE "AS_LIST" MODIFY ("ORDER_NO" NOT NULL ENABLE);
 
ALTER TABLE "AS_LIST" MODIFY ("ORDER_DETAIL_NO" NOT NULL ENABLE);
 
ALTER TABLE "AS_LIST" MODIFY ("AS_STATE" NOT NULL ENABLE);
 
ALTER TABLE "AS_LIST" MODIFY ("AS_SDATE" NOT NULL ENABLE);
 
ALTER TABLE "AS_LIST" MODIFY ("AS_EDATE" NOT NULL ENABLE);

ALTER TABLE "BASKET" ADD CONSTRAINT "BASKET_PK" PRIMARY KEY ("BASKET_NO") ENABLE;
 
ALTER TABLE "BASKET" MODIFY ("BASKET_NO" NOT NULL ENABLE);
 
ALTER TABLE "BASKET" MODIFY ("MEMBER_NO" NOT NULL ENABLE);
 
ALTER TABLE "BASKET" MODIFY ("GOODS_NO" NOT NULL ENABLE);
 
ALTER TABLE "BASKET" MODIFY ("GOODS_ATT_NO" NOT NULL ENABLE);
 
ALTER TABLE "BASKET" MODIFY ("BASKET_GOODS_AMOUNT" NOT NULL ENABLE);
 
ALTER TABLE "BASKET" MODIFY ("BASKET_DATE" NOT NULL ENABLE);
 
ALTER TABLE "BASKET" MODIFY ("ORDER_COLOR" NOT NULL ENABLE);
 
ALTER TABLE "BASKET" MODIFY ("ORDER_SIZE" NOT NULL ENABLE);

ALTER TABLE "COUPON" MODIFY ("COUPON_NO" NOT NULL ENABLE);
 
ALTER TABLE "COUPON" MODIFY ("COUPON_ID" NOT NULL ENABLE);
 
ALTER TABLE "COUPON" MODIFY ("COUPON_VALUE" NOT NULL ENABLE);
 
ALTER TABLE "COUPON" MODIFY ("COUPON_S_VALIDITY" NOT NULL ENABLE);
 
ALTER TABLE "COUPON" MODIFY ("COUPON_E_VALIDITY" NOT NULL ENABLE);
 
ALTER TABLE "COUPON" ADD PRIMARY KEY ("COUPON_NO") ENABLE;

ALTER TABLE "COUPON_STATUS" MODIFY ("COUPON_STATUS_NO" NOT NULL ENABLE);
 
ALTER TABLE "COUPON_STATUS" MODIFY ("COUPON_NO" NOT NULL ENABLE);
 
ALTER TABLE "COUPON_STATUS" MODIFY ("MEMBER_NO" NOT NULL ENABLE);
 
ALTER TABLE "COUPON_STATUS" ADD PRIMARY KEY ("COUPON_STATUS_NO") ENABLE;

ALTER TABLE "GOODS" ADD CONSTRAINT "GOODS_PK" PRIMARY KEY ("GOODS_NO") ENABLE;
 
ALTER TABLE "GOODS" MODIFY ("GOODS_NO" NOT NULL ENABLE);
 
ALTER TABLE "GOODS" MODIFY ("GOODS_CATEGORY" NOT NULL ENABLE);
 
ALTER TABLE "GOODS" MODIFY ("GOODS_NAME" NOT NULL ENABLE);
 
ALTER TABLE "GOODS" MODIFY ("GOODS_CONTENT" NOT NULL ENABLE);
 
ALTER TABLE "GOODS" MODIFY ("GOODS_ORIGIN_PRICE" NOT NULL ENABLE);
 
ALTER TABLE "GOODS" MODIFY ("GOODS_SELL_PRICE" NOT NULL ENABLE);
 
ALTER TABLE "GOODS" MODIFY ("GOODS_DATE" NOT NULL ENABLE);

ALTER TABLE "GOODS_ATTRIBUTE" ADD CONSTRAINT "GOODS_ATTRIBUTE_PK" PRIMARY KEY ("GOODS_ATT_NO") ENABLE;
 
ALTER TABLE "GOODS_ATTRIBUTE" MODIFY ("GOODS_ATT_NO" NOT NULL ENABLE);
 
ALTER TABLE "GOODS_ATTRIBUTE" MODIFY ("GOODS_NO" NOT NULL ENABLE);
 
ALTER TABLE "GOODS_ATTRIBUTE" MODIFY ("GOODS_ATT_SIZE" NOT NULL ENABLE);
 
ALTER TABLE "GOODS_ATTRIBUTE" MODIFY ("GOODS_ATT_AMOUNT" NOT NULL ENABLE);

ALTER TABLE "GOODS_IMAGE" MODIFY ("GOODS_NO" NOT NULL ENABLE);
 
ALTER TABLE "GOODS_IMAGE" MODIFY ("GOODS_IMAGE_ORG" NOT NULL ENABLE);
 
ALTER TABLE "GOODS_IMAGE" MODIFY ("GOODS_IMAGE_STD" NOT NULL ENABLE);
 
ALTER TABLE "GOODS_IMAGE" ADD PRIMARY KEY ("GOODS_IMAGE_NUM") ENABLE;

ALTER TABLE "GOODS_LIKE" MODIFY ("LIKE_NO" NOT NULL ENABLE);
 
ALTER TABLE "GOODS_LIKE" MODIFY ("GOODS_NO" NOT NULL ENABLE);
 
ALTER TABLE "GOODS_LIKE" MODIFY ("MEMBER_NO" NOT NULL ENABLE);
 
ALTER TABLE "GOODS_LIKE" ADD PRIMARY KEY ("LIKE_NO") ENABLE;

ALTER TABLE "GOODS_QNA" MODIFY ("GOODS_QNA_NO" NOT NULL ENABLE);
 
ALTER TABLE "GOODS_QNA" MODIFY ("GOODS_NO" NOT NULL ENABLE);
 
ALTER TABLE "GOODS_QNA" MODIFY ("MEMBER_NO" NOT NULL ENABLE);
 
ALTER TABLE "GOODS_QNA" MODIFY ("GOODS_QNA_LEVEL" NOT NULL ENABLE);
 
ALTER TABLE "GOODS_QNA" MODIFY ("GOODS_QNA_TITLE" NOT NULL ENABLE);
 
ALTER TABLE "GOODS_QNA" MODIFY ("GOODS_QNA_CONTENT" NOT NULL ENABLE);
 
ALTER TABLE "GOODS_QNA" MODIFY ("GOODS_QNA_DATE" NOT NULL ENABLE);
 
ALTER TABLE "GOODS_QNA" ADD PRIMARY KEY ("GOODS_QNA_NO") ENABLE;

ALTER TABLE "MEMBER" MODIFY ("MEMBER_NO" NOT NULL ENABLE);
 
ALTER TABLE "MEMBER" MODIFY ("MEMBER_ID" NOT NULL ENABLE);
 
ALTER TABLE "MEMBER" MODIFY ("MEMBER_PASSWD" NOT NULL ENABLE);
 
ALTER TABLE "MEMBER" MODIFY ("MEMBER_NAME" NOT NULL ENABLE);
 
ALTER TABLE "MEMBER" MODIFY ("MEMBER_BIRTH" NOT NULL ENABLE);
 
ALTER TABLE "MEMBER" MODIFY ("MEMBER_EMAIL" NOT NULL ENABLE);
 
ALTER TABLE "MEMBER" MODIFY ("MEMBER_PHONE" NOT NULL ENABLE);
 
ALTER TABLE "MEMBER" MODIFY ("MEMBER_ZIPCODE" NOT NULL ENABLE);
 
ALTER TABLE "MEMBER" MODIFY ("MEMBER_ADDR1" NOT NULL ENABLE);
 
ALTER TABLE "MEMBER" MODIFY ("MEMBER_ADDR2" NOT NULL ENABLE);
 
ALTER TABLE "MEMBER" MODIFY ("MEMBER_DATE" NOT NULL ENABLE);
 
ALTER TABLE "MEMBER" MODIFY ("MEMBER_GRADE" NOT NULL ENABLE);
 
ALTER TABLE "MEMBER" MODIFY ("MEMBER_LOG" NOT NULL ENABLE);
 
ALTER TABLE "MEMBER" ADD PRIMARY KEY ("MEMBER_NO") ENABLE;

ALTER TABLE "NOTICE" MODIFY ("NOTICE_NO" NOT NULL ENABLE);
 
ALTER TABLE "NOTICE" MODIFY ("NOTICE_TITLE" NOT NULL ENABLE);
 
ALTER TABLE "NOTICE" MODIFY ("NOTICE_CONTENT" NOT NULL ENABLE);
 
ALTER TABLE "NOTICE" MODIFY ("NOTICE_DATE" NOT NULL ENABLE);
 
ALTER TABLE "NOTICE" MODIFY ("MEMBER_NO" NOT NULL ENABLE);
 
ALTER TABLE "NOTICE" ADD PRIMARY KEY ("NOTICE_NO") ENABLE;

ALTER TABLE "ORDER_DETAIL" ADD CONSTRAINT "ORDER_DETAIL_PK" PRIMARY KEY ("ORDER_DETAIL_NO") ENABLE;
 
ALTER TABLE "ORDER_DETAIL" MODIFY ("ORDER_DETAIL_NO" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_DETAIL" MODIFY ("ORDER_NO" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_DETAIL" MODIFY ("GOODS_NO" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_DETAIL" MODIFY ("GOODS_ATT_NO" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_DETAIL" MODIFY ("ORDER_DETAIL_PRICE" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_DETAIL" MODIFY ("ORDER_DETAIL_COLOR" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_DETAIL" MODIFY ("ORDER_DETAIL_SIZE" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_DETAIL" MODIFY ("ORDER_DETAIL_AMOUNT" NOT NULL ENABLE);

ALTER TABLE "ORDER_LIST" MODIFY ("ORDER_NO" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_LIST" MODIFY ("MEMBER_NO" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_LIST" MODIFY ("ORDER_NAME" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_LIST" MODIFY ("ORDER_ZIPCODE" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_LIST" MODIFY ("ORDER_ADDR1" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_LIST" MODIFY ("ORDER_ADDR2" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_LIST" MODIFY ("ORDER_PHONE" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_LIST" MODIFY ("ORDER_PAY_NAME" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_LIST" MODIFY ("ORDER_PAY_OPTION" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_LIST" MODIFY ("ORDER_DATE" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_LIST" MODIFY ("ORDER_TOTAL_ORDER_PRICE" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_LIST" MODIFY ("ORDER_TOTAL_PAY_PRICE" NOT NULL ENABLE);
 
ALTER TABLE "ORDER_LIST" ADD PRIMARY KEY ("ORDER_NO") ENABLE;

ALTER TABLE "POINT" MODIFY ("POINT_NO" NOT NULL ENABLE);
 
ALTER TABLE "POINT" MODIFY ("MEMBER_NO" NOT NULL ENABLE);
 
ALTER TABLE "POINT" ADD PRIMARY KEY ("POINT_NO") ENABLE;

ALTER TABLE "QNA" MODIFY ("QNA_NO" NOT NULL ENABLE);
 
ALTER TABLE "QNA" MODIFY ("MEMBER_NO" NOT NULL ENABLE);
 
ALTER TABLE "QNA" MODIFY ("QNA_NAME" NOT NULL ENABLE);
 
ALTER TABLE "QNA" MODIFY ("QNA_LEVEL" NOT NULL ENABLE);
 
ALTER TABLE "QNA" MODIFY ("QNA_CATEGORY" NOT NULL ENABLE);
 
ALTER TABLE "QNA" MODIFY ("QNA_TITLE" NOT NULL ENABLE);
 
ALTER TABLE "QNA" MODIFY ("QNA_CONTENT" NOT NULL ENABLE);
 
ALTER TABLE "QNA" MODIFY ("QNA_DATE" NOT NULL ENABLE);
 
ALTER TABLE "QNA" ADD PRIMARY KEY ("QNA_NO") ENABLE;

ALTER TABLE "REVIEW" MODIFY ("REVIEW_NO" NOT NULL ENABLE);
 
ALTER TABLE "REVIEW" MODIFY ("MEMBER_NO" NOT NULL ENABLE);
 
ALTER TABLE "REVIEW" MODIFY ("REVIEW_TITLE" NOT NULL ENABLE);
 
ALTER TABLE "REVIEW" MODIFY ("REVIEW_CONTENT" NOT NULL ENABLE);
 
ALTER TABLE "REVIEW" MODIFY ("REVIEW_DATE" NOT NULL ENABLE);
 
ALTER TABLE "REVIEW" ADD PRIMARY KEY ("REVIEW_NO") ENABLE;
 
ALTER TABLE "REVIEW" MODIFY ("GOODS_NO" NOT NULL ENABLE);
 
ALTER TABLE "REVIEW" MODIFY ("REVIEW_READCNT" NOT NULL ENABLE);

ALTER TABLE "REVIEW_IMAGE" MODIFY ("GOODS_NO" NOT NULL ENABLE);
 
ALTER TABLE "REVIEW_IMAGE" MODIFY ("REVIEW_IMAGE_ORG" NOT NULL ENABLE);
 
ALTER TABLE "REVIEW_IMAGE" MODIFY ("REVIEW_IMAGE_STD" NOT NULL ENABLE);
 
ALTER TABLE "REVIEW_IMAGE" ADD PRIMARY KEY ("REVIEW_IMAGE_NUM") ENABLE;

ALTER TABLE "UPLOAD" MODIFY ("UPLOAD_NO" NOT NULL ENABLE);
 
ALTER TABLE "UPLOAD" MODIFY ("UPLOAD_ORIGIN_NAME" NOT NULL ENABLE);
 
ALTER TABLE "UPLOAD" MODIFY ("UPLOAD_SAVE_NAME" NOT NULL ENABLE);
 
ALTER TABLE "UPLOAD" MODIFY ("UPLOAD_SIZE" NOT NULL ENABLE);
 
ALTER TABLE "UPLOAD" ADD PRIMARY KEY ("UPLOAD_NO") ENABLE;

ALTER TABLE "AS_LIST" ADD CONSTRAINT "AS_LIST_FK_1" FOREIGN KEY ("ORDER_NO") REFERENCES "ORDER_LIST" ("ORDER_NO") ENABLE;
 
ALTER TABLE "AS_LIST" ADD CONSTRAINT "AS_LIST_FK_2" FOREIGN KEY ("ORDER_DETAIL_NO") REFERENCES "ORDER_DETAIL" ("ORDER_DETAIL_NO") ENABLE;
 
ALTER TABLE "AS_LIST" ADD CONSTRAINT "AS_LIST_FK_3" FOREIGN KEY ("MEMBER_NO") REFERENCES "MEMBER" ("MEMBER_NO") ENABLE;

ALTER TABLE "BASKET" ADD CONSTRAINT "BASKET_FK_1" FOREIGN KEY ("GOODS_NO") REFERENCES "GOODS" ("GOODS_NO") ENABLE;
 
ALTER TABLE "BASKET" ADD CONSTRAINT "BASKET_FK_2" FOREIGN KEY ("GOODS_ATT_NO") REFERENCES "GOODS_ATTRIBUTE" ("GOODS_ATT_NO") ENABLE;

ALTER TABLE "COUPON_STATUS" ADD CONSTRAINT "COUPON_STATUS_FK_1" FOREIGN KEY ("COUPON_NO") REFERENCES "COUPON" ("COUPON_NO") ENABLE;
 
ALTER TABLE "COUPON_STATUS" ADD CONSTRAINT "COUPON_STATUS_FK_2" FOREIGN KEY ("MEMBER_NO") REFERENCES "MEMBER" ("MEMBER_NO") ENABLE;

ALTER TABLE "GOODS_ATTRIBUTE" ADD CONSTRAINT "GOODS_ATTRIUTE_FK_1" FOREIGN KEY ("GOODS_NO") REFERENCES "GOODS" ("GOODS_NO") ENABLE;

ALTER TABLE "GOODS_IMAGE" ADD CONSTRAINT "GOODS_IMAGE_FK" FOREIGN KEY ("GOODS_NO") REFERENCES "GOODS" ("GOODS_NO") ENABLE;

ALTER TABLE "GOODS_LIKE" ADD CONSTRAINT "GOODS_LIKE_FK_1" FOREIGN KEY ("GOODS_NO") REFERENCES "GOODS" ("GOODS_NO") ENABLE;

ALTER TABLE "GOODS_QNA" ADD CONSTRAINT "GOODS_QNA_FK_1" FOREIGN KEY ("GOODS_NO") REFERENCES "GOODS" ("GOODS_NO") ENABLE;
 
ALTER TABLE "GOODS_QNA" ADD CONSTRAINT "GOODS_QNA_FK_2" FOREIGN KEY ("MEMBER_NO") REFERENCES "MEMBER" ("MEMBER_NO") ENABLE;

ALTER TABLE "NOTICE" ADD CONSTRAINT "NOTICE_FK_1" FOREIGN KEY ("MEMBER_NO") REFERENCES "MEMBER" ("MEMBER_NO") ENABLE;

ALTER TABLE "ORDER_DETAIL" ADD CONSTRAINT "ORDER_DETAIL_FK_1" FOREIGN KEY ("GOODS_NO") REFERENCES "GOODS" ("GOODS_NO") ENABLE;
 
ALTER TABLE "ORDER_DETAIL" ADD CONSTRAINT "ORDER_DETAIL_FK_2" FOREIGN KEY ("ORDER_NO") REFERENCES "ORDER_LIST" ("ORDER_NO") ENABLE;
 
ALTER TABLE "ORDER_DETAIL" ADD CONSTRAINT "ORDER_DETAIL_FK_3" FOREIGN KEY ("GOODS_ATT_NO") REFERENCES "GOODS_ATTRIBUTE" ("GOODS_ATT_NO") ENABLE;
 
ALTER TABLE "ORDER_DETAIL" ADD CONSTRAINT "ORDER_DETAIL_FK_4" FOREIGN KEY ("COUPON_NO") REFERENCES "COUPON" ("COUPON_NO") DISABLE;

ALTER TABLE "ORDER_LIST" ADD CONSTRAINT "ORDER_LIST_FK_1" FOREIGN KEY ("MEMBER_NO") REFERENCES "MEMBER" ("MEMBER_NO") ENABLE;

ALTER TABLE "POINT" ADD CONSTRAINT "POINT_FK_1" FOREIGN KEY ("MEMBER_NO") REFERENCES "MEMBER" ("MEMBER_NO") ENABLE;

ALTER TABLE "QNA" ADD CONSTRAINT "QNA_FK_1" FOREIGN KEY ("MEMBER_NO") REFERENCES "MEMBER" ("MEMBER_NO") ENABLE;

ALTER TABLE "REVIEW" ADD CONSTRAINT "GOODS_REVIEW_FK_1" FOREIGN KEY ("GOODS_NO") REFERENCES "GOODS" ("GOODS_NO") ENABLE;
 
ALTER TABLE "REVIEW" ADD CONSTRAINT "REVIEW_FK_1" FOREIGN KEY ("ORDER_NO") REFERENCES "ORDER_LIST" ("ORDER_NO") ENABLE;
 
ALTER TABLE "REVIEW" ADD CONSTRAINT "REVIEW_FK_2" FOREIGN KEY ("ORDER_DETAIL_NO") REFERENCES "ORDER_DETAIL" ("ORDER_DETAIL_NO") ENABLE;
 
ALTER TABLE "REVIEW" ADD CONSTRAINT "REVIEW_FK_3" FOREIGN KEY ("MEMBER_NO") REFERENCES "MEMBER" ("MEMBER_NO") ENABLE;

ALTER TABLE "REVIEW_IMAGE" ADD CONSTRAINT "REVIEW_IMAGE_FK" FOREIGN KEY ("GOODS_NO") REFERENCES "GOODS" ("GOODS_NO") ENABLE;

CREATE SEQUENCE  "AS_NO_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 5 CACHE 20 NOORDER  NOCYCLE;

CREATE SEQUENCE  "BASKET_NO_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 388 CACHE 20 NOORDER  NOCYCLE;

CREATE SEQUENCE  "COUPON_NO_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE;

CREATE SEQUENCE  "COUPON_STATUS_NO_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE;

CREATE SEQUENCE  "GOODS_ATT_NO_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 859 CACHE 20 NOORDER  NOCYCLE;

CREATE SEQUENCE  "GOODS_IMAGE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 316 CACHE 20 NOORDER  NOCYCLE;

CREATE SEQUENCE  "GOODS_NO_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 411 CACHE 20 NOORDER  NOCYCLE;

CREATE SEQUENCE  "GOODS_QNA_NO_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 33 CACHE 20 NOORDER  NOCYCLE;

CREATE SEQUENCE  "LIKE_NO_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 94 CACHE 20 NOORDER  NOCYCLE;

CREATE SEQUENCE  "MEMBER_NO_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 14 CACHE 20 NOORDER  NOCYCLE;

CREATE SEQUENCE  "NOTICE_NO_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE;

CREATE SEQUENCE  "ORDER_DETAIL_NO_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 102 CACHE 20 NOORDER  NOCYCLE;

CREATE SEQUENCE  "ORDER_NO_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 16 CACHE 20 NOORDER  NOCYCLE;

CREATE SEQUENCE  "POINT_NO_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 17 CACHE 20 NOORDER  NOCYCLE;

CREATE SEQUENCE  "QNA_NO_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 1 CACHE 20 NOORDER  NOCYCLE;

CREATE SEQUENCE  "REVIEW_IMAGE_SEQ"  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 28 CACHE 20 NOORDER  NOCYCLE;

CREATE SEQUENCE  "REVIEW_NO_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 36 CACHE 20 NOORDER  NOCYCLE;

CREATE SEQUENCE  "UPLOAD_NO_SEQ"  MINVALUE 1 MAXVALUE 99999 INCREMENT BY 1 START WITH 61 CACHE 20 NOORDER  NOCYCLE;

INSERT INTO GOODS (GOODS_NO, GOODS_CATEGORY, GOODS_NAME, GOODS_CONTENT, GOODS_ORIGIN_PRICE, GOODS_SELL_PRICE, GOODS_SALE_PRICE, GOODS_DATE, GOODS_KEYWORD, GOODS_READCNT, GOODS_PICK, GOODS_THUMBNAIL, GUBUN) VALUES (494, 'one-piece', '투웨이 스모크미니원피스', '<p><img alt="" src="/file/a14b316d9d604efa9d8cef733cebf38d.jpg" style="height:860px; width:860px" /><img alt="" src="/file/60313b2f58d541f3b2666b27ea11db30.jpg" style="height:860px; width:860px" /></p>', 38000, 30000, 8000, TO_DATE('2022-09-14 02:20:14', 'YYYY-MM-DD HH24:MI:SS'), '원피스', 1, 'BEST,MD PICK', 'a14b316d9d604efa9d8cef733cebf38d.jpg', '0');
INSERT INTO GOODS (GOODS_NO, GOODS_CATEGORY, GOODS_NAME, GOODS_CONTENT, GOODS_ORIGIN_PRICE, GOODS_SELL_PRICE, GOODS_SALE_PRICE, GOODS_DATE, GOODS_KEYWORD, GOODS_READCNT, GOODS_PICK, GOODS_THUMBNAIL, GUBUN) VALUES (493, 'top', '써머랜드 루즈 셔츠', '<p><img alt="" src="/file/d29e980c7b734b3b9d624487c7398c53.jpg" style="height:860px; width:947px" /><img alt="" src="/file/93829c83aab34a4aa1322140970f7d59.jpg" style="height:860px; width:860px" /></p>', 28000, 24000, 4000, TO_DATE('2022-09-14 02:15:38', 'YYYY-MM-DD HH24:MI:SS'), '셔츠', 3, 'BEST,MD PICK,MUSTHAVE', 'd29e980c7b734b3b9d624487c7398c53.jpg', '0');
INSERT INTO GOODS (GOODS_NO, GOODS_CATEGORY, GOODS_NAME, GOODS_CONTENT, GOODS_ORIGIN_PRICE, GOODS_SELL_PRICE, GOODS_SALE_PRICE, GOODS_DATE, GOODS_KEYWORD, GOODS_READCNT, GOODS_PICK, GOODS_THUMBNAIL, GUBUN) VALUES (495, 'bottom', '트루디 레이어드 미니스커트', '<p><img alt="" src="/file/b18894265a2649a0bd5263b7db581294.jpg" style="height:860px; width:860px" /><img alt="" src="/file/886ca6c5308f4645acfb4613e538b130.jpg" style="height:860px; width:860px" /></p>', 26000, 20000, 6000, TO_DATE('2022-09-14 02:23:10', 'YYYY-MM-DD HH24:MI:SS'), '치마', 1, 'BEST,MD PICK,MUSTHAVE', 'b18894265a2649a0bd5263b7db581294.jpg', '0');
INSERT INTO GOODS (GOODS_NO, GOODS_CATEGORY, GOODS_NAME, GOODS_CONTENT, GOODS_ORIGIN_PRICE, GOODS_SELL_PRICE, GOODS_SALE_PRICE, GOODS_DATE, GOODS_KEYWORD, GOODS_READCNT, GOODS_PICK, GOODS_THUMBNAIL, GUBUN) VALUES (496, 'acc', '페리체리 쉬폰헤어밴드', '<p><img alt="" src="/file/2612c46b4c7b417f952af99f5ad06706.jpg" style="height:860px; width:860px" /><img alt="" src="/file/1b648d8b9e5d48fdaebf728d97bc126b.jpg" style="height:860px; width:860px" /></p>', 4000, 2000, 2000, TO_DATE('2022-09-14 02:25:51', 'YYYY-MM-DD HH24:MI:SS'), '밴드', 5, 'MD PICK,MUSTHAVE', '2612c46b4c7b417f952af99f5ad06706.jpg', '0');
INSERT INTO GOODS (GOODS_NO, GOODS_CATEGORY, GOODS_NAME, GOODS_CONTENT, GOODS_ORIGIN_PRICE, GOODS_SELL_PRICE, GOODS_SALE_PRICE, GOODS_DATE, GOODS_KEYWORD, GOODS_READCNT, GOODS_PICK, GOODS_THUMBNAIL, GUBUN) VALUES (491, 'outer', '세르지 썸머 가디건', '<p><img alt="" src="/file/16995e1b5c3e4339863a0ce25fa1b844.jpg" style="height:860px; width:860px" /><img alt="" src="/file/4ed44ef498cf4050be69f66873327cd4.jpg" style="height:855px; width:860px" /></p>', 32000, 30000, 2000, TO_DATE('2022-09-14 01:52:56', 'YYYY-MM-DD HH24:MI:SS'), '가디건', 2, 'BEST,MD PICK', '16995e1b5c3e4339863a0ce25fa1b844.jpg', '0');
INSERT INTO GOODS_ATTRIBUTE (GOODS_ATT_NO, GOODS_NO, GOODS_ATT_SIZE, GOODS_ATT_COLOR, GOODS_ATT_AMOUNT, GOODS_ATT_DISPLAY) VALUES (942, 494, 'FREE', '블루', 100, '0');
INSERT INTO GOODS_ATTRIBUTE (GOODS_ATT_NO, GOODS_NO, GOODS_ATT_SIZE, GOODS_ATT_COLOR, GOODS_ATT_AMOUNT, GOODS_ATT_DISPLAY) VALUES (941, 493, 'FREE', '블루', 100, '0');
INSERT INTO GOODS_ATTRIBUTE (GOODS_ATT_NO, GOODS_NO, GOODS_ATT_SIZE, GOODS_ATT_COLOR, GOODS_ATT_AMOUNT, GOODS_ATT_DISPLAY) VALUES (943, 495, 'S', '와인', 100, '0');
INSERT INTO GOODS_ATTRIBUTE (GOODS_ATT_NO, GOODS_NO, GOODS_ATT_SIZE, GOODS_ATT_COLOR, GOODS_ATT_AMOUNT, GOODS_ATT_DISPLAY) VALUES (944, 496, 'FREE', '화이트', 100, '0');
INSERT INTO GOODS_ATTRIBUTE (GOODS_ATT_NO, GOODS_NO, GOODS_ATT_SIZE, GOODS_ATT_COLOR, GOODS_ATT_AMOUNT, GOODS_ATT_DISPLAY) VALUES (939, 491, 'FREE', '그레이', 100, '0');
INSERT INTO GOODS_IMAGE (GOODS_IMAGE_NUM, GOODS_NO, GOODS_IMAGE_ORG, GOODS_IMAGE_STD) VALUES (399, 494, 'null', 'a14b316d9d604efa9d8cef733cebf38d.jpg,60313b2f58d541f3b2666b27ea11db30.jpg');
INSERT INTO GOODS_IMAGE (GOODS_IMAGE_NUM, GOODS_NO, GOODS_IMAGE_ORG, GOODS_IMAGE_STD) VALUES (400, 495, 'null', 'b18894265a2649a0bd5263b7db581294.jpg,886ca6c5308f4645acfb4613e538b130.jpg');
INSERT INTO GOODS_IMAGE (GOODS_IMAGE_NUM, GOODS_NO, GOODS_IMAGE_ORG, GOODS_IMAGE_STD) VALUES (398, 493, 'null', 'd29e980c7b734b3b9d624487c7398c53.jpg,93829c83aab34a4aa1322140970f7d59.jpg');
INSERT INTO GOODS_IMAGE (GOODS_IMAGE_NUM, GOODS_NO, GOODS_IMAGE_ORG, GOODS_IMAGE_STD) VALUES (401, 496, 'null', '2612c46b4c7b417f952af99f5ad06706.jpg,1b648d8b9e5d48fdaebf728d97bc126b.jpg');
INSERT INTO GOODS_IMAGE (GOODS_IMAGE_NUM, GOODS_NO, GOODS_IMAGE_ORG, GOODS_IMAGE_STD) VALUES (396, 491, 'null', '16995e1b5c3e4339863a0ce25fa1b844.jpg,4ed44ef498cf4050be69f66873327cd4.jpg');