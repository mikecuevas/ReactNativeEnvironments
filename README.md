# React Native Environment Setup Script

This script automates the setup of a React Native development environment on Ubuntu. It installs Node.js, Yarn, OpenJDK, Android Studio, and sets up necessary environment variables.

## Prerequisites

- Ubuntu operating system (tested on Ubuntu 23.04)
- Internet connection

## Usage

1. **Download the Script:** Download the `config_react_native.sh` script from this repository.

2. **Make it Executable:** Open a terminal and navigate to the directory containing the script. Run the following command to make the script executable:
<pre>
chmod +x config_react_native.sh
</pre>


3. **Run the Script:** Execute the script using the following command:
<pre>
./config_react_native.sh
</pre>

4. **Follow Prompts:** The script will guide you through the installation process, including automatic confirmation for package installations.

5. **Launch Android Studio:** After the script completes, Android Studio will be launched automatically. You can start building React Native projects using the installed environment.

## Notes

- The script installs Node.js, Yarn, OpenJDK 11, and Android Studio. It also configures environment variables required for React Native development.

- Android Studio will be installed in the `~/android-studio` directory.

- Environment variables are added to the `.bashrc` file. You might need to restart your terminal or run `source ~/.bashrc` for changes to take effect.

- The script is provided as-is and might need adjustments based on your system's configuration.

## Disclaimer

Please use this script responsibly and make sure you have backups of your data before running it. The authors are not responsible for any issues or data loss caused by running the script.
