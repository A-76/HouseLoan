-- 1) View the first 5 entries of the table
-- SELECT * FROM loan_sanction_train LIMIT 5;

-- 2) How many loans were approved?
-- SELECT COUNT(*) FROM loan_sanction_train WHERE Loan_Status = "Y";

-- 3) What is the total home income?
-- SELECT ApplicantIncome, CoapplicantIncome, ApplicantIncome + CoapplicantIncome AS totalIncome FROM loan_sanction_train; 

-- 4) What is the average Total Income?
WITH HomeIncome as (
SELECT ApplicantIncome, CoapplicantIncome, ApplicantIncome + CoapplicantIncome AS totalIncome FROM loan_sanction_train
)

SELECT AVG(totalIncome) FROM HomeIncome;

-- 5) What is the average loan amount?
-- SELECT AVG(LoanAmount) FROM loan_sanction_train ;

-- 6) What is the average loan amount for each property area?
-- SELECT Property_Area, AVG(LoanAmount) FROM loan_sanction_train GROUP BY Property_Area;

-- 7) How many loans were approved for each property area?
SELECT Property_Area,COUNT(*) FROM loan_sanction_train WHERE Loan_Status="Y" GROUP BY Property_Area;

-- 8) How many of the apporved loans were people educated?
-- SELECT Education,COUNT(*) FROM loan_sanction_train GROUP BY Education;
-- SELECT Education,COUNT(*) FROM loan_sanction_train WHERE Loan_Status="Y" GROUP BY Education;

-- 9)How many of the loan applications that were approved belong to self-employed people?
SELECT Self_Employed,COUNT(*) FROM loan_sanction_train GROUP BY Self_Employed;
SELECT Self_Employed,COUNT(*) FROM loan_sanction_train WHERE Loan_Status="Y" GROUP BY Self_Employed;

-- 10) Find the number of male and female applicants and see the percentage of loan approvals for each gender.
-- Higher proportion of female applicants were accepted.
SELECT GENDER, COUNT(Gender) FROM loan_sanction_train WHERE loan_status = "Y" GROUP BY Gender; 





