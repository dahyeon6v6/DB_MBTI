-- mbti�� ��õ ������ ���� ����
select distinct m.mbti "MBTI", j.jobs "����", j.j_char "��������" from mbti_t m, jobs_t j where m.mbti_num=j.mbti_num;

-- mbti�� Ư¡�� �� mbti�� ���� ��õ
select m.mbti "MBTI", m.m_char "MBTI Ư¡", j.jobs "����" from mbti_t m, jobs_t j where m.mbti_num=j.mbti_num;

-- ������ ��õ �а�
select j.jobs "����", m.major "��õ�а�" from jobs_t j, majors_t m, jobs_majors_t jm where j.jobs_num=jm.jobs_num and jm.major_num=m.major_num ;

-- mbti�� ��õ ������ ��õ �а� - mbti �������� ��������
select m.mbti "MBTI", j.jobs "����", m.major "��õ�а�" from mbti_t m, jobs_t j, majors_t m, jobs_majors_t jm where j.jobs_num=jm.jobs_num and jm.major_num=m.major_num and m.mbti_num=j.mbti_num order by m.mbti desc;

-- mbti�� Ư¡�� ��õ ����, ���� ����, �ش� ������ ��õ�ϴ� �а� - mbti �������� ��������
select m.mbti "MBTI", m.m_char "MBTI Ư¡", j.jobs "��õ����", j.j_char "��������", ma.major "��õ�а�" from mbti_t m, jobs_t j, majors_t ma, jobs_majors_t jm where m.mbti_num = j.mbti_num and j.jobs_num = jm.jobs_num and ma.major_num = jm.major_num order by mbti desc;

-- 'ȸ���а�'�� ��õ �а��� ������? (��������)
select m.major "�а�", j.jobs "����" from jobs_t j, jobs_majors_t jm, majors_t m where j.jobs_num=jm.jobs_num and jm.major_num=m.major_num and m.major_num=(select m.major_num from majors_t m where major='ȸ���а�');
-- 'ȸ���а�'�� ��õ �а��� ������? (����)
select m.major "�а�", j.jobs "����" from jobs_t j, jobs_majors_t jm, majors_t m 

-- '�濵�а�'�� ��õ �޴� MBTI��?
select m.mbti "MBTI", ma.major from mbti_t m, majors_t ma, jobs_t j, jobs_majors_t jm where ma.major_num=jm.major_num and jm.jobs_num=j.jobs_num and j.mbti_num=m.mbti_num and ma.major='�濵�а�';

-- 'I'�� ���� MBTI�� ��õ ����
select m.mbti, j.jobs from jobs_t j, mbti_t m, majors_t ma, jobs_majors_t jm where m.mbti_num=j.mbti_num and j.jobs_num=jm.jobs_num and ma.major_num=jm.major_num and m.mbti like 'I%';

-- 'ST' ������ Ư¡�� ������õ
select  m.mbti "MBTI" ,j.jobs "��õ����", j.j_char "����Ư¡" from mbti_t m, jobs_t j, majors_t ma, jobs_majors_t jm where m.mbti_num = j.mbti_num and j.jobs_num = jm.jobs_num and ma.major_num=jm.major_num and m.mbti like '%ST%';

-- '����'�� ���õ� �а��� ��õ ������ ���� Ư¡
select j.jobs "��õ����", j.j_char "����Ư¡" from mbti_t m, jobs_t j, majors_t ma, jobs_majors_t jm where m.mbti_num=j.mbti_num and j.jobs_num=jm.jobs_num and ma.major_num=jm.major_num and j.j_char like '%����%';
select j.jobs "��õ����", j.j_char "����Ư¡" from mbti_t m, jobs_t j, majors_t ma, jobs_majors_t jm where m.mbti_num=j.mbti_num and j.jobs_num=jm.jobs_num and ma.major_num=jm.major_num and j.j_char like '%����%';

