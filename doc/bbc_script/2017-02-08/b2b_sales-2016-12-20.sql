ALTER TABLE "public"."t_product_sales_order_main"
ADD COLUMN "nick_name" varchar(50);

COMMENT ON COLUMN "public"."t_product_sales_order_main"."nick_name" IS '�������ǳ�';


DROP TABLE IF EXISTS "public"."t_audit_remark";
CREATE TABLE "public"."t_audit_remark" (
"id" serial4 NOT NULL,
"ip" varchar COLLATE "default",
"order_id" int4,
"operator" varchar(255) COLLATE "default",
"remark" text COLLATE "default",
"status" int4,
"create_date" timestamp(6) DEFAULT now()
)
WITH (OIDS=FALSE)

;
COMMENT ON TABLE "public"."t_audit_remark" IS '��̨������˱�ע����������֧���ص�ȡֵ';
COMMENT ON COLUMN "public"."t_audit_remark"."id" IS '����';
COMMENT ON COLUMN "public"."t_audit_remark"."order_id" IS '����id';
COMMENT ON COLUMN "public"."t_audit_remark"."operator" IS '������';
COMMENT ON COLUMN "public"."t_audit_remark"."remark" IS '��ע';
COMMENT ON COLUMN "public"."t_audit_remark"."status" IS '״̬';
COMMENT ON COLUMN "public"."t_audit_remark"."create_date" IS '����ʱ��';

ALTER TABLE "public"."t_audit_remark" ADD PRIMARY KEY ("id");



ALTER TABLE "public"."t_product_sales_order_details"
ADD COLUMN "expiration_date" timestamp(6);

COMMENT ON COLUMN "public"."t_product_sales_order_details"."expiration_date" IS '��������(΢�ֳ�����ϸ)';



ALTER TABLE "public"."t_marketing_order_details"
ADD COLUMN "category_id" int4,
ADD COLUMN "category_name" varchar(255);

COMMENT ON COLUMN "public"."t_marketing_order_details"."category_id" IS '��Ŀ����';

COMMENT ON COLUMN "public"."t_marketing_order_details"."category_name" IS '��Ŀ����';
