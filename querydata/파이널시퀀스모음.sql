-- ������ ����
    -- items���̺� �԰��ǰ��ȣ
create sequence items_sq 
start with 1
increment by 1;
    -- â������ �Խñ۹�ȣ
create sequence opensq
start with 1
increment by 1;
    --â������ �亯��ȣ
create sequence rpsq
start with 1
increment by 1;
    -- �������� �����ȣ
create sequence empSq
start with 2000
increment by 1;
    --

-- ������ ĳ�ø޸� �����ϱ�
alter sequence opensq nocache; -- â������ �Խñ� ��ȣ
alter sequence rpsq nocache; -- â������ �亯��ȣ
alter sequence s1 nocache; -- ��������ȣ
alter sequence items_sq nocache; -- ��ǰ���̺� �԰��ǰ��ȣ
alter sequence empSq nocache; -- ���� �����ȣ





