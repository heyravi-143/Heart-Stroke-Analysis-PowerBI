SELECT * FROM ['healthcare-dataset-stroke-data$'];

--DATA CLEANING
--Handling NULL values
SELECT ROUND(AVG(CAST(bmi as FLOAT)),2) Avg_bmi
FROM ['healthcare-dataset-stroke-data$'];

UPDATE ['healthcare-dataset-stroke-data$']
SET bmi ='28.89'
where bmi IS NULL;
--Changing the DATA TYPE FROM sting to float
ALTER TABLE ['healthcare-dataset-stroke-data$']
ALTER column bmi FLOAT;

--Gender wise total

SELECT gender,
       COUNT(*) total_count
FROM ['healthcare-dataset-stroke-data$']
where stroke = 1
GROUP BY gender;


--gender wise strokes
SELECT gender,
       COUNT(*) total_count
FROM ['healthcare-dataset-stroke-data$']
GROUP BY gender;

--AGE wise strokes trend
SELECT age,
       COUNT(*) total_count
FROM ['healthcare-dataset-stroke-data$']
GROUP BY age
ORDER BY total_count DESC;

--worktype wise strokes
SELECT work_type,
       COUNT(*) total_count
FROM ['healthcare-dataset-stroke-data$']
GROUP BY work_type
ORDER BY total_count DESC;


--residence_type wise strokes

SELECT Residence_type,
       COUNT(*) total_count
FROM ['healthcare-dataset-stroke-data$']
GROUP BY Residence_type
ORDER BY total_count DESC;


-- Smoking status wise stokes

SELECT smoking_status,
       COUNT(*) total_count
FROM ['healthcare-dataset-stroke-data$']
GROUP BY smoking_status 
ORDER BY total_count DESC;



--heart disease wise strokes

SELECT heart_disease,
       COUNT(*) total_count
FROM ['healthcare-dataset-stroke-data$']
GROUP BY heart_disease
ORDER BY total_count DESC;


--hypertention wise stokers

SELECT hypertension,
       COUNT(*) total_count
FROM ['healthcare-dataset-stroke-data$']
GROUP BY hypertension
ORDER BY total_count DESC;


SELECT ever_married,
       COUNT(*) total_count
FROM ['healthcare-dataset-stroke-data$']
GROUP BY ever_married
ORDER BY total_count DESC;




SELECT work_type, AVG(age) AS avg_age
FROM ['healthcare-dataset-stroke-data$']
WHERE stroke = 1
GROUP BY work_type
ORDER BY avg_age DESC;








