DELETE from t_act_inst;
DELETE from t_activity_information_log;
DELETE from t_condt_inst;
DELETE from t_pro_act;
DELETE from t_pro_type;
DELETE from t_pvlg_inst;
DELETE from t_rel_type_pvlg_condt;



CREATE TABLE "t_pro_act_dis_mode" (
"id" serial4 NOT NULL,
"pro_act_id" int4,
"dis_mode_id" int4,
"dis_mode_name" varchar(50),
PRIMARY KEY ("id") 
);

COMMENT ON TABLE "t_pro_act_dis_mode" IS '������ķ�����ģʽ';
COMMENT ON COLUMN "t_pro_act_dis_mode"."pro_act_id" IS '�id';
COMMENT ON COLUMN "t_pro_act_dis_mode"."dis_mode_id" IS 'ģʽid';
COMMENT ON COLUMN "t_pro_act_dis_mode"."dis_mode_name" IS 'ģʽ����';


CREATE TABLE "t_condt_inst_ext" (
"id" serial4 NOT NULL,
"act_inst_id" int4,
"condt_inst_id" int4,
"specify_attr_value" text,
"stepped" bool DEFAULT false,
"double_up" bool DEFAULT false,
PRIMARY KEY ("id") 
);

COMMENT ON TABLE "t_condt_inst_ext" IS '���������ʵ����';
COMMENT ON COLUMN "t_condt_inst_ext"."act_inst_id" IS '�ʵ��id';
COMMENT ON COLUMN "t_condt_inst_ext"."condt_inst_id" IS '����ʵ��id';
COMMENT ON COLUMN "t_condt_inst_ext"."specify_attr_value" IS '�����ֵ';
COMMENT ON COLUMN "public"."t_condt_inst_ext"."stepped" IS '�ɽ���';
COMMENT ON COLUMN "public"."t_condt_inst_ext"."double_up" IS '�ɷ���';


ALTER TABLE "public"."t_act_inst"
ADD COLUMN "attr" int2;
COMMENT ON COLUMN "public"."t_act_inst"."attr" IS '�������ԣ�1��Ʒ��2���ﳵ��3�û���';

ALTER TABLE "public"."t_act_inst"
DROP COLUMN "priority",
DROP COLUMN "is_set_v";

ALTER TABLE "public"."t_pro_condt"
ADD COLUMN "has_ext_condt" bool default false;
COMMENT ON COLUMN "public"."t_pro_condt"."has_ext_condt" IS '�Ƿ����������Ե�ѡ�ָ����Ʒ����/ָ�����ﳵ���ԣ�';

ALTER TABLE "public"."t_pro_act"
DROP COLUMN "mode_ids",
DROP COLUMN "mode_names";

ALTER TABLE "public"."t_condt_inst"
ADD COLUMN "priority" int2 default 1,
ADD COLUMN "is_set_v" int2 default 0,
ADD COLUMN "has_ext_condt" bool default false;
COMMENT ON COLUMN "public"."t_condt_inst"."is_set_v" IS '�Ƿ������˲���0��1��';
COMMENT ON COLUMN "public"."t_condt_inst"."priority" IS '���ȼ���Ĭ��Ϊ1';
COMMENT ON COLUMN "public"."t_condt_inst"."has_ext_condt" IS '�Ƿ����������Ե�ѡ�ָ����Ʒ����/ָ�����ﳵ���ԣ�';

update t_pro_condt set has_ext_condt=true where id in (1,2,3,8);

ALTER TABLE "public"."t_pro_pvlg"
ADD COLUMN "attr" int2;
COMMENT ON COLUMN "public"."t_pro_pvlg"."attr" IS '�������ԣ�1��Ʒ��2���ﳵ��3�û���';


ALTER TABLE "public"."t_pvlg_inst"
ADD COLUMN "condt_inst_id" int4;
COMMENT ON COLUMN "public"."t_pvlg_inst"."condt_inst_id" IS '����ʵ��id';

update t_pro_pvlg set name='����',p_type=1,attr=1 where id=1;
update t_pro_pvlg set name='����',p_type=2,attr=1 where id=2;
update t_pro_pvlg set name='�ۿ�',p_type=3,attr=1 where id=3;
insert into t_pro_pvlg(id,name,is_delete,p_type,attr) values(4,'���ﳵ����',false,4,2);
insert into t_pro_pvlg(id,name,is_delete,p_type,attr) values(5,'���ﳵ����',false,5,2);
insert into t_pro_pvlg(id,name,is_delete,p_type,attr) values(6,'�������ﳵ�Ķ����ۿ�',false,6,2);


update t_pro_condt set is_delete=true,has_ext_condt=false where c_type=14;
update t_pro_condt set is_delete=true,has_ext_condt=false where c_type=13;
update t_pro_condt set is_delete=true,has_ext_condt=false where c_type=12;
update t_pro_condt set is_delete=true,has_ext_condt=false where c_type=11;
update t_pro_condt set is_delete=true,has_ext_condt=false where c_type=10;
update t_pro_condt set is_delete=true,has_ext_condt=false where c_type=9;
update t_pro_condt set is_delete=true,has_ext_condt=true where c_type=8;
update t_pro_condt set is_delete=true,has_ext_condt=false where c_type=7;
update t_pro_condt set is_delete=false,has_ext_condt=false where c_type=6;
update t_pro_condt set is_delete=false,has_ext_condt=false where c_type=5;
update t_pro_condt set is_delete=true,has_ext_condt=false where c_type=4;
update t_pro_condt set is_delete=true,has_ext_condt=true where c_type=3;
update t_pro_condt set is_delete=false,has_ext_condt=true where c_type=2;
update t_pro_condt set is_delete=false,has_ext_condt=true where c_type=1;









