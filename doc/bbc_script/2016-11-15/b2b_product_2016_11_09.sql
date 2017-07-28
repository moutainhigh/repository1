CREATE TABLE "public"."t_type_base" (
"id" serial4 NOT NULL,
"name" varchar(200),
"create_date" timestamp(6),
"update_date" timestamp(6),
"is_active" bool DEFAULT true,
"create_user" varchar(50),
PRIMARY KEY ("id")
)
WITH (OIDS=FALSE)
;

COMMENT ON TABLE "public"."t_type_base" IS '��Ʒ���ͱ�';

COMMENT ON COLUMN "public"."t_type_base"."id" IS '����id';

COMMENT ON COLUMN "public"."t_type_base"."name" IS '��Ʒ���';

COMMENT ON COLUMN "public"."t_type_base"."create_date" IS '����ʱ��';

COMMENT ON COLUMN "public"."t_type_base"."update_date" IS '��������';

COMMENT ON COLUMN "public"."t_type_base"."is_active" IS '�Ƿ����� ';

COMMENT ON COLUMN "public"."t_type_base"."create_user" IS '������';










ALTER TABLE "public"."t_product_disprice"
ADD COLUMN "type_id" int4,
ADD COLUMN "type_name" varchar(200);

COMMENT ON COLUMN "public"."t_product_disprice"."type_id" IS '��Ʒ���id';

COMMENT ON COLUMN "public"."t_product_disprice"."type_name" IS '������ƣ�A�࣬B�࣬C�ࣩ';











