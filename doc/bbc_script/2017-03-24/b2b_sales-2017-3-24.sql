CREATE TABLE "t_sh_order" (

"id" serial4,

"sh_order_no" varchar(40),

"xs_order_no" varchar(40),

"status" int4,

"email" varchar(50),

"dis_mode" int4,

"dis_name" varchar(50),

"create_time" timestamp(6) DEFAULT now(),

"update_time" timestamp(6) DEFAULT now(),

"business_erp" varchar(50),

"order_amount" float8,

"demand_amount" float8,

"actual_amount" float8,

"qa_desc" varchar(1000),

"demand_qty" int4,

"warehouse_id" int4,

"warehouse_name" varchar(50),

"product_img" varchar(255),

"product_name" varchar(500),

"sku" varchar(200),

"is_product_return" int4,

"company" varchar(50),

"express_code" varchar(200),

"finance_confirm_time" timestamp(6) DEFAULT now(),

"send_product_time" timestamp(6) DEFAULT now(),

"received_product_time" timestamp(6) DEFAULT now(),

"detail_order_id" int4

);



COMMENT ON TABLE "t_sh_order" IS '�ۺ�';

COMMENT ON COLUMN "t_sh_order"."id" IS '����';

COMMENT ON COLUMN "t_sh_order"."sh_order_no" IS '�ۺ󵥺�';

COMMENT ON COLUMN "t_sh_order"."xs_order_no" IS '���۵���';

COMMENT ON COLUMN "t_sh_order"."status" IS '�ۺ�״̬';

COMMENT ON COLUMN "t_sh_order"."email" IS '�������˺�';

COMMENT ON COLUMN "t_sh_order"."dis_mode" IS '������ģʽ';

COMMENT ON COLUMN "t_sh_order"."dis_name" IS '����������';

COMMENT ON COLUMN "t_sh_order"."create_time" IS '����ʱ��';

COMMENT ON COLUMN "t_sh_order"."update_time" IS '����ʱ��';

COMMENT ON COLUMN "t_sh_order"."business_erp" IS 'ҵ��Աerp�˺�';

COMMENT ON COLUMN "t_sh_order"."order_amount" IS '�˻����ܽ��';

COMMENT ON COLUMN "t_sh_order"."demand_amount" IS '�ͻ�Ҫ���˿���';

COMMENT ON COLUMN "t_sh_order"."actual_amount" IS 'ʵ���˿���';

COMMENT ON COLUMN "t_sh_order"."qa_desc" IS '��������';

COMMENT ON COLUMN "t_sh_order"."demand_qty" IS 'Ҫ���˻�����';

COMMENT ON COLUMN "t_sh_order"."warehouse_id" IS '�ֿ�id';

COMMENT ON COLUMN "t_sh_order"."warehouse_name" IS '�ֿ�����';

COMMENT ON COLUMN "t_sh_order"."product_img" IS '��ƷͼƬ��ַ';

COMMENT ON COLUMN "t_sh_order"."product_name" IS '��Ʒ����';

COMMENT ON COLUMN "t_sh_order"."sku" IS 'sku';

COMMENT ON COLUMN "t_sh_order"."is_product_return" IS '�Ƿ���Ҫ�Ļ���Ʒ';

COMMENT ON COLUMN "t_sh_order"."company" IS '��ݹ�˾';

COMMENT ON COLUMN "t_sh_order"."express_code" IS '��ݵ���';

COMMENT ON COLUMN "t_sh_order"."finance_confirm_time" IS '����ȷ��ͨ��ʱ��';

COMMENT ON COLUMN "t_sh_order"."send_product_time" IS '�Ļ���Ʒʱ��';

COMMENT ON COLUMN "t_sh_order"."received_product_time" IS 'ȷ���ջ�ʱ��';

COMMENT ON COLUMN "t_sh_order"."detail_order_id" IS 'ȷ�����۵����µ�sku';



CREATE TABLE "t_sh_order_detail" (

"id" serial4,

"sh_order_id" int4,

"sh_order_no" varchar(50),

"purchase_order_no" varchar(50),

"sku" varchar(50),

"qty" int4,

"warehouse_id" int4,

"warehouse_name" varchar(50),

"product_img" varchar(255),

"product_name" varchar(500),

"purchase_price" float8,

"capfee" float8,

"arrive_ware_price" float8,

"create_time" timestamp(6) DEFAULT now(),

"update_time" timestamp(6) DEFAULT now(),

"expiration_date" timestamp(6),

"inter_bar_code" varchar(255)

);



COMMENT ON TABLE "t_sh_order_detail" IS '�ۺ�����';

COMMENT ON COLUMN "t_sh_order_detail"."id" IS '����';

COMMENT ON COLUMN "t_sh_order_detail"."sh_order_id" IS '�ۺ�id';

COMMENT ON COLUMN "t_sh_order_detail"."sh_order_no" IS '��Ʒ��Ӧ�ķ�������';

COMMENT ON COLUMN "t_sh_order_detail"."purchase_order_no" IS '��Ʒ��Ӧ�Ĳɹ�����';

COMMENT ON COLUMN "t_sh_order_detail"."sku" IS 'SKU';

COMMENT ON COLUMN "t_sh_order_detail"."qty" IS '����';

COMMENT ON COLUMN "t_sh_order_detail"."warehouse_id" IS '�ֿ�id';

COMMENT ON COLUMN "t_sh_order_detail"."warehouse_name" IS '�ֿ�����';

COMMENT ON COLUMN "t_sh_order_detail"."product_img" IS '��ƷͼƬ��ַ';

COMMENT ON COLUMN "t_sh_order_detail"."product_name" IS '��Ʒ����';

COMMENT ON COLUMN "t_sh_order_detail"."purchase_price" IS '�ɹ���';

COMMENT ON COLUMN "t_sh_order_detail"."capfee" IS '��̯��';

COMMENT ON COLUMN "t_sh_order_detail"."arrive_ware_price" IS '���ּ�';

COMMENT ON COLUMN "t_sh_order_detail"."create_time" IS '����ʱ��';

COMMENT ON COLUMN "t_sh_order_detail"."update_time" IS '����ʱ��';

COMMENT ON COLUMN "t_sh_order_detail"."expiration_date" IS '����ʱ��';

COMMENT ON COLUMN "t_sh_order_detail"."inter_bar_code" IS '��������';




CREATE TABLE "t_sh_attachment" (

"id" serial4,

"sh_order_id" int4,

"attachment_name" varchar(255),

"attachment_path" varchar(1000),

"create_time" timestamp(6) DEFAULT now()

);



COMMENT ON TABLE "t_sh_attachment" IS '�ۺ󵥸�����';

COMMENT ON COLUMN "t_sh_attachment"."id" IS '����';

COMMENT ON COLUMN "t_sh_attachment"."sh_order_id" IS '�ۺ�ID';

COMMENT ON COLUMN "t_sh_attachment"."attachment_name" IS '��������';

COMMENT ON COLUMN "t_sh_attachment"."attachment_path" IS '����·��';

COMMENT ON COLUMN "t_sh_attachment"."create_time" IS '����ʱ��';



CREATE TABLE "t_sh_log" (

"id" serial4,

"sh_order_id" int4,

"type" int4,

"is_product_return" int4,

"remark" varchar(1000),

"create_time" timestamp(6) DEFAULT now(),

"operator" varchar(50),

"result" int4

);



COMMENT ON TABLE "t_sh_log" IS '�ۺ���־��';

COMMENT ON COLUMN "t_sh_log"."id" IS '����';

COMMENT ON COLUMN "t_sh_log"."sh_order_id" IS '�ۺ�ID';

COMMENT ON COLUMN "t_sh_log"."type" IS '��־����';

COMMENT ON COLUMN "t_sh_log"."is_product_return" IS '�Ƿ���Ҫ�Ļ���Ʒ';

COMMENT ON COLUMN "t_sh_log"."remark" IS '��ע';

COMMENT ON COLUMN "t_sh_log"."create_time" IS '����ʱ��';

COMMENT ON COLUMN "t_sh_log"."operator" IS '������';

COMMENT ON COLUMN "t_sh_log"."result" IS 'ȷ�Ͻ��';



