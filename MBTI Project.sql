-- 테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.

-- t_mbti Table Create SQL
-- 테이블 생성 SQL - t_mbti

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
    values('00-1','ISTJ','체계적,결정적,논리적,세부사항에 민감');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-2','ISFJ','책임감,신뢰성,적응력,인내심');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-3','INFJ','창의성,비전,통촬력,공감능력');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-4','INTJ','분석력,목표지향적,비판적,자기주도성');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-5','ISTP','문제해결능력,실용성,자유로움,과감성');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-6','ISFP','민감성,융통성,자연친화력,미적감각');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-7','INFP','창의성,인간애,진정성,자아성찰');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-8','INTP','목표지향적,분석력,비판적,자기주도성');  
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-9','ESTP','과감성,재빠름,관심사의 다양성,실행력');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-10','ESFP','활동적,융통성,미래지향성');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-11','ENFP','개방성,창의성,융통성,비판적');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-12','ENTP','풍부한 상상력,독창성,분석력,목표지향성');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-13','ESTJ','결정력,조직력,인내심,신뢰성');
insert into mbti_t (mbti_num,mbti, m_char) 
    values('00-14','ESFJ','친화력,협력심,조화성,적응성'); 
insert into mbti_t (mbti_num,mbti, m_char)
    values('00-15','ENFJ','지도력,친화력,감성적,비전');
insert into mbti_t (mbti_num,mbti, m_char)
    values('00-16','ENTJ','목표지향적,자신감,비판적,결단력');


-- 테이블 Comment 설정 SQL - mbti_t
COMMENT ON TABLE mbti_t IS 'mbti';

-- 컬럼 Comment 설정 SQL - mbti_t.mbti_num
COMMENT ON COLUMN mbti_t.mbti_num IS 'mbti식별번호';

-- 컬럼 Comment 설정 SQL - mbti_t.mbti
COMMENT ON COLUMN mbti_t.mbti IS 'mbti명';

-- 컬럼 Comment 설정 SQL - mbti_t.m_char
COMMENT ON COLUMN mbti_t.m_char IS '성격 특징';


-- jobs_t Table Create SQL
-- 테이블 생성 SQL - jobs_t
CREATE TABLE jobs_t
(
    jobs_num    VARCHAR(10)     NOT NULL, 
    jobs        VARCHAR(50)     NOT NULL, 
    j_char      VARCHAR(500)    NOT NULL, 
    j_lic       VARCHAR(500)    NOT NULL,
    mbti_num    VARCHAR(10)     NOT NULL, 
     PRIMARY KEY (jobs_num)
);

insert into jobs_t values ('j-01', '회계사', '경영자와 투자자, 과세 당국 등 의사 결정에 관련된 사람들이 자원 배분시 필요로 하는 재정 상황에 관한 조사, 공개 인증서 작성 등을 담당한다.', '1.공인회계사(CPA) 2.세무사', '00-1');
insert into jobs_t values ('j-02', '경영분석가', '기업의 경영에 관한 문제점 분석, 문제 해결을 위한 대책 연구, 이에 관한 상담과 자문 업무를 수행함', '1.경영지도사 2.데이터분석전문가(ADP)', '00-1');
insert into jobs_t values ('j-03', '교사', '교사는 학생 들을 가르치는 사람으로, 교육 이수의 과정에서 학생들을 이끌어주거나 도움을 주는 역할을 담당한다.', '임용고시', '00-2');
insert into jobs_t values ('j-04', '행정직', '국가, 또는 공공기관에 소속되어 담당 구역 민원과 정부 행정 업무를 담당하고 법령과 업무처리 규정에 따라 관련 업무를 계획하고 시행한다.', '1.변호사 (가산점) 2.직업상담사 1급(가산점', '00-2');
insert into jobs_t values ('j-05', '예술가', '예술 활동, 곧 예술 작품을 창작하거나 표현하는 것을 직업으로 하는 사람이다.', '1.문화예술해설사 자격증 2.컬러리스트 기사· 산업기사', '00-3');
insert into jobs_t values ('j-06', '상담사', '상담전문가는 성격, 정서, 관계, 진로 및 정신적으로 어려움을 겪고 있는 사람에게 심리검사, 상담 프로그램 등을 활용하여 문제 해결을 돕고 지원하는 사람입니다.', '1.청소년상담사 1급 2.정신건강임상심리사1급', '00-3');
insert into jobs_t values ('j-07', '연구원', '연구원은 지식과 데이터를 분석하여 새로운 발견을 찾고 문제를 해결하며 새로운 통찰력과 지식을 얻어 사회나 산업에 기여하는 역할을 합니다.', '1.화학분석기사 2.원자력기사', '00-4');
insert into jobs_t values ('j-08', '공학자', '공학자는 과학적 원리와 수학적 기술을 활용하여 다양한 분야에서 현실적인 문제를 해결하고 혁신적인 기술을 개발, 설계, 구축하는 전문가입니다.', '1.산업안전기사 2.일반기계기사', '00-4');
insert into jobs_t values ('j-09', '스포츠 선수', '스포츠선수는 체력과 기술을 최대한 발휘하여 경기에서 경쟁하고 목표를 향해 노력하며 우수한 성과를 달성해서 팬들에게 감동을 주는 직업입니다.', '1.스포츠지도사 2.건강 운동관리사', '00-5');
insert into jobs_t values ('j-10', '기술자', '기술자는 과학적 지식과 창의력을 활용하여 솔루션을 구상하고 구현하여 신기술을 개발하는 등 사회적으로 유용한 혁신을 이끌어내어 현실적인 문제를 해결합니다.', '1.용접기술사 2.전기응용기술사', '00-5');
insert into jobs_t values ('j-11', '디자이너', '디자이너는 창의적인 아이디어와 시각적 감각을 활용하여 제품, 그래픽, 브랜딩 등 다양한 분야에서 혁신적인 디자인을 만드는 전문가입니다.', '1.웹디자인기능사 2.시각디자인기사', '00-6');
insert into jobs_t values ('j-12', '세일즈맨', '세일즈맨은 고객의 요구를 파악하고 제품 또는 서비스의 가치를 효과적으로 전달하여 신뢰를 구축하고 매출을 증대시키는 판매 전문가입니다.', '1.사회조사분석사2급 2.텔레마케팅관리사', '00-6');
insert into jobs_t values ('j-13', '작가', '작가는 상상력과 언어의 힘을 결합하여 다양한 이야기를 창조하고 독자에게 감동을 전하는 예술가입니다.', '1.출판편집사자격증 2.언론편집사자격증', '00-7');
insert into jobs_t values ('j-14', '의사', '의사는 환자의 질병을 진단하고 치료하기 위해 의학적 지식과 기술을 활용하여 건강을 회복시키는 전문가입니다.', '국가고시', '00-7');
insert into jobs_t values ('j-15', '과학자', '과학자는 자연 현상을 연구하고 이해하기 위해 실험을 설계하고 데이터를 분석하여 새로운 지식을 발견하고 기여합니다.', '1.환경영향평가사 2.화학분석기사', '00-8');
insert into jobs_t values ('j-16', '소프트웨어 개발자', '소프트웨어를 설계하여 코드 작성부터 테스트까지 전체 개발 과정을 담당하며, 다양한 플랫폼에서 원활한 기능을 제공하여 혁신적인 기술 솔루션을 구현합니다.', '1.정보처리기사 2.빅데이터 분석기사', '00-8');
insert into jobs_t values ('j-17', '재무관리', '자본 구조, 투자 의사 결정, 자금 조달 및 운용 등 기업의 자금을 효율적으로 운용하여 재무 건전성을 유지하고 성장을 이끌어 재무리스크를 최소화 하고,  수익을 극대화하는 전략적인 활동을 수행하는 사람입니다.', '1. 공인재무분석사 2.재무위험관리사', '00-9');
insert into jobs_t values ('j-18', '기업가', '기업가는 혁신적인 아이디어와 결단력을 통해 새로운 시장을 개척하고, 자원을 효율적으로 활용하여 지속적인 성장을 이루는 비전을 실현하는 사람입니다.', '1.경영학 석사 2.프로젝트 관리 전문가', '00-9');
insert into jobs_t values ('j-19', '판매직', '판매직은 제품 또는 서비스를 고객에게 판매하고, 고객의 요구를 이해하여 최적의 솔루션을 제공하는 역할을 합니다.', '1.Certified Professional Sales Person(CPSP)  2.Certified Sales Executive(CSE)', '00-10');
insert into jobs_t values ('j-20', '호텔 경영', '호텔 경영자는 호텔 운영을 계획하고 조직하여 고객 서비스 품질을 유지하고 향상시키며, 호텔의 수익성과 성장을 촉진하는 역할을 수행합니다.', '1.호텔경영사 2.호텔관리사', '00-10');
insert into jobs_t values ('j-21', '커뮤니케이션 전문가', '커뮤니케이션 전문가는 명확하고 효과적인 메시지 전달과 의사소통의 장애를 해결하여 조직 또는 개인의 목표를 달성하는데 기여합니다.', '1.커뮤니케이션전문가 자격증 2.AICP 자격증(AI 커뮤니케이션)', '00-11');
insert into jobs_t values ('j-22', '광고대행사', '광고 대행사는 다양한 매체를 활용하여 광고 캠페인을 기획, 실행하여 고객의 브랜드 인지도와 매출을 증진시키는 전문 기업입니다.','1.Google Ads Certification  2.Facebook Blueprint Certification', '00-11');
insert into jobs_t values ('j-23', '투자은행가', '투자은행가는 기업과 투자자 간의 자금 유동성을 중개하고, 자문을 통해 투자 전략을 개발하여 금융 시장에서의 성공을 돕는 전문가입니다.','1.신용분석사 2.신용위험분석사(CRA)', '00-12');
insert into jobs_t values ('j-24', '언론인', '언론인은 다양한 매체를 통해 사건이나 이슈를 보도하고 정보를 전달하여 대중에게 인식과 인식을 형성하는 전문가입니다.','1.방송통신산업기사 2.KBS한국어능력시험', '00-12');
insert into jobs_t values ('j-25', '법조인', '법조인은 법률 지식과 전문적인 역량을 활용하여 사람들의 권리와 의무를 보호하고 법적 문제를 해결하는 전문가입니다.','1.공인노무사 2.법무사', '00-13');
insert into jobs_t values ('j-26', '경찰관', '국민의 생명과 재산을 보호하는 역할입니다. 국가와 국민의 치안과 안전을 목표로 범죄 예방 등을 수행하며 노력합니다.','한국사능력검정시험', '00-13');
insert into jobs_t values ('j-27', '교육자', '대부분 교사 임용시험을 통해 학교에서 교사로 일을 하게 됩니다. 교육 전문가로서의 역량을 키워 사람을 가르치고 도와주는 일을 합니다.','임용고시', '00-14');
insert into jobs_t values ('j-28', '경리직', '경리직은 회계, 재무 보고서 작성, 예산 편성 등을 담당하여 기업의 재무 건강을 유지하고 경영 의사 결정에 필요한 정보를 제공하는 업무를 수행합니다.','1.컴퓨터활용능력 1급, 2.전산회계 1급', '00-14');
insert into jobs_t values ('j-29', '종교가', '성직자, 승려, 목사, 신부등 다른 사람들의 고충을 들어주는 상담자로서의 역할을 수행하면서 사회 지도자로서의 역할을 합니다.','1.심리상담사 2.정신건강임상심리사', '00-15');
insert into jobs_t values ('j-30', '의료진', '질병 및 상해를 치료하며 의과학 연구 및 보건 향상을 위한 연구를 수행합니다. 관련 의료직종이 다양하며 환자의 건강과 생명을 다루는 일을 하기에 소명 의식을 가져야하는 직업입니다.','국가고시', '00-15');
insert into jobs_t values ('j-31', '군인', '직업군인은 국가의 안전보장과 국민의 생명 재산을 보호하는 일을 합니다. 남북한 간의 군사분계선 감시 관리, 해안선 및 국가 중요 시설에 대한 경계 및 수색정찰을 합니다.','한국사능력검정시험', '00-16');
insert into jobs_t values ('j-32', '정치인', '헌법과 법률에 규정에 따라 새로운 조항을 추가 및 국정감사와 조사를 통해 국정이 법에 따라 잘 운영되고 있는지 감시하고 잘못된 부분을 적발 및 시정합니다.','한국사능력검정시험', '00-16');

-- 테이블 Comment 설정 SQL - jobs_t
COMMENT ON TABLE jobs_t IS '직업';

-- 컬럼 Comment 설정 SQL - jobs_t.jobs_num
COMMENT ON COLUMN jobs_t.jobs_num IS '직업식별번호';

-- 컬럼 Comment 설정 SQL - jobs_t.jobs
COMMENT ON COLUMN jobs_t.jobs IS '직업명';

-- 컬럼 Comment 설정 SQL - jobs_t.j_char
COMMENT ON COLUMN jobs_t.j_char IS '직업 특징';

-- 컬럼 Comment 설정 SQL - jobs_t.j_lic
COMMENT ON COLUMN jobs_t.j_lic IS '자격증';

-- 컬럼 Comment 설정 SQL - jobs_t.mbti_num
COMMENT ON COLUMN jobs_t.mbti_num IS 'mbti식별번호';

-- Foreign Key 설정 SQL - jobs_t(mbti_num) -> mbti_t(mbti_num)
ALTER TABLE jobs_t
    ADD CONSTRAINT FK_jobs_t_mbti_num_mbti_t_mbti_num FOREIGN KEY (mbti_num)
        REFERENCES mbti_t (mbti_num) ;

-- Foreign Key 삭제 SQL - jobs_t(mbti_num)
-- ALTER TABLE jobs_t
-- DROP CONSTRAINT FK_jobs_t_mbti_num_mbti_t_mbti_num;


-- majors_t Table Create SQL
-- 테이블 생성 SQL - majors_t
CREATE TABLE majors_t
(
    major_num    VARCHAR(10)     NOT NULL, 
    major        VARCHAR(50)     NOT NULL, 
    m_char       VARCHAR(500)    NOT NULL, 
     PRIMARY KEY (major_num)
);


insert into majors_t values ('m-01', '회계학과', '기업을 포함한 경제 주체들이 합리적인 의사결정을 할 수 있도록 유용한 정보를 제공하는 정보시스템 학과');
insert into majors_t values ('m-02', '경영정보학과', '세계화, 정보화에 따른 변화를 대응할 수 있도록 여러 경영정보를 활용해 경제 주체의 의사결정을 지원하는 중요한 역할을 담당하는 학과');
insert into majors_t values ('m-03', '교육학과', '교육에 대한 학문적 이론과 실습, 교육 활동을 담당하며 관련 문제를 해결하는 교육전문가 양성학과');
insert into majors_t values ('m-04', '행정학과', '국가운영에 필요한 상호작용을 관찰하고 문제 해결에 초점을 맞춰 각 분야를 효율적으로 관리하여 국가와 각 사회 부문간의 균형적 발전을 디자인하는 학과');
insert into majors_t values ('m-05', '예술학과', '예술을 표현하는 여러 소재와 기법, 수단, 형식을 이론과 실제를 통해 기초 지식을 습득하는 학과');
insert into majors_t values ('m-06', '심리학과', '개별 인간의 마음과 행동을 과학적으로 공부하며 사회 문제의 해결과 개인 삶의 질을 높이는 데 기여하는 학과');
insert into majors_t values ('m-07', '연구관련학과', '각 분야를 광범위한 넓이에서 세부적인 항목으로 파고들어 공부하고 현상을 관찰, 연구하며 새로운 이론을 이끌어내는 학과');
insert into majors_t values ('m-08', '이공계열 학과', '자연과학과 산업 응용과학 지식을 활용해 사회와 개인이 필요한 다양한 기술을 관찰, 연구, 상용화시키는 학과');
insert into majors_t values ('m-09', '체육학과', '신체에 의해 이루어지는 교육으로 지도자 양성을 위한 프로그램과 다양한 실기 실습 교육을 제공하는 학과');
insert into majors_t values ('m-10', '공학과', '공학 지식을 활용해 진보된 기술을 발명하고 인프라를 설계, 구축하는 학과');
insert into majors_t values ('m-11', '디자인 계열 학과', '인간생활의 편리함과 아름다움을 추구하는 디자인 전반에 대한 지식과 이론을 습득하고 실기를 익히는 학과');
insert into majors_t values ('m-12', '무역학과', '글로벌화 시대를 맞아 경제, 경영 및 무역과 관련된 전문지식을 습득하고 실전 능력을 함양함으로써 국제사회의 발전에 공헌하기 위한 학과');
insert into majors_t values ('m-13', '문예창작과', '글 창작 능력을 키우고 문학 이론을 연구하여 우리 삶의 현상과 의미를 문학적 표현으로 승화시키는 법을 배우는 학과');
insert into majors_t values ('m-14', '의예과', '순수 자연과학을 바탕으로 하는 응용과학 분야로, 사람을 살리는 데 필요한 지식과 의료인으로서의 윤리의식을 함양하고 사회적 책임을 다할 수 있는 소양과 실용적인 능력을 갖춘 전문가를 키우는 학과');
insert into majors_t values ('m-15', '과학학과', '삶에서 나타나는 현상이나 법칙, 미래를 대비하는 가설을 세우고 연구하며 상용화하는 공부를 하는 학과');
insert into majors_t values ('m-16', '컴퓨터공학과', 'IT와 정보통신 기술을 기반으로 정보화 시대를 이끌며 다양한 이론과 실습을 통해 유능한 인재를 키우는 데 목표를 두고 있는 학과');
insert into majors_t values ('m-17', '경영학과', '마케팅, 조직ㆍ인사, 생산 관리, 재무 관리 등 기업 경영에 대한 지식을 배우는 학과');
insert into majors_t values ('m-18', '유통학과', '상품과 서비스가 여러 사람을 거쳐 소비자에게 전달되는 과정으로, 생산품의 사회적 이동에 관계되는 모든 경제활동을 다루는 학문');
insert into majors_t values ('m-19', '호텔관광경영학과', '관광산업과 인간환경의 상호작용을 올바르게 인식시키며 관광현상에 대한 논리적 사고와 건전한 활동을 선도하는 전문인력을 양성하는 학과');
insert into majors_t values ('m-20', '미디어커뮤니케이션학과', '사회에서 발생하는 커뮤니케이션 현상을 포괄적으로 연구하는 학과');
insert into majors_t values ('m-21', '광고홍보학과', '정보화 시대의 미디어 환경 변화에 대응하는 전략가 및 기획자, 실행자로서의 미래형 커뮤니케이션 전문가를 양성하기 위한 학과');
insert into majors_t values ('m-22', '경제금융학과', '경제 및 금융의 기본원리를 익힘으로써 국내외 현실 경제의 여러 이슈들 및 금융현상을 이해하고 각종 경제활동 과정에서 합리적인 판단을 할 수 있는 경제 및 금융 전문가를 양성하는 학과');
insert into majors_t values ('m-23', '언론정보학과', '커뮤니케이션학을 바탕으로 미디어를 공부하는 학과');
insert into majors_t values ('m-24', '법학과', '법에 대한 이해와 지식을 이론적ㆍ실제적으로 습득하도록 함으로써 올바른 법생활을 영위하고 국가와 사회에 기여할 수 있는 건전한 민주시민을 양성하기 위한 학과');
insert into majors_t values ('m-25', '경찰행정학과', '각종 범죄 현상의 원인과 대책을 연구하며, 다양한 범죄이론을 해석하고 적용하는 학과');
insert into majors_t values ('m-26', '종교학과', '일상뿐 아니라 인류 문명에 지대한 영향을 주는 ‘종교’를 깊이 공부하며 종교의 참모습을 밝히는 학과');
insert into majors_t values ('m-27', '의료경영학과', '병원 경영의 전문인력 양성을 목표로 하며 효율적인 병원경영을 지원하는 다기능인력을 양성하는 학과');
insert into majors_t values ('m-28', '군사학과', '대한민국의 군을 이끌어 갈 장교 및 군사전문가를 양성하기 위한 학과');
insert into majors_t values ('m-29', '정치외교학과', '정치현상을 과학적으로 탐구ㆍ이해하여 정치 및 외교분야에서 활동할 수 있는 전문인력을 양성하려는 학과');


-- 테이블 Comment 설정 SQL - majors_t
COMMENT ON TABLE majors_t IS '학과';

-- 컬럼 Comment 설정 SQL - majors_t.major_num
COMMENT ON COLUMN majors_t.major_num IS '학과식별번호';

-- 컬럼 Comment 설정 SQL - majors_t.major
COMMENT ON COLUMN majors_t.major IS '학과명';

-- 컬럼 Comment 설정 SQL - majors_t.m_char
COMMENT ON COLUMN majors_t.m_char IS '학과 설명';


-- jobs_majors_t Table Create SQL
-- 테이블 생성 SQL - jobs_majors_t
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


-- 테이블 Comment 설정 SQL - jobs_majors_t
COMMENT ON TABLE jobs_majors_t IS '직업과 학과 관계';

-- 컬럼 Comment 설정 SQL - jobs_majors_t.jobs_num
COMMENT ON COLUMN jobs_majors_t.jobs_num IS '직업식별번호';

-- 컬럼 Comment 설정 SQL - jobs_majors_t.major_num
COMMENT ON COLUMN jobs_majors_t.major_num IS '학과식별번호';

-- Foreign Key 설정 SQL - jobs_majors_t(major_num) -> majors_t(major_num)
ALTER TABLE jobs_majors_t
    ADD CONSTRAINT FK_jobs_majors_t_major_num_majors_t_major_num FOREIGN KEY (major_num)
        REFERENCES majors_t (major_num) ;

-- Foreign Key 삭제 SQL - jobs_majors_t(major_num)
-- ALTER TABLE jobs_majors_t
-- DROP CONSTRAINT FK_jobs_majors_t_major_num_majors_t_major_num;

-- Foreign Key 설정 SQL - jobs_majors_t(jobs_num) -> jobs_t(jobs_num)
ALTER TABLE jobs_majors_t
    ADD CONSTRAINT FK_jobs_majors_t_jobs_num_jobs_t_jobs_num FOREIGN KEY (jobs_num)
        REFERENCES jobs_t (jobs_num) ;

-- Foreign Key 삭제 SQL - jobs_majors_t(jobs_num)
-- ALTER TABLE jobs_majors_t
-- DROP CONSTRAINT FK_jobs_majors_t_jobs_num_jobs_t_jobs_num;


commit;