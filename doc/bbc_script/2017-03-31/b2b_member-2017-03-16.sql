ALTER TABLE "public"."t_dis_shop"
ADD COLUMN "shop_no" varchar(50);

COMMENT ON COLUMN "public"."t_dis_shop"."shop_no" IS '���̱�ţ��������µ��̳ɶ����ţ�';

INSERT INTO "public"."t_sequence" ("id", "seq_name", "current_value", "increment_", "remark") VALUES ('3', 'SHOP_NO_SEQ', '1', '1', '���̱��');
