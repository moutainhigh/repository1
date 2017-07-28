CREATE TABLE "public"."t_purchase_order_audit_logs" (
"id" serial4 NOT NULL,
"status" int4,
"purchase_no" varchar(30) COLLATE "default",
"json_value" varchar(3000) COLLATE "default",
"audit_user" varchar(50) COLLATE "default",
"audit_date" timestamp(6) DEFAULT now(),
"audit_type" int4,
PRIMARY KEY ("id")
)
;

ALTER TABLE "public"."t_purchase_order_audit_logs" OWNER TO "tomtop";

COMMENT ON TABLE "public"."t_purchase_order_audit_logs" IS '�ɹ��������ʷ��¼';

COMMENT ON COLUMN "public"."t_purchase_order_audit_logs"."id" IS '����';

COMMENT ON COLUMN "public"."t_purchase_order_audit_logs"."status" IS '�ɹ���״̬';

COMMENT ON COLUMN "public"."t_purchase_order_audit_logs"."purchase_no" IS '�ɹ�����';

COMMENT ON COLUMN "public"."t_purchase_order_audit_logs"."json_value" IS 'json����';

COMMENT ON COLUMN "public"."t_purchase_order_audit_logs"."audit_user" IS '�����';

COMMENT ON COLUMN "public"."t_purchase_order_audit_logs"."audit_date" IS '���ʱ��';

COMMENT ON COLUMN "public"."t_purchase_order_audit_logs"."audit_type" IS '������ͣ�1�ͷ���ˣ�2�������';