# Website Availability Checker

This Bash script checks the availability of websites by sending HTTP GET requests using `curl` and logs the results in a file. It is designed to read the list of URLs from an external file, allowing flexibility in managing the websites you wish to monitor.

## Requirements

- Bash shell (Unix/Linux/MacOS)
- `curl` installed on your system

## Setup Instructions

1. **Clone the repository or download the script:**
   You can start by cloning this repository to your local machine or simply downloading the script file. If you are creating the script file manually, ensure it has the correct execution permissions.

2. **Make the script executable:**
   Before running the script, you need to make sure it is executable. You can grant execution permissions using the following command:
   ```bash
   chmod +x check_sites.sh
   ```

3. **Prepare your URL list**
    Create a text file named sites.txt or any name of your choice, and list each URL you want to check on a new line. Here is an example format:

    ```bash
    https://google.com
    https://facebook.com
    https://twitter.com
    ```

## Usage

To run the script, use the following command:

```bash
./check_sites.sh [path_to_your_sites_file]
```

## Output

The script will check each website and print the availability status on the terminal. It will also log these results in a file named website_availability.log. Each entry in the log file will indicate whether a website is "UP" or "DOWN".

## Example

Running the script with the default sites.txt file:

```bash
./check_sites.sh
```

Running the script with a custom list of sites:

```bash
./check_sites.sh custom_sites.txt
```

After execution, you will receive a confirmation message indicating that the results have been logged in website_availability.log.