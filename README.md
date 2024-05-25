# Covid-19-Capstone: Predicting COVID-19 ICU Admissions
B. Brown

In this assignment, I was tasked to perform a full lifecycle Machine Learning Model Development according to the objective of the dataset.

"Brazil has been one of the countries most affected by the COVID-19 pandemic, with more than 16 million confirmed cases and 454 429 confirmed deaths as of May 26, 2021. The country was unprepared for the pandemic, and was unable to respond adequately due to the strain on hospital capacity.

A data science team at a top-tier hospital in Brazil has released a dataset on the Kaggle platform which seeks interesting solutions and findings from the public. The team is using ML to help reduce the strain on hospital's ICU beds, where the objective is to develop a ML model to predict if a patient of a confirmed COVID-19 case will require admission to the ICU.

The dataset collected for the research is publicly available on the data science platform Kaggle. A full description of the dataset can be found on the platform:  https://www.kaggle.com/datasets/S%C3%ADrio-Libanes/covid19

Tasks & Deliverables
* Conduct EDA (Exploratory Data Analysis) to gain an understanding of the Data
* Preprocess the Data to prepare it for the ML Model
* Develop a few candidate ML models and pick the most promising one. Evaluate it based on a variety of metrics as well as analysing it’s performance (does it overtrain, can we improve it by changing our data preprocessing etc.)"

## Getting Started with EDA:
I coverted the downloaded dataset to csv, and uploaded to SQL Server to create a database.  Using SQL queries, I created multiple tables to help me understand the relationships in and among the data points.

Some of the queries I used are below:
* https://github.com/bigb-11/Covid-19-Capstone/blob/main/Select%201st%20admission%20window.sql - This one selects the first window where a patient was admitted to ICU
* https://github.com/bigb-11/Covid-19-Capstone/blob/main/No%20bloodwork%20but%20admitted.sql - This one shows patients who were admitted with no bloodwork taken during that window; I did the same for Vitals; but then I created tables of No Bloodwork and No Vitals, and added an ICU column so that I could filter between non-/admitted patients.
* https://github.com/bigb-11/Covid-19-Capstone/blob/main/Create%20Disease_Present%20Tables.sql - I created tables to show the distributions of the diseases for each patient.  I also queried for patients with multiple diseases, but ended up not using the table (https://github.com/bigb-11/Covid-19-Capstone/blob/main/Select%20Disease1%20plus%20Another.sql).

In PowerBI, the first four pages are dedicated to my EDA, where the first four pages are Patient Demographics, First ICU Admission Window, a Patient Profile, and Distribution of those null values (bloodwork and vital signs taken).

## Model Development in VS Code
The 5 models used:
* Logistic Regression - A simple linear model for binary classification that estimates the probability that a given input belongs to a certain class.
* Decision Tree Classifier - Non-linear model that splits the data based on feature values, easy to interpret but can overfit.
* Random Forest - An ensemble of decision trees, reducing overfitting by averaging multiple trees.
* Support Vector Machines - Finds optimal hyperplane that maximizes the margin between classes.
* Naive Bayes - Based on Bayes' Theorem with the assumption of feature independence.

The most promising of these was Logistic Regression with a consistent accuracy score of 97%.

## ML Visuals
The cleaned data was exported to a .csv file and loaded into PowerBI.  From that data, I created the last 2 visuals in the PBIX file (pages: ML Visuals - 1, and ML Visuals - 2).
