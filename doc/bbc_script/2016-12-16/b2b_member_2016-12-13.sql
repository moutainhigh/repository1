INSERT INTO "public"."t_dis_mode" ("id", "dis_mode") VALUES ('5', 'VIP');




CREATE TABLE "public"."t_account_operate_record" (
"id" serial4 NOT NULL,
"operator" varchar(30),
"operate_time" timestamp(6),
"opdesc" varchar(255),
"account_id" int4,
PRIMARY KEY ("id")
)
WITH (OIDS=FALSE)
;

COMMENT ON TABLE "public"."t_account_operate_record" IS '�˻��˼���Ϣ��־��';

COMMENT ON COLUMN "public"."t_account_operate_record"."id" IS '����id';

COMMENT ON COLUMN "public"."t_account_operate_record"."operator" IS '������';

COMMENT ON COLUMN "public"."t_account_operate_record"."operate_time" IS '����ʱ��';

COMMENT ON COLUMN "public"."t_account_operate_record"."opdesc" IS '��������';

COMMENT ON COLUMN "public"."t_account_operate_record"."account_id" IS '�˻�id';

