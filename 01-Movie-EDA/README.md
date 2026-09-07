#  Movie Dataset Exploratory Data Analysis

##  Overview

This project performs Exploratory Data Analysis (EDA) on a movie dataset to uncover patterns and trends in movie popularity, ratings, vote counts, genres, languages, and release dates.

The analysis includes data cleaning, statistical analysis, outlier detection, visualization, and correlation analysis to generate meaningful insights from the dataset.

##  Objectives

- Understand the structure and characteristics of the dataset
- Clean and preprocess the data
- Handle missing and duplicate values
- Analyze numerical and categorical variables
- Identify and evaluate outliers
- Perform statistical analysis
- Explore relationships between movie attributes
- Create meaningful visualizations
- Generate data-driven insights

##  Dataset

The dataset contains information about movies, including:

| Column | Description |
|---|---|
| `Release_Date` | Movie release date |
| `Title` | Movie title |
| `Overview` | Movie overview/description |
| `Popularity` | Movie popularity score |
| `Vote_Count` | Number of votes received |
| `Vote_Average` | Average movie rating |
| `Original_Language` | Original language of the movie |
| `Genre` | Movie genre |
| `Poster_Url` | Movie poster URL |

##  Data Cleaning & Preprocessing

The following steps were performed:

- Inspected dataset structure and data types
- Checked and handled missing values
- Identified and removed duplicate records
- Converted `Release_Date` to datetime format
- Converted numerical columns to appropriate data types
- Detected outliers using the IQR method
- Retained genuine outliers representing valid movie observations

##  Exploratory Data Analysis

### Statistical Analysis

Analyzed:

- Mean
- Median
- Mode
- Variance
- Standard Deviation
- Range
- Skewness
- Kurtosis

### Univariate Analysis

Explored individual variables using:

- Histograms
- Boxplots
- Bar charts
- Line charts

### Bivariate Analysis

Investigated relationships between:

- Vote Count vs Popularity
- Vote Average vs Popularity
- Genre vs Vote Average

##  Key Visualizations

- Top 10 Most Popular Movies
- Top 10 Movie Genres
- Movies Released Over Time
- Rating Distribution
- Vote Count vs Popularity
- Correlation Heatmap

##  Key Insights

- Movie popularity is highly right-skewed, with a small number of movies having exceptionally high popularity.
- Vote count is strongly right-skewed, indicating that a small number of movies receive significantly more votes.
- The average movie rating is approximately **6.44**.
- Popularity and vote count show a **weak positive correlation**.
- Popularity and vote average have an **almost negligible linear relationship**.
- Vote count and vote average show a **weak positive correlation**.
- Movie genres differ in their average ratings and frequency.

##  Tools & Technologies

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook
- Google Colab

## Project Structure

```text
01-Movie-EDA/
│
├── movie_dataset_eda.ipynb
├── README.md
└── dataset/
