# Movie Dataset Exploratory Data Analysis

## Overview

This project performs Exploratory Data Analysis (EDA) on a movie dataset to identify patterns and insights related to movie popularity, ratings, vote counts, genres, languages, and release trends.

## Objectives

- Understand the structure and characteristics of the dataset
- Handle missing and duplicate values
- Analyze numerical and categorical variables
- Identify and evaluate outliers
- Perform statistical analysis
- Explore relationships between movie attributes
- Create meaningful visualizations
- Generate insights from the data

## Dataset

The dataset contains the following columns:

- Release_Date
- Title
- Overview
- Popularity
- Vote_Count
- Vote_Average
- Original_Language
- Genre
- Poster_Url

## Data Cleaning

The following preprocessing steps were performed:

- Checked the dataset structure and data types
- Identified and handled missing values
- Checked and removed duplicate records
- Converted `Release_Date` to datetime format
- Converted numerical columns to appropriate data types
- Checked for outliers using the IQR method
- Retained genuine outliers that represented valid movie observations

## Exploratory Data Analysis

### Statistical Analysis

The following statistical measures were analyzed:

- Mean
- Median
- Mode
- Variance
- Standard Deviation
- Range
- Skewness
- Kurtosis

### Univariate Analysis

Individual variables were analyzed using:

- Histograms
- Boxplots
- Bar charts
- Line charts

### Bivariate Analysis

Relationships between variables were analyzed using:

- Vote Count vs Popularity
- Vote Average vs Popularity
- Genre vs Vote Average

## Key Visualizations

1. Top 10 Most Popular Movies
2. Top 10 Movie Genres
3. Movies Released Over Time
4. Rating Distribution
5. Vote Count vs Popularity
6. Correlation Heatmap

## Key Insights

- Movie popularity is highly right-skewed, with a small number of movies having exceptionally high popularity.
- Vote count is also strongly right-skewed, indicating that a small number of movies receive significantly more votes.
- The average movie rating is approximately 6.44.
- Popularity and vote count have a weak positive correlation.
- Popularity and vote average have an almost negligible linear relationship.
- Vote count and vote average show a weak positive correlation.
- Different genres show variations in their average ratings and frequency.

## Tools and Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook / Google Colab

## Project Structure

```text
01_movie_eda/
│
├── movie_dataset_eda.ipynb
├── README.md
└── dataset/
