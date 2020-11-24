# RA_hiring_algorithm
### machine learning algorithm for RA hiring process

## 1. Dataset 
**column variables** </br>
ID: unique ID associated with an RA </br>
year: school year  </br>
age: age </br>
gender: 1-female, 2-male, 3-non-binary </br> 
race: 5 options including "American Indian or Alaska Native", "Asian", "Black or African American", Native Hawaiian or Other pacific islander, "white"</br>
ethnicity: "Hispanic or Lation or Spaniash Origion" (1) and "Not Hispanic or Latino or Spanish origin" (0) </br>
GPA: GPA </br>
major: major </br>
</br>
</br>
### Below are the survey questions. scale of 1-10s </br>
up to Q20, scores are random numbers (weighted accordingly) </br>
from Q21 to Q50, scores are randomly calculated based on the average of the scores of the first 20 questions </br>
</br>
Q1: Ability to host an event (1-10) </br>
Q2: Informative (1-10) </br>
Q3: Friendly (1-10) </br>
Q4: Problem-solving ability (1-10) </br>
Q5: Ability to handle conflict (1-10) </br>
Q6: Respectful (1-10) </br>
Q7: Open-minded (1-10) </br>
Q8: Communication (1-10) </br>
Q9: trustworthiness (1-10) </br>
Q10: Ability to control "group disorders" e.g. noises, parties</br>
Q11 - Q50 : other questions </br>
</br>
</br>

## 2. Algorithms
1) Principal Component Analysis (PCA) </br>
2) Logistic Regression: binary prediction of whether to hire an applicant or not </br>
