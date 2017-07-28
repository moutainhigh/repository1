CREATE TABLE "public"."t_dis_apply_file" (
"id" serial4 NOT NULL,
"name" varchar(100),
"url" varchar(100),
"apply_id" int4,
"create_date" timestamp(6) DEFAULT now(),
"update_date" timestamp(6),
"type" varchar(50),
PRIMARY KEY ("id")
)
WITH (OIDS=FALSE)
;

COMMENT ON TABLE "public"."t_dis_apply_file" IS 'ע�������ļ���';

COMMENT ON COLUMN "public"."t_dis_apply_file"."id" IS '����id';

COMMENT ON COLUMN "public"."t_dis_apply_file"."name" IS '�ļ���';

COMMENT ON COLUMN "public"."t_dis_apply_file"."url" IS '�ļ�url';

COMMENT ON COLUMN "public"."t_dis_apply_file"."apply_id" IS 'ע������id';

COMMENT ON COLUMN "public"."t_dis_apply_file"."create_date" IS '����ʱ��';

COMMENT ON COLUMN "public"."t_dis_apply_file"."update_date" IS '����ʱ��';

COMMENT ON COLUMN "public"."t_dis_apply_file"."type" IS '�����ļ�����;';

