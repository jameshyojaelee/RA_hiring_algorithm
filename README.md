# RA hiring algorithm
### Machine learning algorithm for RA hiring process
As mentioned in the previous section, algorithms can help expedite the hiring process and bring a more unbiased view. Before the hiring team goes through each individual’s resume, the algorithms can filter out applicants that do not meet the basic qualifications or failed certain tests that the algorithm implements. <br>
Along with our algorithms, we want to propose that each applicant takes a customized personality/attribute test during the hiring process. Each applicant will be prompted to log in to our survey website using one of their social media accounts (Facebook, Linkedin or Twitter) to take our test and the basic information from their social media profiles will also be gathered for the same purpose. In order to prevent biased decision making or privacy breach by any of the hiring team members, the information gathered during this step will be digitized, normalized and regularized for our algorithm. The sole purpose of this survey is to collect as many data points as possible, not to pry into their personal life. The online application will entail all the independent variables that we will be using to build the statistical model. <br>
The outcome variable of our algorithm is the approval ratings of RA students. At the end of each academic year, students will be asked to evaluate their RAs by stating whether they recommend them or not. The answers will be binary (yes or no) but they will be aggregated and we will use the percentage of  the ‘yes’ value as the outcome variables. Each RA will be assigned a single percentage based score and we will set the threshold based on the number of RAs that each college needs. Once again, this algorithm is for the filtering purpose and it will not make the final decision. <br>

<br>

## 1. Dataset 
### [RA_dataset.csv](https://github.com/jameshyojaelee/RA_hiring_algorithm/raw/main/RA_dataset.csv)
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

<table>
<tr><th> Race </th><th> Major </th></tr>
<tr><td>

| Race    | count |
|---------|-------|
|         |       |
| White   | 516   |
| Asian   | 395   |
| Black   | 72    |
| Native  | 9     |
| Pacific | 8     |

</td><td>

| Major             | count |
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

</td></tr> </table>

</br>

These are counted seperately and excluded from data normalization steps. </br>
The subset of data is then normalized using Z-score. </br>
</br>
</br>

## 3. Algorithms

The survey questions are digitized and normalized on the scale of 1-10. In the pseudo-data we have created, there are 50 indicators that are derived from the survey. Since there are too many variables, we carried out Principal Component Analysis (PCA) in order to reduce the dimensions. Some of the categorical variables above are dropped before calculating the PCA values. PCA is calculated using the covariance matrix, eigenvectors and eigenvalues. </br>
The categorical variables are added on after PCA in order to visualize the distribution of those variables. As seen in the below graphs, none of the categorical variables have a significant impact on the results. Once again, this is derived from pseudo-data so the results may be different from these. We are focusing more on the methodology here. 
</br>
Figure 1) PC1 vs PC2 with the race indicator. There is no clear distinction between each race. 
![alt text](https://github.com/jameshyojaelee/RA_hiring_algorithm/blob/main/PC1%20vs%20PC2%20(Race).JPG) 
</br>
Figure 2) PC2 vs PC3 with the gender indicator. There is no clear distinction between each gender either. 
![alt text](https://github.com/jameshyojaelee/RA_hiring_algorithm/blob/main/PC2%20vs%20PC3%20(gender).JPG)
</br>
Figure 3) PC1 vs PC2 with the major indicator. There is no clear distinction between each major either.  
![alt text](https://github.com/jameshyojaelee/RA_hiring_algorithm/blob/main/PC1%20vs%20PC3%20(Major).JPG)
</br>
Figure 5) The proportion of variance for each principal component. PC1 is the largest component and the rest have a similar level of variance. This indicates that none of the categorical variables have a meaningful impact on the result. 
![alt text](https://github.com/jameshyojaelee/RA_hiring_algorithm/blob/main/Principal%20Component%20Variance%20Proportion.JPG)
</br>
</br>
There are several other ways that we can analyze the data. For example, either k-means clustering or hierarchical clustering can be used to group the data points together. (Due to the continuous variables and other properties, k-means clustering may be more ideal in our case). </br>
After clustering groups together, we can introduce the traditional supervised learning method: Linear Regression. Depending on the data, polynomial regression may be necessary and further value regularization may be required. Furthermore, in real-life there may be more variants that cause biases, in which case either Lasso or Ridge regression can be utilized in order to prevent under- or over-fitting.  </br>
  After building a regression model, R-squared values need to be reviewed in order to carry out in-sample model evaluation. </br>

**Model Training and Testing** </br>
Once our statistical model is established, we need to “train” the data. K-fold cross-validation will be applied (probably around 5-10 fold) in order to reduce bias. For the sake of simplicity, we will assume that linear regression was sufficient to build our model. </br>
