--------------------------------------------------------
--  DDL for Table LOCATION
--------------------------------------------------------

CREATE TABLE "DEMO"."LOCATION"
(	"NO" NUMBER,
     "DISTRICT" VARCHAR2(50 BYTE) DEFAULT '',
     "CITY" VARCHAR2(300 BYTE)
) SEGMENT CREATION IMMEDIATE
    PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
    STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  DDL for Index LOCATION_PK
--------------------------------------------------------

CREATE UNIQUE INDEX "DEMO"."LOCATION_PK" ON "DEMO"."LOCATION" ("NO")
    PCTFREE 10 INITRANS 2 MAXTRANS 255
    STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
    PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
    TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Constraints for Table LOCATION
--------------------------------------------------------

ALTER TABLE "DEMO"."LOCATION" MODIFY ("CITY" NOT NULL ENABLE);
ALTER TABLE "DEMO"."LOCATION" ADD CONSTRAINT "LOCATION_PK" PRIMARY KEY ("NO")
    USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255
        STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
        PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
        TABLESPACE "SYSTEM"  ENABLE;
ALTER TABLE "DEMO"."LOCATION" MODIFY ("DISTRICT" NOT NULL ENABLE);
ALTER TABLE "DEMO"."LOCATION" MODIFY ("NO" NOT NULL ENABLE);


-- 시퀀스
CREATE SEQUENCE LOCATION_SEQ INCREMENT BY 1 START WITH 1 MINVALUE 1;

-- 데이터
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (1,'서울','강남/역삼/삼성/신사/청담');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (2,'서울','서초/교대');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (3,'서울','잠실/송파/왕십리/강동');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (4,'서울','을지로/시청/명동');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (5,'서울','종로/인사동/동대문/강북');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (6,'서울','서울역/이태원/용산');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (7,'서울','마포/홍대/신촌/서대문');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (8,'서울','영등포/여의도/김포공항');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (9,'서울','구로/금천/관악/동작');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (10,'경기','수원/성남');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (11,'경기','용인/평택');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (12,'경기','화성/안산/부천/안양');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (13,'경기','고양/의정부/파주/김포');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (14,'경기','시흥/군포/광명');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (15,'경기','남양주시/구리/하남');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (16,'경기','가평/양평');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (17,'인천','송도/남동구/옹진군');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (18,'인천','인천국제공항(중구)');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (19,'인천','부평/계양/서구/미추홀구/강화');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (20,'충청','대전');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (21,'충청','천안/아산/예산/당진');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (22,'충청','보령/서산/태안');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (23,'충청','청주/제천/충주/보은/금산');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (24,'강원','강릉/속초');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (25,'강원','영양/동해/고성/삼척');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (26,'강원','춘천/홍천/인제/철원');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (27,'강원','평창/정선/횡성');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (28,'강원','영월/원주/태백');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (29,'전라','여수');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (30,'전라','전주');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (31,'전라','광주');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (32,'전라','광양/구례/순천/화순/남원');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (33,'전라','군산/익산/부안/진안/무주');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (34,'전라','목포/나주/완도/해남/영암');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (35,'경상','경주/포항/울진/영덕');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (36,'경상','거제/통영');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (37,'경상','구미/문경/안동');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (38,'경상','울산/양산');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (39,'경상','창원/김해/창녕');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (40,'경상','사천/남해/진주/함양');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (41,'대구','북구');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (42,'대구','서구');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (43,'대구','동구');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (44,'대구','남구');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (45,'대구','중구/동성로/반월당');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (46,'부산','해운대(센텀,송정)');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (47,'부산','광안리/기장');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (48,'부산','부산역/남포/자갈치/영도');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (49,'부산','서면/동래/연제/남구');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (50,'부산','김해공항/기타(그외 지역)');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (51,'제주','제주공항/애월/함덕');
Insert into DEMO.LOCATION (NO,DISTRICT,CITY) values (52,'제주','서귀포시/중문/표선/성산');
commit;
