-- mbti별 추천 직업과 직업 설명
select distinct m.mbti "MBTI", j.jobs "직업", j.j_char "직업설명" from mbti_t m, jobs_t j where m.mbti_num=j.mbti_num;

-- mbti별 특징과 각 mbti별 직업 추천
select m.mbti "MBTI", m.m_char "MBTI 특징", j.jobs "직업" from mbti_t m, jobs_t j where m.mbti_num=j.mbti_num;

-- 직업별 추천 학과
select j.jobs "직업", m.major "추천학과" from jobs_t j, majors_t m, jobs_majors_t jm where j.jobs_num=jm.jobs_num and jm.major_num=m.major_num ;

-- mbti별 추천 직업과 추천 학과 - mbti 기준으로 내림차순
select m.mbti "MBTI", j.jobs "직업", m.major "추천학과" from mbti_t m, jobs_t j, majors_t m, jobs_majors_t jm where j.jobs_num=jm.jobs_num and jm.major_num=m.major_num and m.mbti_num=j.mbti_num order by m.mbti desc;

-- mbti별 특징과 추천 직업, 직업 설명, 해당 직업에 추천하는 학과 - mbti 기준으로 내림차순
select m.mbti "MBTI", m.m_char "MBTI 특징", j.jobs "추천직업", j.j_char "직업설명", ma.major "추천학과" from mbti_t m, jobs_t j, majors_t ma, jobs_majors_t jm where m.mbti_num = j.mbti_num and j.jobs_num = jm.jobs_num and ma.major_num = jm.major_num order by mbti desc;

-- '회계학과'가 추천 학과인 직업은? (서브쿼리)
select m.major "학과", j.jobs "직업" from jobs_t j, jobs_majors_t jm, majors_t m where j.jobs_num=jm.jobs_num and jm.major_num=m.major_num and m.major_num=(select m.major_num from majors_t m where major='회계학과');
-- '회계학과'가 추천 학과인 직업은? (조인)
select m.major "학과", j.jobs "직업" from jobs_t j, jobs_majors_t jm, majors_t m 

-- '경영학과'를 추천 받는 MBTI는?
select m.mbti "MBTI", ma.major from mbti_t m, majors_t ma, jobs_t j, jobs_majors_t jm where ma.major_num=jm.major_num and jm.jobs_num=j.jobs_num and j.mbti_num=m.mbti_num and ma.major='경영학과';

-- 'I'가 들어가는 MBTI의 추천 직업
select m.mbti, j.jobs from jobs_t j, mbti_t m, majors_t ma, jobs_majors_t jm where m.mbti_num=j.mbti_num and j.jobs_num=jm.jobs_num and ma.major_num=jm.major_num and m.mbti like 'I%';

-- 'ST' 유형의 특징과 직업추천
select  m.mbti "MBTI" ,j.jobs "추천직업", j.j_char "직업특징" from mbti_t m, jobs_t j, majors_t ma, jobs_majors_t jm where m.mbti_num = j.mbti_num and j.jobs_num = jm.jobs_num and ma.major_num=jm.major_num and m.mbti like '%ST%';

-- '예술'과 관련된 학과의 추천 직업과 직업 특징
select j.jobs "추천직업", j.j_char "직업특징" from mbti_t m, jobs_t j, majors_t ma, jobs_majors_t jm where m.mbti_num=j.mbti_num and j.jobs_num=jm.jobs_num and ma.major_num=jm.major_num and j.j_char like '%예술%';
select j.jobs "추천직업", j.j_char "직업특징" from mbti_t m, jobs_t j, majors_t ma, jobs_majors_t jm where m.mbti_num=j.mbti_num and j.jobs_num=jm.jobs_num and ma.major_num=jm.major_num and j.j_char like '%전문%';

