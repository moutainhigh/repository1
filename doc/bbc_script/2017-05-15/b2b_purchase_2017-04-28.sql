ALTER TABLE "public"."t_purchase_order"
ADD COLUMN "rejected_by_finance" bool DEFAULT false;

COMMENT ON COLUMN "public"."t_purchase_order"."rejected_by_finance" IS '�Ƿ��ɲ��񲵻أ����ֶ�ֻ���ڷ�����������˲����ã�ֻ����˲�ͨ����Ϊtrue������Ϊfalse��';