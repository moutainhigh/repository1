ALTER TABLE "public"."t_product_sales_order_main"
ADD COLUMN "rejected_by_finance" bool DEFAULT false;

COMMENT ON COLUMN "public"."t_product_sales_order_main"."rejected_by_finance" IS '�Ƿ��ɲ��񲵻أ����ֶ�ֻ���ڷ�����������˲����ã�ֻ����˲�ͨ����Ϊtrue������Ϊfalse��';