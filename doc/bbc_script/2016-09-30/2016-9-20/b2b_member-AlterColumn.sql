INSERT INTO t_sequence (id, seq_name, current_value, increment_, remark)
VALUES (2, 'WITHDRAW_AMOUNT_NO', 1, 1, '���ֵ���');

ALTER TABLE t_dis_account ADD COLUMN frozen_amount NUMERIC(10,2);

COMMENT ON COLUMN t_dis_account.frozen_amount IS '�ݶ�����';

ALTER TABLE t_dis_withdraw_account ADD COLUMN is_bind INTEGER;

COMMENT ON COLUMN t_dis_withdraw_account.is_bind IS '0:���, 1:��';


INSERT INTO t_email_template (ctype, ctitle, ccontent, ccreateuser, dcreatedate)
VALUES('bindAccountNo' ,'�������ʺ�-ͨ�Թ�Ӧ��', '<p><!--StartFragment --></p>

<p style="margin-left: 440px;">
	<span style="font-family:΢���ź�;">
		<span style="color:#4A7CC7;">
			<span style="font-size:18px;">�װ���&nbsp;</span>
		</span>
		<span style="font-size:14px;">{{toemail}}��</span>
	</span>
</p>

<p style="margin-left: 440px;"><br />
	<span style="font-family:΢���ź�;">
		<span style="font-size:14px;">�����ڽ������ְ����п�������<span style="color:#FF0000;">������Сʱ�ڵ��һ�����ӽ��������֤��</span></span>
	</span>
</p>

<p style="margin-left: 440px;"><br />
	<span style="font-family:΢���ź�;">
		<span style="font-size:14px;">��Ǳ��˲���������ԡ�</span>
	</span><br />
	<span style="font-family:΢���ź�;">
		<span style="font-size:14px;">
			<img src="" />���ӣ�
			<a href="{{url}}">
				<span style="color:#0000FF;"><ins>{{url}}</ins></span>
			</a><br /><br />
			������Ӳ�����,�븴���������ӵ��������ַ���س�Enter���С�
		</span>
	</span>
</p>

<p style="margin-left: 440px;"><br />
<span style="font-family:΢���ź�;"><span style="font-size:14px;">����ֱ�ӻظ����ʼ���лл��</span></span></p>', 'reason', now());


INSERT INTO t_email_variable (ctype, cname, cremark, ccreateuser, dcreatedate)
VALUES('bindAccountNo', 'url', '�������ʺŵ�ַ', 'reason', now()),
('bindAccountNo', 'toemail', '�ռ���', 'reason', now())

ALTER TABLE t_dis_withdraw_account ADD COLUMN account_type INTEGER;

COMMENT ON COLUMN t_dis_withdraw_account.account_type IS '0:���п�, 1:֧����';

ALTER TABLE t_dis_withdraw_account ADD COLUMN account_province VARCHAR(50);

COMMENT ON COLUMN t_dis_withdraw_account.account_province IS '����������ʡ';

ALTER TABLE t_dis_withdraw_account ADD COLUMN account_city VARCHAR(50);

COMMENT ON COLUMN t_dis_withdraw_account.account_city IS '������������';