ALTER TABLE "public"."t_dis_member"
ADD COLUMN "is_back_register" bool DEFAULT false,
ADD COLUMN "register_man" varchar(50),
ADD COLUMN "salesman_erp" varchar(255);

COMMENT ON COLUMN "public"."t_dis_member"."is_back_register" IS '�Ƿ�Ϊ��̨ע��';

COMMENT ON COLUMN "public"."t_dis_member"."register_man" IS 'ע����';

COMMENT ON COLUMN "public"."t_dis_member"."salesman_erp" IS 'ҵ����Աerp�˺ţ��ɺ�̨��Աע��ѡ��ҵ����Աʱ����ҵ��Ա��erp�˺ţ�';
     
