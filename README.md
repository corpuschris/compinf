# compinf
# Weather Data Automation Project
### Author: Christiano Ferreira

This project automates the process of downloading weather data for Athenry, timestamping it, and saving it systematically. It also extends automation using GitHub Actions for daily updates.

## Tasks Completed

### Task 1: Create Directory Structure
I created a `data` folder at the root of the repository. Inside `data`, I added two subdirectories:
- `timestamps` for timestamped files.
- `weather` for weather data files.

### Task 2: Timestamps
I navigated to the `data/timestamps` directory and used the `date` command to output the current date and time. I appended the output to a file named `now.txt` ten times using the `>>` operator. I verified the file content using the `more` command.

### Task 3: Formatting Timestamps
I ran the `date` command again, formatting the output as `YYYYmmdd_HHMMSS` (e.g., `20261214_130003`) by referring to the `date` man page. The formatted outputs were appended to a file named `formatted.txt`.

### Task 4: Create Timestamped Files
I created empty files with timestamped names in the `YYYYmmdd_HHMMSS.txt` format using the `touch` command and embedding the `date` command.

### Task 5: Download Today's Weather Data
I navigated to the `data/weather` directory and downloaded the latest weather data for the Athenry weather station using `wget`. The data was saved as `weather.json` from the URL:  
[Met Éireann Athenry Weather Data](https://prodapi.metweb.ie/observations/athenry/today).

### Task 6: Timestamp the Data
I modified the download command to include a timestamp in the filename, saving the data as `YYYYmmdd_HHMMSS.json` using the `-O` option with `wget`.

### Task 7: Write the Script
I wrote a bash script named `weather.sh` in the root directory. This script automates the process of downloading and timestamping weather data into the `data/weather` directory. I made the script executable and tested it.

### Task 8: Notebook
I created a Jupyter Notebook called `weather.ipynb` at the root of the repository. The notebook includes:
- A summary of how Tasks 1 to 7 were completed.
- Descriptions of the commands used in each task and their purpose.

### Task 9: pandas
In the notebook `weather.ipynb`, I used the `pandas` library to load one of the weather data files using the `read_json()` function. I examined and summarized the data. Additionally, I used information from [data.gov.ie](https://data.gov.ie) to write a short explanation of what the dataset contains.

## Project: Automating the Weather Script
To extend the project, I automated the `weather.sh` script to run daily and update the repository automatically using GitHub Actions.

### GitHub Actions Workflow
The automation process is defined in `.github/workflows/weather-data.yml`. Key steps include:
1. Running the script daily at 10 AM using a scheduled cron job.
2. Allowing manual testing using `workflow_dispatch`.
3. Using a Linux (Ubuntu) virtual machine for execution.
4. Cloning the repository.
5. Running the `weather.sh` script.
6. Committing and pushing new weather data back to the repository.

### Testing the Workflow
The workflow was tested successfully by:
1. Pushing the workflow file to the repository.
2. Verifying execution through the **Actions** tab on GitHub.
3. Checking logs to confirm that the script ran, and data was updated.

## Running the Script Manually
To run the script manually, use the following command in your terminal:

```bash
./weather.sh
