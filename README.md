# RA hiring algorithm
### Machine learning algorithm for RA hiring process

## 1. Dataset 
### (RA_dataset.csv)
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
**Below are the survey questions. scale of 1-10 **
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

## 2. Data Preprocessing
The original data contain catergorical values: *race and major* </br>
| race    | count |
|---------|-------|
|         |       |
| White   | 516   |
| Asian   | 395   |
| Black   | 72    |
| Native  | 9     |
| Pacific | 8     |

| race              | count |
|-------------------|-------|
|                   |       |
| Biology           | 200   |
| Engineering       | 163   |
| Physical_Sciences | 162   |
| Math              | 86    |
| Psychology        | 46    |
| Arts              | 40    |
| Communication     | 29    |
| Health            | 23    |
| History           | 5     |

</br>

These are counted seperately and excluded from data normalization steps. </br>
The subset of data is then normalized using Z-score. **z = (x – μ) / (σ / √n) ** </br>
</br>
</br>

## 3. Algorithms
1) **Principal Component Analysis (PCA)** </br>
2) Customized categorical classification vs **Hierarchical clustering** </br>
Option 1) Using **Confusion matrix**, calculate **F-1 score** of each binary value (whether that person was hired or not) </br>
Option 2) **Clustered Linear Regression** (CLR) (or it could be polynomial) </br>
R-squared values will be calculated for option 2 regression model in order to carry out in-sample model evaluation </br>
