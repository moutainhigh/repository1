CREATE TABLE "public"."t_dis_register_apply" (
"id" serial4 NOT NULL,
"account" varchar(50),
"register_man" varchar(50),
"status" int4,
"register_date" timestamp(6),
"create_date" timestamp(6) DEFAULT now(),
"update_date" timestamp(6),
"audit_remark" varchar(500),
"audit_reason" varchar(150),
"is_back_register" bool DEFAULT false,
"pass_word" varchar(50),
"salesman_id" int4,
"apply_remark" varchar(500),
"audit_man" varchar(50),
"register_invite_code" varchar(50),
PRIMARY KEY ("id")
)
WITH (OIDS=FALSE)
;

COMMENT ON TABLE "public"."t_dis_register_apply" IS 'ע�������';

COMMENT ON COLUMN "public"."t_dis_register_apply"."id" IS '����id';

COMMENT ON COLUMN "public"."t_dis_register_apply"."account" IS 'ע���˺�';

COMMENT ON COLUMN "public"."t_dis_register_apply"."register_man" IS 'ע��������';

COMMENT ON COLUMN "public"."t_dis_register_apply"."status" IS '���״̬:  0.�����  1.��˲�ͨ��  2.���ͨ�� 3.��ʧЧ';

COMMENT ON COLUMN "public"."t_dis_register_apply"."register_date" IS 'ע��ʱ��';

COMMENT ON COLUMN "public"."t_dis_register_apply"."create_date" IS '����ʱ��';

COMMENT ON COLUMN "public"."t_dis_register_apply"."update_date" IS '����ʱ��';

COMMENT ON COLUMN "public"."t_dis_register_apply"."audit_remark" IS '���뱸ע';

COMMENT ON COLUMN "public"."t_dis_register_apply"."audit_reason" IS '�������';

COMMENT ON COLUMN "public"."t_dis_register_apply"."is_back_register" IS '�Ƿ�Ϊ��̨ע��';

COMMENT ON COLUMN "public"."t_dis_register_apply"."pass_word" IS '���� ';

COMMENT ON COLUMN "public"."t_dis_register_apply"."salesman_id" IS 'ҵ��Աid';

COMMENT ON COLUMN "public"."t_dis_register_apply"."apply_remark" IS '���뱸ע';

COMMENT ON COLUMN "public"."t_dis_register_apply"."audit_man" IS '�����';

COMMENT ON COLUMN "public"."t_dis_register_apply"."register_invite_code" IS 'ע��������';

