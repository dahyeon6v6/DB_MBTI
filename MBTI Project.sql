-- ���̺� ������ ���踦 ����Ͽ� �� ���� �����ص� ������ �߻����� �ʰ� ���ĵǾ����ϴ�.

-- t_mbti Table Create SQL
-- ���̺� ���� SQL - t_mbti

DROP TABLE mbti_t CASCADE CONSTRAINTS PURGE;
DROP TABLE jobs_t CASCADE CONSTRAINTS PURGE;
DROP TABLE majors_t CASCADE CONSTRAINTS PURGE;
DROP TABLE mbti_jobs_t CASCADE CONSTRAINTS PURGE;
DROP TABLE jobs_majors_t CASCADE CONSTRAINTS PURGE;


CREATE TABLE mbti_t
(
    mbti_num    VARCHAR(10)     NOT NULL, 
    mbti        VARCHAR(10)     NOT NULL, 
    m_char      VARCHAR(500)    NOT NULL, 
     PRIMARY KEY (mbti_num)
);

insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-1','ISTJ','ü����,������,����,���λ��׿� �ΰ�');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-2','ISFJ','å�Ӱ�,�ŷڼ�,������,�γ���');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-3','INFJ','â�Ǽ�,����,���Է�,�����ɷ�');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-4','INTJ','�м���,��ǥ������,������,�ڱ��ֵ���');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-5','ISTP','�����ذ�ɷ�,�ǿ뼺,�����ο�,������');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-6','ISFP','�ΰ���,���뼺,�ڿ�ģȭ��,��������');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-7','INFP','â�Ǽ�,�ΰ���,������,�ھƼ���');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-8','INTP','��ǥ������,�м���,������,�ڱ��ֵ���');  
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-9','ESTP','������,�����,���ɻ��� �پ缺,�����');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-10','ESFP','Ȱ����,���뼺,�̷����⼺');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-11','ENFP','���漺,â�Ǽ�,���뼺,������');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-12','ENTP','ǳ���� ����,��â��,�м���,��ǥ���⼺');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-13','ESTJ','������,������,�γ���,�ŷڼ�');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-14','ESFJ','ģȭ��,���½�,��ȭ��,������'); 
insert into mbti_t (mbti_num,mbti, m_char)
    values('00-15','ENFJ','������,ģȭ��,������,����');
insert into mbti_t (mbti_num,mbti, m_char)
    values('00-16','ENTJ','��ǥ������,�ڽŰ�,������,��ܷ�');


-- ���̺� Comment ���� SQL - mbti_t
COMMENT ON TABLE mbti_t IS 'mbti';

-- �÷� Comment ���� SQL - mbti_t.mbti_num
COMMENT ON COLUMN mbti_t.mbti_num IS 'mbti�ĺ���ȣ';

-- �÷� Comment ���� SQL - mbti_t.mbti
COMMENT ON COLUMN mbti_t.mbti IS 'mbti��';

-- �÷� Comment ���� SQL - mbti_t.m_char
COMMENT ON COLUMN mbti_t.m_char IS '���� Ư¡';


-- jobs_t Table Create SQL
-- ���̺� ���� SQL - jobs_t
CREATE TABLE jobs_t
(
    jobs_num    VARCHAR(10)     NOT NULL, 
    jobs        VARCHAR(50)     NOT NULL, 
    j_char      VARCHAR(500)    NOT NULL, 
    j_lic       VARCHAR(500)    NOT NULL,
    mbti_num    VARCHAR(10)     NOT NULL, 
     PRIMARY KEY (jobs_num)
);

insert into jobs_t values ('j-01', 'ȸ���', '�濵�ڿ� ������, ���� �籹 �� �ǻ� ������ ���õ� ������� �ڿ� ��н� �ʿ�� �ϴ� ���� ��Ȳ�� ���� ����, ���� ������ �ۼ� ���� ����Ѵ�.', '1.����ȸ���(CPA) 2.������', '00-1');
insert into jobs_t values ('j-02', '�濵�м���', '����� �濵�� ���� ������ �м�, ���� �ذ��� ���� ��å ����, �̿� ���� ���� �ڹ� ������ ������', '1.�濵������ 2.�����ͺм�������(ADP)', '00-1');
insert into jobs_t values ('j-03', '����', '����� �л� ���� ����ġ�� �������, ���� �̼��� �������� �л����� �̲����ְų� ������ �ִ� ������ ����Ѵ�.', '�ӿ���', '00-2');
insert into jobs_t values ('j-04', '������', '����, �Ǵ� ��������� �ҼӵǾ� ��� ���� �ο��� ���� ���� ������ ����ϰ� ���ɰ� ����ó�� ������ ���� ���� ������ ��ȹ�ϰ� �����Ѵ�.', '1.��ȣ�� (������) 2.�������� 1��(������', '00-2');
insert into jobs_t values ('j-05', '������', '���� Ȱ��, �� ���� ��ǰ�� â���ϰų� ǥ���ϴ� ���� �������� �ϴ� ����̴�.', '1.��ȭ�����ؼ��� �ڰ��� 2.�÷�����Ʈ ��硤 ������', '00-3');
insert into jobs_t values ('j-06', '����', '����������� ����, ����, ����, ���� �� ���������� ������� �ް� �ִ� ������� �ɸ��˻�, ��� ���α׷� ���� Ȱ���Ͽ� ���� �ذ��� ���� �����ϴ� ����Դϴ�.', '1.û�ҳ���� 1�� 2.���Űǰ��ӻ�ɸ���1��', '00-3');
insert into jobs_t values ('j-07', '������', '�������� ���İ� �����͸� �м��Ͽ� ���ο� �߰��� ã�� ������ �ذ��ϸ� ���ο� �����°� ������ ��� ��ȸ�� ����� �⿩�ϴ� ������ �մϴ�.', '1.ȭ�км���� 2.���ڷ±��', '00-4');
insert into jobs_t values ('j-08', '������', '�����ڴ� ������ ������ ������ ����� Ȱ���Ͽ� �پ��� �о߿��� �������� ������ �ذ��ϰ� �������� ����� ����, ����, �����ϴ� �������Դϴ�.', '1.���������� 2.�Ϲݱ����', '00-4');
insert into jobs_t values ('j-09', '������ ����', '������������ ü�°� ����� �ִ��� �����Ͽ� ��⿡�� �����ϰ� ��ǥ�� ���� ����ϸ� ����� ������ �޼��ؼ� �ҵ鿡�� ������ �ִ� �����Դϴ�.', '1.������������ 2.�ǰ� �������', '00-5');
insert into jobs_t values ('j-10', '�����', '����ڴ� ������ ���İ� â�Ƿ��� Ȱ���Ͽ� �ַ���� �����ϰ� �����Ͽ� �ű���� �����ϴ� �� ��ȸ������ ������ ������ �̲���� �������� ������ �ذ��մϴ�.', '1.��������� 2.������������', '00-5');
insert into jobs_t values ('j-11', '�����̳�', '�����̳ʴ� â������ ���̵��� �ð��� ������ Ȱ���Ͽ� ��ǰ, �׷���, �귣�� �� �پ��� �о߿��� �������� �������� ����� �������Դϴ�.', '1.�������α�ɻ� 2.�ð������α��', '00-6');
insert into jobs_t values ('j-12', '�������', '��������� ���� �䱸�� �ľ��ϰ� ��ǰ �Ǵ� ������ ��ġ�� ȿ�������� �����Ͽ� �ŷڸ� �����ϰ� ������ �����Ű�� �Ǹ� �������Դϴ�.', '1.��ȸ����м���2�� 2.�ڷ������ð�����', '00-6');
insert into jobs_t values ('j-13', '�۰�', '�۰��� ���°� ����� ���� �����Ͽ� �پ��� �̾߱⸦ â���ϰ� ���ڿ��� ������ ���ϴ� �������Դϴ�.', '1.�����������ڰ��� 2.����������ڰ���', '00-7');
insert into jobs_t values ('j-14', '�ǻ�', '�ǻ�� ȯ���� ������ �����ϰ� ġ���ϱ� ���� ������ ���İ� ����� Ȱ���Ͽ� �ǰ��� ȸ����Ű�� �������Դϴ�.', '�������', '00-7');
insert into jobs_t values ('j-15', '������', '�����ڴ� �ڿ� ������ �����ϰ� �����ϱ� ���� ������ �����ϰ� �����͸� �м��Ͽ� ���ο� ������ �߰��ϰ� �⿩�մϴ�.', '1.ȯ�濵���򰡻� 2.ȭ�км����', '00-8');
insert into jobs_t values ('j-16', '����Ʈ���� ������', '����Ʈ��� �����Ͽ� �ڵ� �ۼ����� �׽�Ʈ���� ��ü ���� ������ ����ϸ�, �پ��� �÷������� ��Ȱ�� ����� �����Ͽ� �������� ��� �ַ���� �����մϴ�.', '1.����ó����� 2.������ �м����', '00-8');
insert into jobs_t values ('j-17', '�繫����', '�ں� ����, ���� �ǻ� ����, �ڱ� ���� �� ��� �� ����� �ڱ��� ȿ�������� ����Ͽ� �繫 �������� �����ϰ� ������ �̲��� �繫����ũ�� �ּ�ȭ �ϰ�,  ������ �ش�ȭ�ϴ� �������� Ȱ���� �����ϴ� ����Դϴ�.', '1. �����繫�м��� 2.�繫���������', '00-9');
insert into jobs_t values ('j-18', '�����', '������� �������� ���̵��� ��ܷ��� ���� ���ο� ������ ��ô�ϰ�, �ڿ��� ȿ�������� Ȱ���Ͽ� �������� ������ �̷�� ������ �����ϴ� ����Դϴ�.', '1.�濵�� ���� 2.������Ʈ ���� ������', '00-9');
insert into jobs_t values ('j-19', '�Ǹ���', '�Ǹ����� ��ǰ �Ǵ� ���񽺸� ������ �Ǹ��ϰ�, ���� �䱸�� �����Ͽ� ������ �ַ���� �����ϴ� ������ �մϴ�.', '1.Certified Professional Sales Person(CPSP)  2.Certified Sales Executive(CSE)', '00-10');
insert into jobs_t values ('j-20', 'ȣ�� �濵', 'ȣ�� �濵�ڴ� ȣ�� ��� ��ȹ�ϰ� �����Ͽ� �� ���� ǰ���� �����ϰ� ����Ű��, ȣ���� ���ͼ��� ������ �����ϴ� ������ �����մϴ�.', '1.ȣ�ڰ濵�� 2.ȣ�ڰ�����', '00-10');
insert into jobs_t values ('j-21', 'Ŀ�´����̼� ������', 'Ŀ�´����̼� �������� ��Ȯ�ϰ� ȿ������ �޽��� ���ް� �ǻ������ ��ָ� �ذ��Ͽ� ���� �Ǵ� ������ ��ǥ�� �޼��ϴµ� �⿩�մϴ�.', '1.Ŀ�´����̼������� �ڰ��� 2.AICP �ڰ���(AI Ŀ�´����̼�)', '00-11');
insert into jobs_t values ('j-22', '��������', '���� ������ �پ��� ��ü�� Ȱ���Ͽ� ���� ķ������ ��ȹ, �����Ͽ� ���� �귣�� �������� ������ ������Ű�� ���� ����Դϴ�.','1.Google Ads Certification  2.Facebook Blueprint Certification', '00-11');
insert into jobs_t values ('j-23', '�������డ', '�������డ�� ����� ������ ���� �ڱ� �������� �߰��ϰ�, �ڹ��� ���� ���� ������ �����Ͽ� ���� ���忡���� ������ ���� �������Դϴ�.','1.�ſ�м��� 2.�ſ�����м���(CRA)', '00-12');
insert into jobs_t values ('j-24', '�����', '������� �پ��� ��ü�� ���� ����̳� �̽��� �����ϰ� ������ �����Ͽ� ���߿��� �νİ� �ν��� �����ϴ� �������Դϴ�.','1.�����Ż����� 2.KBS�ѱ���ɷ½���', '00-12');
insert into jobs_t values ('j-25', '������', '�������� ���� ���İ� �������� ������ Ȱ���Ͽ� ������� �Ǹ��� �ǹ��� ��ȣ�ϰ� ���� ������ �ذ��ϴ� �������Դϴ�.','1.���γ빫�� 2.������', '00-13');
insert into jobs_t values ('j-26', '������', '������ ����� ����� ��ȣ�ϴ� �����Դϴ�. ������ ������ ġ�Ȱ� ������ ��ǥ�� ���� ���� ���� �����ϸ� ����մϴ�.','�ѱ���ɷ°�������', '00-13');
insert into jobs_t values ('j-27', '������', '��κ� ���� �ӿ������ ���� �б����� ����� ���� �ϰ� �˴ϴ�. ���� �������μ��� ������ Ű�� ����� ����ġ�� �����ִ� ���� �մϴ�.','�ӿ���', '00-14');
insert into jobs_t values ('j-28', '�渮��', '�渮���� ȸ��, �繫 ���� �ۼ�, ���� �� ���� ����Ͽ� ����� �繫 �ǰ��� �����ϰ� �濵 �ǻ� ������ �ʿ��� ������ �����ϴ� ������ �����մϴ�.','1.��ǻ��Ȱ��ɷ� 1��, 2.����ȸ�� 1��', '00-14');
insert into jobs_t values ('j-29', '������', '������, �·�, ���, �źε� �ٸ� ������� ������ ����ִ� ����ڷμ��� ������ �����ϸ鼭 ��ȸ �����ڷμ��� ������ �մϴ�.','1.�ɸ����� 2.���Űǰ��ӻ�ɸ���', '00-15');
insert into jobs_t values ('j-30', '�Ƿ���', '���� �� ���ظ� ġ���ϸ� �ǰ��� ���� �� ���� ����� ���� ������ �����մϴ�. ���� �Ƿ������� �پ��ϸ� ȯ���� �ǰ��� ������ �ٷ�� ���� �ϱ⿡ �Ҹ� �ǽ��� �������ϴ� �����Դϴ�.','�������', '00-15');
insert into jobs_t values ('j-31', '����', '���������� ������ ��������� ������ ���� ����� ��ȣ�ϴ� ���� �մϴ�. ������ ���� ����а輱 ���� ����, �ؾȼ� �� ���� �߿� �ü��� ���� ��� �� ���������� �մϴ�.','�ѱ���ɷ°�������', '00-16');
insert into jobs_t values ('j-32', '��ġ��', '����� ������ ������ ���� ���ο� ������ �߰� �� ��������� ���縦 ���� ������ ���� ���� �� ��ǰ� �ִ��� �����ϰ� �߸��� �κ��� ���� �� �����մϴ�.','�ѱ���ɷ°�������', '00-16');

-- ���̺� Comment ���� SQL - jobs_t
COMMENT ON TABLE jobs_t IS '����';

-- �÷� Comment ���� SQL - jobs_t.jobs_num
COMMENT ON COLUMN jobs_t.jobs_num IS '�����ĺ���ȣ';

-- �÷� Comment ���� SQL - jobs_t.jobs
COMMENT ON COLUMN jobs_t.jobs IS '������';

-- �÷� Comment ���� SQL - jobs_t.j_char
COMMENT ON COLUMN jobs_t.j_char IS '���� Ư¡';

-- �÷� Comment ���� SQL - jobs_t.j_lic
COMMENT ON COLUMN jobs_t.j_lic IS '�ڰ���';

-- �÷� Comment ���� SQL - jobs_t.mbti_num
COMMENT ON COLUMN jobs_t.mbti_num IS 'mbti�ĺ���ȣ';

-- Foreign Key ���� SQL - jobs_t(mbti_num) -> mbti_t(mbti_num)
ALTER TABLE jobs_t
    ADD CONSTRAINT FK_jobs_t_mbti_num_mbti_t_mbti_num FOREIGN KEY (mbti_num)
        REFERENCES mbti_t (mbti_num) ;

-- Foreign Key ���� SQL - jobs_t(mbti_num)
-- ALTER TABLE jobs_t
-- DROP CONSTRAINT FK_jobs_t_mbti_num_mbti_t_mbti_num;


-- majors_t Table Create SQL
-- ���̺� ���� SQL - majors_t
CREATE TABLE majors_t
(
    major_num    VARCHAR(10)     NOT NULL, 
    major        VARCHAR(50)     NOT NULL, 
    m_char       VARCHAR(500)    NOT NULL, 
     PRIMARY KEY (major_num)
);


insert into majors_t values ('m-01', 'ȸ���а�', '����� ������ ���� ��ü���� �ո����� �ǻ������ �� �� �ֵ��� ������ ������ �����ϴ� �����ý��� �а�');
insert into majors_t values ('m-02', '�濵�����а�', '����ȭ, ����ȭ�� ���� ��ȭ�� ������ �� �ֵ��� ���� �濵������ Ȱ���� ���� ��ü�� �ǻ������ �����ϴ� �߿��� ������ ����ϴ� �а�');
insert into majors_t values ('m-03', '�����а�', '������ ���� �й��� �̷а� �ǽ�, ���� Ȱ���� ����ϸ� ���� ������ �ذ��ϴ� ���������� �缺�а�');
insert into majors_t values ('m-04', '�����а�', '������� �ʿ��� ��ȣ�ۿ��� �����ϰ� ���� �ذῡ ������ ���� �� �о߸� ȿ�������� �����Ͽ� ������ �� ��ȸ �ι����� ������ ������ �������ϴ� �а�');
insert into majors_t values ('m-05', '�����а�', '������ ǥ���ϴ� ���� ����� ���, ����, ������ �̷а� ������ ���� ���� ������ �����ϴ� �а�');
insert into majors_t values ('m-06', '�ɸ��а�', '���� �ΰ��� ������ �ൿ�� ���������� �����ϸ� ��ȸ ������ �ذ�� ���� ���� ���� ���̴� �� �⿩�ϴ� �а�');
insert into majors_t values ('m-07', '���������а�', '�� �о߸� �������� ���̿��� �������� �׸����� �İ��� �����ϰ� ������ ����, �����ϸ� ���ο� �̷��� �̲���� �а�');
insert into majors_t values ('m-08', '�̰��迭 �а�', '�ڿ����а� ��� ������� ������ Ȱ���� ��ȸ�� ������ �ʿ��� �پ��� ����� ����, ����, ���ȭ��Ű�� �а�');
insert into majors_t values ('m-09', 'ü���а�', '��ü�� ���� �̷������ �������� ������ �缺�� ���� ���α׷��� �پ��� �Ǳ� �ǽ� ������ �����ϴ� �а�');
insert into majors_t values ('m-10', '���а�', '���� ������ Ȱ���� ������ ����� �߸��ϰ� ������ ����, �����ϴ� �а�');
insert into majors_t values ('m-11', '������ �迭 �а�', '�ΰ���Ȱ�� ���԰� �Ƹ��ٿ��� �߱��ϴ� ������ ���ݿ� ���� ���İ� �̷��� �����ϰ� �Ǳ⸦ ������ �а�');
insert into majors_t values ('m-12', '�����а�', '�۷ι�ȭ �ô븦 �¾� ����, �濵 �� ������ ���õ� ���������� �����ϰ� ���� �ɷ��� �Ծ������ν� ������ȸ�� ������ �����ϱ� ���� �а�');
insert into majors_t values ('m-13', '����â�۰�', '�� â�� �ɷ��� Ű��� ���� �̷��� �����Ͽ� �츮 ���� ����� �ǹ̸� ������ ǥ������ ��ȭ��Ű�� ���� ���� �а�');
insert into majors_t values ('m-14', '�ǿ���', '���� �ڿ������� �������� �ϴ� ������� �о߷�, ����� �츮�� �� �ʿ��� ���İ� �Ƿ������μ��� �����ǽ��� �Ծ��ϰ� ��ȸ�� å���� ���� �� �ִ� �Ҿ�� �ǿ����� �ɷ��� ���� �������� Ű��� �а�');
insert into majors_t values ('m-15', '�����а�', '��� ��Ÿ���� �����̳� ��Ģ, �̷��� ����ϴ� ������ ����� �����ϸ� ���ȭ�ϴ� ���θ� �ϴ� �а�');
insert into majors_t values ('m-16', '��ǻ�Ͱ��а�', 'IT�� ������� ����� ������� ����ȭ �ô븦 �̲��� �پ��� �̷а� �ǽ��� ���� ������ ���縦 Ű��� �� ��ǥ�� �ΰ� �ִ� �а�');
insert into majors_t values ('m-17', '�濵�а�', '������, �������λ�, ���� ����, �繫 ���� �� ��� �濵�� ���� ������ ���� �а�');
insert into majors_t values ('m-18', '�����а�', '��ǰ�� ���񽺰� ���� ����� ���� �Һ��ڿ��� ���޵Ǵ� ��������, ����ǰ�� ��ȸ�� �̵��� ����Ǵ� ��� ����Ȱ���� �ٷ�� �й�');
insert into majors_t values ('m-19', 'ȣ�ڰ����濵�а�', '��������� �ΰ�ȯ���� ��ȣ�ۿ��� �ùٸ��� �νĽ�Ű�� �������� ���� ���� ���� ������ Ȱ���� �����ϴ� �����η��� �缺�ϴ� �а�');
insert into majors_t values ('m-20', '�̵��Ŀ�´����̼��а�', '��ȸ���� �߻��ϴ� Ŀ�´����̼� ������ ���������� �����ϴ� �а�');
insert into majors_t values ('m-21', '����ȫ���а�', '����ȭ �ô��� �̵�� ȯ�� ��ȭ�� �����ϴ� ������ �� ��ȹ��, �����ڷμ��� �̷��� Ŀ�´����̼� �������� �缺�ϱ� ���� �а�');
insert into majors_t values ('m-22', '���������а�', '���� �� ������ �⺻������ �������ν� ������ ���� ������ ���� �̽��� �� ���������� �����ϰ� ���� ����Ȱ�� �������� �ո����� �Ǵ��� �� �� �ִ� ���� �� ���� �������� �缺�ϴ� �а�');
insert into majors_t values ('m-23', '��������а�', 'Ŀ�´����̼����� �������� �̵� �����ϴ� �а�');
insert into majors_t values ('m-24', '���а�', '���� ���� ���ؿ� ������ �̷��������������� �����ϵ��� �����ν� �ùٸ� ����Ȱ�� �����ϰ� ������ ��ȸ�� �⿩�� �� �ִ� ������ ���ֽù��� �缺�ϱ� ���� �а�');
insert into majors_t values ('m-25', '���������а�', '���� ���� ������ ���ΰ� ��å�� �����ϸ�, �پ��� �����̷��� �ؼ��ϰ� �����ϴ� �а�');
insert into majors_t values ('m-26', '�����а�', '�ϻ�� �ƴ϶� �η� ���� ������ ������ �ִ� ���������� ���� �����ϸ� ������ ������� ������ �а�');
insert into majors_t values ('m-27', '�Ƿ�濵�а�', '���� �濵�� �����η� �缺�� ��ǥ�� �ϸ� ȿ������ �����濵�� �����ϴ� �ٱ���η��� �缺�ϴ� �а�');
insert into majors_t values ('m-28', '�����а�', '���ѹα��� ���� �̲��� �� �屳 �� ������������ �缺�ϱ� ���� �а�');
insert into majors_t values ('m-29', '��ġ�ܱ��а�', '��ġ������ ���������� Ž���������Ͽ� ��ġ �� �ܱ��о߿��� Ȱ���� �� �ִ� �����η��� �缺�Ϸ��� �а�');


-- ���̺� Comment ���� SQL - majors_t
COMMENT ON TABLE majors_t IS '�а�';

-- �÷� Comment ���� SQL - majors_t.major_num
COMMENT ON COLUMN majors_t.major_num IS '�а��ĺ���ȣ';

-- �÷� Comment ���� SQL - majors_t.major
COMMENT ON COLUMN majors_t.major IS '�а���';

-- �÷� Comment ���� SQL - majors_t.m_char
COMMENT ON COLUMN majors_t.m_char IS '�а� ����';


-- jobs_majors_t Table Create SQL
-- ���̺� ���� SQL - jobs_majors_t
CREATE TABLE jobs_majors_t
(
    jobs_num     VARCHAR(10)    NOT NULL, 
    major_num    VARCHAR(10)    NOT NULL
);

insert into jobs_majors_t values ('j-01', 'm-01');
insert into jobs_majors_t values ('j-02', 'm-02');
insert into jobs_majors_t values ('j-03', 'm-03');
insert into jobs_majors_t values ('j-04', 'm-04');
insert into jobs_majors_t values ('j-05', 'm-05');
insert into jobs_majors_t values ('j-06', 'm-06');
insert into jobs_majors_t values ('j-07', 'm-07');
insert into jobs_majors_t values ('j-08', 'm-08');
insert into jobs_majors_t values ('j-09', 'm-09');
insert into jobs_majors_t values ('j-10', 'm-10');
insert into jobs_majors_t values ('j-11', 'm-11');
insert into jobs_majors_t values ('j-12', 'm-12');
insert into jobs_majors_t values ('j-13', 'm-13');
insert into jobs_majors_t values ('j-14', 'm-14');
insert into jobs_majors_t values ('j-15', 'm-15');
insert into jobs_majors_t values ('j-16', 'm-16');
insert into jobs_majors_t values ('j-17', 'm-17');
insert into jobs_majors_t values ('j-18', 'm-17');
insert into jobs_majors_t values ('j-19', 'm-18');
insert into jobs_majors_t values ('j-20', 'm-19');
insert into jobs_majors_t values ('j-21', 'm-20');
insert into jobs_majors_t values ('j-22', 'm-21');
insert into jobs_majors_t values ('j-23', 'm-22');
insert into jobs_majors_t values ('j-24', 'm-23');
insert into jobs_majors_t values ('j-25', 'm-24');
insert into jobs_majors_t values ('j-26', 'm-25');
insert into jobs_majors_t values ('j-27', 'm-03');
insert into jobs_majors_t values ('j-28', 'm-01');
insert into jobs_majors_t values ('j-29', 'm-26');
insert into jobs_majors_t values ('j-30', 'm-27');
insert into jobs_majors_t values ('j-31', 'm-28');
insert into jobs_majors_t values ('j-32', 'm-29');


-- ���̺� Comment ���� SQL - jobs_majors_t
COMMENT ON TABLE jobs_majors_t IS '������ �а� ����';

-- �÷� Comment ���� SQL - jobs_majors_t.jobs_num
COMMENT ON COLUMN jobs_majors_t.jobs_num IS '�����ĺ���ȣ';

-- �÷� Comment ���� SQL - jobs_majors_t.major_num
COMMENT ON COLUMN jobs_majors_t.major_num IS '�а��ĺ���ȣ';

-- Foreign Key ���� SQL - jobs_majors_t(major_num) -> majors_t(major_num)
ALTER TABLE jobs_majors_t
    ADD CONSTRAINT FK_jobs_majors_t_major_num_majors_t_major_num FOREIGN KEY (major_num)
        REFERENCES majors_t (major_num) ;

-- Foreign Key ���� SQL - jobs_majors_t(major_num)
-- ALTER TABLE jobs_majors_t
-- DROP CONSTRAINT FK_jobs_majors_t_major_num_majors_t_major_num;

-- Foreign Key ���� SQL - jobs_majors_t(jobs_num) -> jobs_t(jobs_num)
ALTER TABLE jobs_majors_t
    ADD CONSTRAINT FK_jobs_majors_t_jobs_num_jobs_t_jobs_num FOREIGN KEY (jobs_num)
        REFERENCES jobs_t (jobs_num) ;

-- Foreign Key ���� SQL - jobs_majors_t(jobs_num)
-- ALTER TABLE jobs_majors_t
-- DROP CONSTRAINT FK_jobs_majors_t_jobs_num_jobs_t_jobs_num;


commit;