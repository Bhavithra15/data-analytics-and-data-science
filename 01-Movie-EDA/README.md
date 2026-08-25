# House Price Prediction Using Machine Learning

## Project Overview

This project focuses on predicting house prices using machine learning regression algorithms.

The dataset contains information about residential properties, including living area, number of bedrooms and bathrooms, location, condition, waterfront availability, and other property-related features.

The project follows an end-to-end Data Science workflow, starting from data exploration and cleaning to model training, evaluation, visualization, and price prediction.

## Objective

The main objectives of this project are:

- Analyze the factors affecting house prices.
- Perform Exploratory Data Analysis (EDA).
- Clean and preprocess the dataset.
- Engineer useful features.
- Train multiple Machine Learning regression models.
- Evaluate the models using MAE and MSE.
- Compare model performance.
- Predict the price of a new house.

## Dataset

The dataset contains 4,600 house records and includes the following features:

| Feature | Description |
|---|---|
| `date` | Date of the house sale |
| `price` | House sale price (Target) |
| `bedrooms` | Number of bedrooms |
| `bathrooms` | Number of bathrooms |
| `sqft_living` | Living area in square feet |
| `sqft_lot` | Lot area in square feet |
| `floors` | Number of floors |
| `waterfront` | Whether the property has a waterfront view |
| `view` | Quality of the property view |
| `condition` | Overall condition of the house |
| `sqft_above` | Above-ground living area |
| `sqft_basement` | Basement area |
| `yr_built` | Year the house was built |
| `yr_renovated` | Year the house was renovated |
| `street` | Street address |
| `city` | City |
| `statezip` | State and ZIP code |
| `country` | Country |

### Target Variable

`price`

## Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Scikit-learn
- Jupyter Notebook / Google Colab

## Project Workflow

### 1. Data Understanding

- Loaded the dataset.
- Checked dataset shape and structure.
- Examined data types.
- Identified numerical and categorical features.

### 2. Data Cleaning

- Checked missing values.
- Checked duplicate records.
- Identified invalid values.
- Handled problematic observations.

### 3. Exploratory Data Analysis

The following visualizations were created:

- House Price Distribution
- House Price Boxplot
- Correlation Heatmap
- Living Area vs House Price
- House Price Distribution by City

### 4. Feature Engineering

Created additional features such as:

- `house_age`
- `is_renovated`
- Sale date-related features

### 5. Data Preprocessing

- Separated features and target variable.
- Performed train-test split.
- Encoded categorical variables using One-Hot Encoding.
- Prepared the data for Machine Learning models.

### 6. Machine Learning Models

The following regression algorithms were trained:

1. Linear Regression
2. Decision Tree Regressor
3. Random Forest Regressor

### 7. Model Evaluation

The models were evaluated using:

- Mean Absolute Error (MAE)
- Mean Squared Error (MSE)

Lower values indicate better performance.

## Baseline Model Results

| Model | MAE | MSE |
|---|---:|---:|
| Linear Regression | 143,496.99 | 53,097,161,739.29 |
| Decision Tree Regressor | 177,886.19 | 861,273,688,787.29 |
| Random Forest Regressor | 124,636.96 | 126,813,721,772.03 |

### Initial Observation

- Random Forest achieved the lowest MAE.
- Linear Regression achieved the lowest MSE.
- Further model tuning can be used to improve performance and select the final model.

## Model Visualization

The project includes:

- MAE comparison
- MSE comparison
- Actual vs Predicted Price visualization
- Model prediction comparison

## House Price Prediction

After training the models, a sample house was provided to the trained models to demonstrate how the system can predict its estimated house price.

## Key Insights

- Living area (`sqft_living`) has a strong positive relationship with house price.
- Bathrooms and bedrooms are also related to property size and price.
- House prices contain significant outliers.
- Location-related features such as city and ZIP code can influence house prices.
- Different regression models perform differently depending on the evaluation metric.

## Future Improvements

- Hyperparameter tuning
- Feature importance analysis
- Cross-validation
- Try additional regression algorithms
- Improve handling of extreme price outliers
- Deploy the final model using Streamlit

## Author

Bhavithra15

Data Science and Data Analytics Portfolio
