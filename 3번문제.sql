-- 1.
SELECT STUDENT_NAME "학생 이름", STUDENT_ADDRESS 주소지
FROM TB_STUDENT
ORDER BY 1;

-- 2.
SELECT STUDENT_NAME, STUDENT_SSN
FROM TB_STUDENT
WHERE ABSENCE_YN = 'Y'
ORDER BY STUDENT_SSN DESC;

-- 3. 
SELECT STUDENT_NAME 학생이름, STUDENT_NO 학번, STUDENT_ADDRESS "거주지 주소"
FROM TB_STUDENT
WHERE STUDENT_NO LIKE '9%' 
AND (STUDENT_ADDRESS LIKE '경기%' OR STUDENT_ADDRESS LIKE '강원%')
ORDER BY 1;

-- 4.
SELECT PROFESSOR_NAME, PROFESSOR_SSN
FROM TB_PROFESSOR
JOIN TB_DEPARTMENT USING (DEPARTMENT_NO)
WHERE DEPARTMENT_NO = '005'
ORDER BY 2;

-- 5.(?)
SELECT STUDENT_NO, POINT
FROM TB_GRADE
WHERE TERM_NO (BETWEEN '2004-07-01' AND '2004-12-31') 
AND CLASS_NO = 'C3118100'

-- 6.
SELECT STUDENT_NO, STUDENT_NAME, DEPARTMENT_NAME
FROM TB_STUDENT
JOIN TB_DEPARTMENT USING(DEPARTMENT_NO)
ORDER BY 2;

-- 7.
SELECT CLASS_NAME, DEPARTMENT_NAME
FROM TB_CLASS
JOIN TB_DEPARTMENT ON(TB_CLASS.DEPARTMENT_NO = TB_DEPARTMENT.DEPARTMENT_NO);

-- 8.
SELECT CLASS_NAME, PROFESSOR_NAME
FROM TB_CLASS
JOIN TB_CLASS_PROFESSOR USING(CLASS_NO)
JOIN TB_PROFESSOR USING (PROFESSOR_NO);

-- 9.
SELECT CLASS_NAME, PROFESSOR_NAME
FROM TB_CLASS
JOIN TB_CLASS_PROFESSOR USING(CLASS_NO)
JOIN TB_PROFESSOR USING (PROFESSOR_NO)
JOIN TB_DEPARTMENT ON(TB_CLASS.DEPARTMENT_NO = TB_DEPARTMENT.DEPARTMENT_NO)
WHERE CATEGORY = '인문사회';

-- 10.
SELECT STUDENT_NO  학번, STUDENT_NAME "학생 이름", SUM(POINT)
FROM TB_STUDENT
JOIN TB_DEPARTMENT USING(DEPARTMENT_NO)
JOIN TB_GRADE USING(STUDENT_NO)
WHERE DEPARTMENT_NAME = '음악학과'

-- 11. 
SELECT DEPARTMENT_NAME, STUDENT_NAME, PROFESSOR_NAME
FROM TB_STUDENT
JOIN TB_DEPARTMENT USING(DEPARTMENT_NO)
JOIN TB_PROFESSOR ON(COACH_PROFESSOR_NO = PROFESSOR_NO)
WHERE STUDENT_NO = 'A313047';

-- 12.
SELECT STUDENT_NAME, TERM_NO "TERM_NAME"
FROM TB_STUDENT
JOIN TB_GRADE USING(STUDENT_NO)
JOIN TB_CLASS USING(CLASS_NO)
WHERE TERM_NO LIKE '2007%' AND CLASS_NAME = '인간관계론'

-- 13.(?)
SELECT CLASS_NAME, DEPARTMENT_NAME
FROM TB_CLASS
JOIN 

-- 14.
SELECT STUDENT_NAME 학생이름, NVL(PROFESSOR_NAME, '지도교수 미지정')지도교수
FROM TB_STUDENT
JOIN TB_DEPARTMENT USING(DEPARTMENT_NO)
LEFT JOIN TB_PROFESSOR ON(COACH_PROFESSOR_NO = PROFESSOR_NO)
WHERE DEPARTMENT_NAME = '서반아어학과';

-- 15.
SELECT STUDENT_NO, STUDENT_NAME, DEPARTMENT_NAME, POINT

-- 16.
SELECT CLASS_NO, CLASS_NAME, AVG(POINT)
FROM TB_CLASS
JOIN TB_GRADE USING(CLASS_NO)
WHERE DEPARTMENT_NO = '034';