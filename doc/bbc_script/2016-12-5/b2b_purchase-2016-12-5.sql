ALTER TABLE "public"."t_purchase_order_audit_logs"
ADD COLUMN "audit_type" int4;

COMMENT ON COLUMN "public"."t_purchase_order_audit_logs"."audit_type" IS '������ͣ�1�ͷ���ˣ�2�������';