-- ����ʱ��Ĭ��ֵ
ALTER TABLE "public"."t_bbc_attribute" ALTER COLUMN "create_time" SET DEFAULT now();
-- ȥ�� bbc���� ����ֵ�ֶ�
ALTER TABLE "public"."t_bbc_attribute" DROP COLUMN "attr_value";
