# compinf
# Author: Christiano Ferreira
# Weather Data Script

> **Note**: This README is still a work in progress. Please check back later for updates.

This project automates downloading weather data for Athenry and saving it with a timestamp. Below are the tasks I completed:

## Tasks Completed

### Task 1: Create Folders
I created a `data` folder with two subfolders:
- `timestamps` for timestamped files.
- `weather` for weather data.

### Task 2: Save Current Time
I used the `date` command to get the current date and time, saving it in a file called `now.txt` (repeated 10 times).

### Task 3: Format Time
I used the `date` command to format the date as `YYYYmmdd_HHMMSS` (e.g., `20241120_130003`) and saved it in `formatted.txt`.

### Task 4: Create Timestamped Files
I created empty files with names based on the timestamp (e.g., `20241120_130003.txt`).

### Task 5: Download Weather Data
I downloaded weather data for Athenry using `wget` and saved it as `weather.json`.

### Task 6: Timestamp Weather File
I modified the download command to save the weather data with a timestamped filename (e.g., `20241120_171842.json`).

### Task 7: Create the Script
I wrote a script called `weather.sh` to automate downloading and saving the weather data with a timestamp. I made it executable and tested it.

### Task 8: Create a Notebook
I created a Jupyter Notebook called `weather.ipynb` at the root of the repository. In this notebook, I summarized how I completed Tasks 1 to 7. It includes:
- Descriptions of the commands I used.
- An explanation of their role in completing each task.

## Running the Script
To run the script, use the following command:

```bash
./weather.sh

### Task 9: Analyze Weather Data with pandas
In the `weather.ipynb` notebook, I used the `pandas` library to analyze one of the weather data files downloaded with the `weather.sh` script. I followed these steps:
- Loaded the weather data using the `read_json()` function.
- Examined the structure of the data, including column names, data types, and missing values.
- Generated summary statistics for numeric columns like temperature and wind speed.
- Provided an explanation of the dataset's contents, including details about each column.

The notebook now contains a clear analysis of the weather data, showcasing how pandas can be used to work with JSON files and extract useful insights.
