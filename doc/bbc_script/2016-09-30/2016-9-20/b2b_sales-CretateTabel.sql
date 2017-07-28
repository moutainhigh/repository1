

CREATE TABLE "public"."t_product_sales_input" (
"id" serial4 NOT NULL,
"email" varchar(50) COLLATE "default",
"sku" varchar(50) COLLATE "default",
"warehouse_id" int4,
"warehouse_name" varchar(255) COLLATE "default",
"product_img" varchar(255) COLLATE "default",
"final_selling_price" float8,
"qty" int4,
"title" varchar(240) COLLATE "default",
 PRIMARY KEY ("id")
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."t_product_sales_input" OWNER TO "tomtop";

COMMENT ON TABLE "public"."t_product_sales_input" IS '���۷���¼���';

COMMENT ON COLUMN "public"."t_product_sales_input"."id" IS '����id';

COMMENT ON COLUMN "public"."t_product_sales_input"."email" IS 'ѡ��ķ�����';

COMMENT ON COLUMN "public"."t_product_sales_input"."sku" IS '��ѡ��Ʒsku';

COMMENT ON COLUMN "public"."t_product_sales_input"."warehouse_id" IS '�ֿ�id';

COMMENT ON COLUMN "public"."t_product_sales_input"."warehouse_name" IS '��ѡ�ֿ���';

COMMENT ON COLUMN "public"."t_product_sales_input"."product_img" IS '��ƷͼƬ';

COMMENT ON COLUMN "public"."t_product_sales_input"."final_selling_price" IS 'ƽ̨�����ۼ�';

COMMENT ON COLUMN "public"."t_product_sales_input"."qty" IS '��ѡ��Ʒ����';

COMMENT ON COLUMN "public"."t_product_sales_input"."title" IS '��Ʒ����';