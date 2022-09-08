            System.out.println("6. 입력 받은 부서와 일치하는 모든 사원 정보 조회");
            // selectDeptEmp()
            
            System.out.println("7. 입력 받은 급여 이상을 받는 모든 사원 정보 조회");
            // selectSalaryEmp()
            
            System.out.println("8. 부서별 급여 합 전체 조회");
            // selectDeptTotalSalary()
            // DB 조회 결과를 HashMap<String, Integer>에 옮겨 담아서 반환
            // 부서코드, 급여 합 조회
            
            System.out.println("10. 직급별 급여 평균 조회");
            // selectJobAvgSalary()
            // DB 조회 결과를 HashMap<String, Double>에 옮겨 담아서 반환 
            // 직급명, 급여 평균 조회
            
SELECT SUM(SALARY) 
FROM EMPLOYEE
LEFT JOIN DEPARTMENT ON(DEPT_ID = DEPT_CODE)
JOIN JOB USING(JOB_CODE)
GROUP BY DEPT_CODE;
            