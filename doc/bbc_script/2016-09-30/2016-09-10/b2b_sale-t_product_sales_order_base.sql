ALTER TABLE "public"."t_product_sales_order_base"
ADD COLUMN "is_back" bool DEFAULT false;

COMMENT ON COLUMN "public"."t_product_sales_order_base"."is_back" IS '�Ƿ�Ϊ��̨¼��';

ALTER TABLE "public"."t_product_sales_order_main"
ADD COLUMN "source" varchar(255);

COMMENT ON COLUMN "public"."t_product_sales_order_main"."source" IS '��Դ����BBC,MSITE��';


update t_product_sales_order_main set "source" = 'MSITE' where sales_order_no like 'MS%';
update t_product_sales_order_main set "source" = 'BBC' where sales_order_no like 'XS%';
