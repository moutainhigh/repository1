CREATE TABLE "public"."t_product_sales_buffer" (
"id" serial4 NOT NULL,
"data_detail" text,
"email" varchar(50),
"create_date" timestamp(6),
"update_date" timestamp(6),
PRIMARY KEY ("id")
)
WITH (OIDS=FALSE)
;

COMMENT ON TABLE "public"."t_product_sales_buffer" IS '���۷���ǰ̨�������ݱ�';

COMMENT ON COLUMN "public"."t_product_sales_buffer"."id" IS '����id';

COMMENT ON COLUMN "public"."t_product_sales_buffer"."data_detail" IS '������������';

COMMENT ON COLUMN "public"."t_product_sales_buffer"."email" IS '����������';

COMMENT ON COLUMN "public"."t_product_sales_buffer"."create_date" IS '�������� ';

COMMENT ON COLUMN "public"."t_product_sales_buffer"."update_date" IS '��������';

