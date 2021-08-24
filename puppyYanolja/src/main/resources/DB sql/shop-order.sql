--------------------------------------------------------
--  DDL for Table SHOP_ORDER
--------------------------------------------------------

  CREATE TABLE "DEMO"."SHOP_ORDER" 
   (	"NO" NUMBER(*,0), 
	"SHOP_NO" NUMBER(*,0), 
	"MEMBER_NO" NUMBER(*,0), 
	"OD_EMAIL" VARCHAR2(100 BYTE), 
	"OD_TEL" VARCHAR2(20 BYTE), 
	"OD_DEPOSIT_NAME" VARCHAR2(20 BYTE), 
	"OD_MEMO" VARCHAR2(256 BYTE), 
	"OD_PRICE" NUMBER(*,0), 
	"OD_CHECKOUT_DATE" DATE DEFAULT sysdate+1, 
	"OD_CHECKIN_DATE" DATE DEFAULT sysdate, 
	"OD_TIME" DATE DEFAULT sysdate
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;

   COMMENT ON COLUMN "DEMO"."SHOP_ORDER"."NO" IS '주문번호,seq';
   COMMENT ON COLUMN "DEMO"."SHOP_ORDER"."SHOP_NO" IS 'shop번호';
   COMMENT ON COLUMN "DEMO"."SHOP_ORDER"."MEMBER_NO" IS '멤버번호';
   COMMENT ON COLUMN "DEMO"."SHOP_ORDER"."OD_EMAIL" IS '주문자이메일';
   COMMENT ON COLUMN "DEMO"."SHOP_ORDER"."OD_TEL" IS '주문자전화번호';
   COMMENT ON COLUMN "DEMO"."SHOP_ORDER"."OD_DEPOSIT_NAME" IS '입금자명';
   COMMENT ON COLUMN "DEMO"."SHOP_ORDER"."OD_MEMO" IS '주문메모';
   COMMENT ON COLUMN "DEMO"."SHOP_ORDER"."OD_PRICE" IS '주문가격';
   COMMENT ON COLUMN "DEMO"."SHOP_ORDER"."OD_CHECKOUT_DATE" IS '체크아웃날짜';
   COMMENT ON COLUMN "DEMO"."SHOP_ORDER"."OD_CHECKIN_DATE" IS '체크인날짜';
   COMMENT ON COLUMN "DEMO"."SHOP_ORDER"."OD_TIME" IS '주문시간';
--------------------------------------------------------
--  DDL for Index SHOP_ORDER_PK
--------------------------------------------------------

  CREATE UNIQUE INDEX "DEMO"."SHOP_ORDER_PK" ON "DEMO"."SHOP_ORDER" ("NO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table SHOP_ORDER
--------------------------------------------------------

  ALTER TABLE "DEMO"."SHOP_ORDER" ADD CONSTRAINT "SHOP_ORDER_PK" PRIMARY KEY ("NO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM"  ENABLE;
  ALTER TABLE "DEMO"."SHOP_ORDER" MODIFY ("OD_TIME" NOT NULL ENABLE);
  ALTER TABLE "DEMO"."SHOP_ORDER" MODIFY ("OD_CHECKIN_DATE" NOT NULL ENABLE);
  ALTER TABLE "DEMO"."SHOP_ORDER" MODIFY ("OD_CHECKOUT_DATE" NOT NULL ENABLE);
  ALTER TABLE "DEMO"."SHOP_ORDER" MODIFY ("OD_PRICE" NOT NULL ENABLE);
  ALTER TABLE "DEMO"."SHOP_ORDER" MODIFY ("OD_DEPOSIT_NAME" NOT NULL ENABLE);
  ALTER TABLE "DEMO"."SHOP_ORDER" MODIFY ("OD_TEL" NOT NULL ENABLE);
  ALTER TABLE "DEMO"."SHOP_ORDER" MODIFY ("MEMBER_NO" NOT NULL ENABLE);
  ALTER TABLE "DEMO"."SHOP_ORDER" MODIFY ("SHOP_NO" NOT NULL ENABLE);
  ALTER TABLE "DEMO"."SHOP_ORDER" MODIFY ("NO" NOT NULL ENABLE);