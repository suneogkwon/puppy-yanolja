-- 테이블생성
CREATE TABLE SHOP_ITEM 
(
  IT_NO NUMBER NOT NULL 
, SHOP_NO NUMBER NOT NULL 
, IT_NAME VARCHAR2(225 BYTE) NOT NULL 
, IT_BRAND VARCHAR2(225 BYTE) 
, IT_CATEGORY VARCHAR2(225 BYTE) 
, IT_EXPLAN_TEXT VARCHAR2(225 BYTE) 
, CUST_PRICE NUMBER 
, PRICE NUMBER NOT NULL 
, SAVE_MONEY NUMBER 
, SHIPPING_CHARGE NUMBER 
, MAIN_FILE VARCHAR2(225 BYTE) NOT NULL 
, SUB_FILE VARCHAR2(225 BYTE) 
, MAIN_REAL_FILE VARCHAR2(300 BYTE) 
, SUB_REAL_FILE VARCHAR2(300 BYTE) 
, CONSTRAINT SHOP_ITEM_PK PRIMARY KEY 
  (
    IT_NO 
  , SHOP_NO 
  )
  USING INDEX 
  (
      CREATE UNIQUE INDEX SHOP_ITEM_PK ON SHOP_ITEM (IT_NO ASC, SHOP_NO ASC) 
      LOGGING 
      TABLESPACE SYSTEM 
      PCTFREE 10 
      INITRANS 2 
      STORAGE 
      ( 
        INITIAL 65536 
        NEXT 1048576 
        MINEXTENTS 1 
        MAXEXTENTS UNLIMITED 
        FREELISTS 1 
        FREELIST GROUPS 1 
        BUFFER_POOL DEFAULT 
      ) 
      NOPARALLEL 
  )
  ENABLE 
) 
LOGGING 
TABLESPACE SYSTEM 
PCTFREE 10 
PCTUSED 40 
INITRANS 1 
STORAGE 
( 
  INITIAL 65536 
  NEXT 1048576 
  MINEXTENTS 1 
  MAXEXTENTS UNLIMITED 
  FREELISTS 1 
  FREELIST GROUPS 1 
  BUFFER_POOL DEFAULT 
) 
NOPARALLEL;

COMMENT ON COLUMN SHOP_ITEM.IT_NO IS '상품번호,seq';

COMMENT ON COLUMN SHOP_ITEM.SHOP_NO IS 'SHOP번호';

COMMENT ON COLUMN SHOP_ITEM.IT_NAME IS '상품명';

COMMENT ON COLUMN SHOP_ITEM.IT_BRAND IS '브랜드명';

COMMENT ON COLUMN SHOP_ITEM.IT_CATEGORY IS '상품 카테고리';

COMMENT ON COLUMN SHOP_ITEM.IT_EXPLAN_TEXT IS '상품설명글';

COMMENT ON COLUMN SHOP_ITEM.CUST_PRICE IS '기존가격';

COMMENT ON COLUMN SHOP_ITEM.PRICE IS '판매가격';

COMMENT ON COLUMN SHOP_ITEM.SAVE_MONEY IS '적립금';

COMMENT ON COLUMN SHOP_ITEM.SHIPPING_CHARGE IS '배송비';

COMMENT ON COLUMN SHOP_ITEM.MAIN_FILE IS '메인이미지';

COMMENT ON COLUMN SHOP_ITEM.SUB_FILE IS '상세이미지';

COMMENT ON COLUMN SHOP_ITEM.MAIN_REAL_FILE IS '메인이미지파일이름';

COMMENT ON COLUMN SHOP_ITEM.SUB_REAL_FILE IS '상세페이지파일이름';


-- 시퀀스
CREATE SEQUENCE ITEM_SEQ INCREMENT BY 1 MAXVALUE 9999999999999999999999999999 MINVALUE 1 CACHE 20 ORDER;

-- 더미
-- 사료
insert into shop_item values (ITEM_SEQ.nextval,5,'피부모질 닥터독 사료2kg','닥터독','사료',
'맛있는 우리 아이 간식 NO.1 ! 최다구매율 제품 순위 1위',
29500,25000,150,3000,'product01.jpg','details_skin_01.jpg','product01.jpg','details_skin_01.jpg');

insert into shop_item values (ITEM_SEQ.nextval,5,'	관절 닥터독 사료2kg','닥터독','사료',
'맛있는 우리 아이 간식 NO.1 ! 최다구매율 제품 순위 1위',
29500,25000,150,3000,'product02.jpg','details_skin_01.jpg','product02.jpg','details_skin_01.jpg');

insert into shop_item values (ITEM_SEQ.nextval,5,'	위장 닥터독 사료2kg','닥터독','사료',
'맛있는 우리 아이 간식 NO.1 ! 최다구매율 제품 순위 1위',
29500,25000,150,3000,'product03.jpg','details_skin_01.jpg','product03.jpg','details_skin_01.jpg');

insert into shop_item values (ITEM_SEQ.nextval,5,'	시니어 닥터독 사료2kg','닥터독','사료',
'맛있는 우리 아이 간식 NO.1 ! 최다구매율 제품 순위 1위',
29500,25000,150,3000,'product04.jpg','details_skin_01.jpg','product04.jpg','details_skin_01.jpg');

insert into shop_item values (ITEM_SEQ.nextval,5,'	매일영양 닥터독 사료 2kg','닥터독','사료',
'맛있는 우리 아이 간식 NO.1 ! 최다구매율 제품 순위 1위',
29500,25000,150,3000,'product05.jpg','details_skin_01.jpg','product05.jpg','details_skin_01.jpg');

insert into shop_item values (ITEM_SEQ.nextval,5,'	다이어트 닥터독 사료2kg','닥터독','사료',
'맛있는 우리 아이 간식 NO.1 ! 최다구매율 제품 순위 1위',
30000,28500,150,3000,'product06.jpg','details_skin_01.jpg','product06.jpg','details_skin_01.jpg');

-- 간식
insert into shop_item values (ITEM_SEQ.nextval,5,'	[정기배송]젤리츄 연어','닥터독','간식',
'맛있는 우리 아이 간식 NO.1 ! 젤리츄~ 연어간식',
30000,28500,150,3000,'product_snack01.jpg','page_salmon_01.jpg','product_snack01.jpg','page_salmon_01.jpg');

insert into shop_item values (ITEM_SEQ.nextval,5,'	[정기배송]젤리츄 대구 황태','닥터독','간식',
'맛있는 우리 아이 간식 NO.1 ! 젤리츄~ 연어간식',
30000,28500,150,3000,'product_snack04.jpg','page_salmon_01.jpg','product_snack04.jpg','page_salmon_01.jpg');

insert into shop_item values (ITEM_SEQ.nextval,5,'	[정기배송]젤리츄 양고기','닥터독','간식',
'맛있는 우리 아이 간식 NO.1 ! 젤리츄~ 양고기간식',
30000,25500,150,3000,'product_snack02.jpg','page_salmon_01.jpg','product_snack02.jpg','page_salmon_01.jpg');

insert into shop_item values (ITEM_SEQ.nextval,5,'	[정기배송]젤리츄 소고기','닥터독','간식',
'맛있는 우리 아이 간식 NO.1 ! 젤리츄~ 소고기간식',
30000,25500,150,3000,'product_snack03.jpg','page_salmon_01.jpg','product_snack03.jpg','page_salmon_01.jpg');

insert into shop_item values (ITEM_SEQ.nextval,5,'	[정기배송]위장 덴탈껌150g x 3ea','닥터독','간식',
'맛있는 우리 아이 간식 NO.1 ! 델탈껌~ 위장간식껌',
30000,25500,150,3000,'product_snack06.jpg','dental_page_stomach_01.jpg','product_snack06.jpg','dental_page_stomach_01.jpg');

insert into shop_item values (ITEM_SEQ.nextval,5,'	[정기배송]피부모질 덴탈껌150g x 3ea','닥터독','간식',
'맛있는 우리 아이 간식 NO.1 ! 덴탈껌 피부모질!',
30000,25500,150,3000,'product_snack05.jpg','dental_page_stomach_01.jpg','product_snack05.jpg','dental_page_stomach_01.jpg');

--  용품
insert into shop_item values (ITEM_SEQ.nextval,5,'[정기배송]클린패드(배변패드) 소형','닥터독','용품',
'차원이 다른 닥터독 클린패트 Special Point! 자극없이~',
15000,10000,150,3000,'product_goods01.jpg','pad_S_01.jpg','product_goods01.jpg','pad_S_01.jpg');

insert into shop_item values (ITEM_SEQ.nextval,5,'	[정기배송]클린패드(배변패드) 중형','닥터독','용품',
'차원이 다른 닥터독 클린패트 Special Point! 자극없이~',
20000,15000,150,3000,'product_goods02.jpg','pad_S_01.jpg','product_goods02.jpg','pad_S_01.jpg');

insert into shop_item values (ITEM_SEQ.nextval,5,'[정기배송]클린패드(배변패드) 대형','닥터독','용품',
'차원이 다른 닥터독 클린패트 Special Point! 자극없이~',
30000,20000,150,3000,'product_goods03.jpg','pad_S_01.jpg','product_goods03.jpg','pad_S_01.jpg');
