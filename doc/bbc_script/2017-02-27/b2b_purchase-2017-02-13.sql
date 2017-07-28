CREATE TABLE "public"."t_return_order" (
"id" serial4 NOT NULL,
"return_order_no" varchar(255) COLLATE "default",
"email" varchar(255) COLLATE "default",
"nick_name" varchar(255) COLLATE "default",
"salesman" varchar(255) COLLATE "default",
"total_return_amount" float8,
"user_expect_total_return_amount" float8,
"actual_total_return_amount" float8,
"status" int4,
"application_time" timestamp,
"remarks" varchar(500) COLLATE "default",
"audit_remarks" varchar(500) COLLATE "default",
"create_time" timestamp,
"create_user" varchar(255) COLLATE "default",
"last_update_time" timestamp,
"last_update_user" varchar(255) COLLATE "default",
PRIMARY KEY ("id")
);

ALTER TABLE "public"."t_return_order" OWNER TO "tomtop";
COMMENT ON TABLE "public"."t_return_order" IS '�ɹ��˻���';
COMMENT ON COLUMN "public"."t_return_order"."return_order_no" IS '�˻�����';
COMMENT ON COLUMN "public"."t_return_order"."total_return_amount" IS '�˿��ܽ�����������������';
COMMENT ON COLUMN "public"."t_return_order"."user_expect_total_return_amount" IS '�û�����˿���';
COMMENT ON COLUMN "public"."t_return_order"."actual_total_return_amount" IS 'ʵ���˿��ܽ����ʱ�����޸�total_return_amount';
COMMENT ON COLUMN "public"."t_return_order"."status" IS '״̬�������1�����ͨ��2�����δͨ��3��ȡ��4�����5';
COMMENT ON COLUMN "public"."t_return_order"."application_time" IS '����ʱ��';
COMMENT ON COLUMN "public"."t_return_order"."remarks" IS '��ע';
COMMENT ON COLUMN "public"."t_return_order"."audit_remarks" IS '��˱�ע';


CREATE TABLE "public"."t_return_order_detail" (
"id" serial4 NOT NULL,
"return_order_id" int4,
"return_order_no" varchar(255) COLLATE "default",
"purchase_order_no" varchar(255) COLLATE "default",
"product_title" varchar(255) COLLATE "default",
"img_url" varchar(255) COLLATE "default",
"sku" varchar(50) COLLATE "default",
"warehouse_id" int4,
"warehouse_name" varchar(255) COLLATE "default",
"purchase_price" float8,
"capfee" float8,
"purchase_time" varchar(255) COLLATE "default",
"expiration_date" varchar(255) COLLATE "default",
"return_qty" int4,
"qty" int4,
"residue_num" int4,
"sub_total_return_amount" float8,
"in_record_id" int4,
"day_space" int4,
"coefficient" float8,
PRIMARY KEY ("id")
);

ALTER TABLE "public"."t_return_order_detail" OWNER TO "tomtop";
COMMENT ON TABLE "public"."t_return_order_detail" IS '�ɹ��˻�����ϸ';
COMMENT ON COLUMN "public"."t_return_order_detail"."return_order_id" IS '�˻���id';
COMMENT ON COLUMN "public"."t_return_order_detail"."return_order_no" IS '�˻�����';
COMMENT ON COLUMN "public"."t_return_order_detail"."purchase_order_no" IS '�����ɹ���';
COMMENT ON COLUMN "public"."t_return_order_detail"."purchase_price" IS '�ɹ���';
COMMENT ON COLUMN "public"."t_return_order_detail"."capfee" IS '��̯��';
COMMENT ON COLUMN "public"."t_return_order_detail"."purchase_time" IS '�ɹ�ʱ��';
COMMENT ON COLUMN "public"."t_return_order_detail"."expiration_date" IS '����ʱ��';
COMMENT ON COLUMN "public"."t_return_order_detail"."qty" IS '�ɹ�����';
COMMENT ON COLUMN "public"."t_return_order_detail"."residue_num" IS '�����˻�ʱ����ʣ�������';
COMMENT ON COLUMN "public"."t_return_order_detail"."return_qty" IS '�˻�����';
COMMENT ON COLUMN "public"."t_return_order_detail"."sub_total_return_amount" IS '�˿�С�ƣ�capfee����return_qty';
COMMENT ON COLUMN "public"."t_return_order_detail"."day_space" IS '���뵽�����ڼ������';
COMMENT ON COLUMN "public"."t_return_order_detail"."coefficient" IS '�˿�ϵ��';

CREATE TABLE "public"."t_return_order_logs" (
"id" serial4 NOT NULL,
"return_order_no" varchar(255) COLLATE "default",
"status" int4,
"create_time" timestamp,
"create_user" varchar(255) COLLATE "default",
PRIMARY KEY ("id")
);

ALTER TABLE "public"."t_return_order_logs" OWNER TO "tomtop";
COMMENT ON TABLE "public"."t_return_order_logs" IS '�ɹ��˻���';
COMMENT ON COLUMN "public"."t_return_order_logs"."return_order_no" IS '�˻�����';
COMMENT ON COLUMN "public"."t_return_order_logs"."status" IS '״̬';


CREATE TABLE "public"."t_return_amount_coefficient" (
"id" serial4 NOT NULL,
"sku" varchar(50) COLLATE "default",
"warehouse_id" int4,
"coefficient_value" varchar(255) COLLATE "default",
"create_time" timestamp,
"create_user" varchar(255) COLLATE "default",
"last_update_time" timestamp,
"last_update_user" varchar(255) COLLATE "default",
PRIMARY KEY ("id")
);
ALTER TABLE "public"."t_return_amount_coefficient" OWNER TO "tomtop";
COMMENT ON TABLE "public"."t_return_amount_coefficient" IS '��Ʒ�˿����';
COMMENT ON COLUMN "public"."t_return_amount_coefficient"."coefficient_value" IS '��Ʒ�˿�ϵ�������ൽ�������������ã�';

CREATE TABLE "public"."t_return_amount_coefficient_logs" (
"id" serial4 NOT NULL,
"coefficient_id" int4,
"sku" varchar(50) COLLATE "default",
"warehouse_id" int4,
"log_value" varchar(255) COLLATE "default",
"create_time" timestamp,
"create_user" varchar(255) COLLATE "default",
PRIMARY KEY ("id")
);
ALTER TABLE "public"."t_return_amount_coefficient_logs" OWNER TO "tomtop";
COMMENT ON TABLE "public"."t_return_amount_coefficient_logs" IS '��Ʒ�˿������־';
COMMENT ON COLUMN "public"."t_return_amount_coefficient_logs"."log_value" IS '�����ֵ';


INSERT INTO "public"."t_sequence" VALUES ('3', 'RETURN_ORDER_NO', '0', '1', '�˻�����');
