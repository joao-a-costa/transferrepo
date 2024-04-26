# Repository Transfer Script

This script is designed to facilitate the transfer of a repository from a source location to a destination location, specifically from Bitbucket to GitHub. It automates the process of cloning the repository, adding GitHub as a remote, and pushing the specified branch and tags to GitHub.

## Prerequisites

Before using this script, ensure you have the following:

- Git installed on your system.
- Access to both the source (Bitbucket) and destination (GitHub) repositories.
- Proper authentication and permissions to clone and push to the repositories.

## Usage

1. Replace the placeholders in the script with actual values:
   - `#URLSOURCE#`: URL of the Bitbucket repository.
   - `#REPO#`: Name of the repository in Bitbucket.
   - `#URLDESTINATION#`: URL of the GitHub repository.
   - `#rREPO#`: Name of the repository in GitHub.
   
2. Save the script with a `.cmd` extension.

3. Run the script by double-clicking on it or executing it via the command line.

4. Follow the prompts and monitor the script's output to ensure the transfer completes successfully.

## Script Description

The script performs the following actions:

1. Defines the Bitbucket and GitHub repository URLs.
2. Extracts the repository name from the GitHub URL.
3. Clones the repository if it doesn't exist locally.
4. Navigates into the cloned repository directory.
5. Adds GitHub repository as a remote.
6. Pushes the specified branch and tags to GitHub.
7. Optionally, updates other local clones with the new repository URL.

## Disclaimer

This script is provided as-is without any warranty. Use it at your own risk. Ensure you have backups of your repositories before performing any transfer operations.
