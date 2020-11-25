# RA hiring algorithm
### Machine learning algorithm for RA hiring process

## 1. Dataset 
| variable      | description                                                                                                                                        |
|---------------|----------------------------------------------------------------------------------------------------------------------------------------------------|
| **ID**        | unique ID associated with an RA                                                                                                                    |
| **year**      | school year                                                                                                                                        |
| **age**       | age                                                                                                                                                |
| **gender**    | 1-female, 2-male, 3-non-binary                                                                                                                     |
| **race**      | 5 options including "American Indian or Alaska Native", "Asian", "Black or African American", "Native Hawaiian or Other pacific islander", "white" |
| **ethnicity** | "Hispanic or Lation or Spaniash Origion" (1) and "Not Hispanic or Latino or Spanish origin" (0)                                                    |
| **GPA**       | GPA                                                                                                                                                |
| **major**     | major                                                                                                                                              |
</br>
**Below are the survey questions. scale of 1-10**
</br>
up to Q20, scores are random numbers (weighted accordingly) </br>
from Q21 to Q50, scores are calculated based on the average of the scores of the first 20 questions </br>

**Q1**  : Ability to host an event (1-10) </br>

**Q2**  : Informative (1-10) </br>

**Q3**  : Friendly (1-10) </br>

**Q4**  : Problem-solving ability (1-10) </br>

**Q5**  : Ability to handle conflict (1-10) </br>

**Q6** : Respectful (1-10) </br>

**Q7** : Open-minded (1-10) </br>

**Q8** : Communication (1-10) </br>

**Q9** : trustworthiness (1-10) </br>

**Q10** : Ability to control "group disorders" e.g. noises, parties</br>

**Q11 - Q50** : other questions </br>

</br>
</br>

## 2. Algorithms
1) Principal Component Analysis (PCA) </br>
2) Logistic Regression: binary prediction of whether to hire an applicant or not </br>
