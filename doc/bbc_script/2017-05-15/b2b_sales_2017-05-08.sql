ALTER TABLE "public"."t_product_sales_order_main"
ADD COLUMN "estimated_catfee_in_order" float8,
ADD COLUMN "real_catfee_in_order" float8;

COMMENT ON COLUMN "public"."t_product_sales_order_main"."estimated_catfee_in_order" IS '����Ԥ��ƽ̯����';
COMMENT ON COLUMN "public"."t_product_sales_order_main"."real_catfee_in_order" IS '����ʵ��ƽ̯����';