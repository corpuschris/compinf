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

## Running the Script
To run the script, use the following command:

```bash
./weather.sh
