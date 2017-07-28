DROP TABLE IF EXISTS "public"."t_dis_withdraw_account";
CREATE TABLE "public"."t_dis_withdraw_account" (
"id" SERIAL NOT NULL,
"withdraw_account" varchar(50) COLLATE "default",
"account_user" varchar(50) COLLATE "default",
"account_unit" varchar(100) COLLATE "default",
"distributor_email" varchar(50) COLLATE "default",
"create_time" TIMESTAMP(6) DEFAULT now(),
CONSTRAINT "t_dis_withdraw_account_pkey" PRIMARY KEY ("id")
)
WITH (OIDS=FALSE)
;

ALTER TABLE "public"."t_dis_withdraw_account" OWNER TO "tomtop";

COMMENT ON TABLE "public"."t_dis_withdraw_account" IS '�����˻���(���ڷ���������ʱ�����л������֧���˺�)';

COMMENT ON COLUMN "public"."t_dis_withdraw_account"."id" IS '����';

COMMENT ON COLUMN "public"."t_dis_withdraw_account"."withdraw_account" IS '�����˺�';

COMMENT ON COLUMN "public"."t_dis_withdraw_account"."account_user" IS '�˺�������(���п��ֿ��˻�֧���˺�������)';

COMMENT ON COLUMN "public"."t_dis_withdraw_account"."account_unit" IS '�˺�������λ(���л������֧��)';

COMMENT ON COLUMN "public"."t_dis_withdraw_account"."distributor_email" IS '�����������˺�';

COMMENT ON COLUMN "public"."t_dis_withdraw_account"."create_time" IS '����ʱ��';

