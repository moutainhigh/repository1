

ALTER TABLE "public"."t_purchase_order"
ADD COLUMN "offline_money" float8,
ADD COLUMN "has_associated_orders" bool DEFAULT false,
ADD COLUMN "finance_money" float8,
ADD COLUMN "remark" varchar(255),
ADD COLUMN "reason" varchar(255);

COMMENT ON COLUMN "public"."t_purchase_order"."finance_money" IS '����ʵ�ս��';

COMMENT ON COLUMN "public"."t_purchase_order"."remark" IS '����ע';

COMMENT ON COLUMN "public"."t_purchase_order"."reason" IS '�������';

COMMENT ON COLUMN "public"."t_purchase_order"."status" IS '�ɹ���״̬��0�����1�Ѹ��2��ȡ����3��ʧЧ��4����ˣ�5��˲�ͨ��';

COMMENT ON COLUMN "public"."t_purchase_order"."offline_money" IS '����֧�����';

COMMENT ON COLUMN "public"."t_purchase_order"."has_associated_orders" IS '�Ƿ����޹�������';



