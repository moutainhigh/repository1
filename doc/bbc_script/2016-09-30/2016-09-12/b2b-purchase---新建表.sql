CREATE TABLE "public"."t_purchase_gift_op_record" (
"id" serial4 NOT NULL,
"user_email" varchar(50) COLLATE "default",
"operator_email" varchar(50) COLLATE "default",
"sku" varchar(50) COLLATE "default",
"warehouse_id" int4,
"warehouse_name" varchar(50) COLLATE "default",
"qty" int4,
"operate_time" timestamp(6) DEFAULT now(),
"comments" varchar(200) COLLATE "default",
 PRIMARY KEY ("id")
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."t_purchase_gift_op_record" OWNER TO "tomtop";

COMMENT ON TABLE "public"."t_purchase_gift_op_record" IS '�ɹ���Ʒ��־��';

COMMENT ON COLUMN "public"."t_purchase_gift_op_record"."id" IS '����id';

COMMENT ON COLUMN "public"."t_purchase_gift_op_record"."user_email" IS '�������ķ���������';

COMMENT ON COLUMN "public"."t_purchase_gift_op_record"."operator_email" IS '����������';

COMMENT ON COLUMN "public"."t_purchase_gift_op_record"."sku" IS '��Ʒsku';

COMMENT ON COLUMN "public"."t_purchase_gift_op_record"."warehouse_id" IS '��Ʒ�ֿ�id';

COMMENT ON COLUMN "public"."t_purchase_gift_op_record"."warehouse_name" IS '��Ʒ�ֿ���';

COMMENT ON COLUMN "public"."t_purchase_gift_op_record"."qty" IS '��Ʒ����';

COMMENT ON COLUMN "public"."t_purchase_gift_op_record"."operate_time" IS '����ʱ��';

COMMENT ON COLUMN "public"."t_purchase_gift_op_record"."comments" IS '����ԭ��';