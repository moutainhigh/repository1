





ALTER TABLE "public"."t_purchase_order_detail"
ADD COLUMN "is_back" bool DEFAULT false,
ADD COLUMN "input_date" timestamp(6);

COMMENT ON COLUMN "public"."t_purchase_order_detail"."is_back" IS '�Ƿ�Ϊ��̨¼��';

COMMENT ON COLUMN "public"."t_purchase_order_detail"."input_date" IS '¼��ʱ��';

ALTER TABLE "public"."t_purchase_order_input_pro"
ALTER COLUMN "sku" TYPE varchar(255) COLLATE "default";


