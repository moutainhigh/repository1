ALTER TABLE "public"."t_purchase_order_input_pro"
ADD COLUMN "expiration_date" varchar(50);
COMMENT ON COLUMN "public"."t_purchase_order_input_pro"."expiration_date" IS '��Ʒ��������';

ALTER TABLE "public"."t_purchase_order_input_pro"
ADD COLUMN "need_expiration_date" bool DEFAULT false;
COMMENT ON COLUMN "public"."t_purchase_order_input_pro"."need_expiration_date" IS '�Ƿ���Ҫѡ�������ڣ�Ĭ��false';

ALTER TABLE "public"."t_purchase_order_input_gift"
ADD COLUMN "expiration_date" varchar(50);
COMMENT ON COLUMN "public"."t_purchase_order_input_gift"."expiration_date" IS '��Ʒ��������';

ALTER TABLE "public"."t_purchase_order_input_gift"
ADD COLUMN "need_expiration_date" bool DEFAULT false;
COMMENT ON COLUMN "public"."t_purchase_order_input_gift"."need_expiration_date" IS '�Ƿ���Ҫѡ�������ڣ�Ĭ��false';


ALTER TABLE "public"."t_purchase_order_detail"
ADD COLUMN "expiration_date" varchar(50);
COMMENT ON COLUMN "public"."t_purchase_order_detail"."expiration_date" IS '��Ʒ��������';