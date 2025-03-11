📜 Log Monitoring Script

📝 Description

The Log Monitoring Script scans system logs for specific patterns or error messages and alerts administrators when critical issues are detected.

📌 Features

Monitors system logs (/var/log/syslog, /var/log/auth.log, etc.).

Filters logs based on keywords or patterns (e.g., FAILED, ERROR, CRITICAL).

Sends email alerts when critical log entries are found.

Supports custom log files and alert thresholds.

🔧 Prerequisites

Ensure the following utilities are installed:

bash

grep, tail, awk (for log filtering)

mailx (for email alerts, if enabled)

🚀 Usage

Make the script executable:

chmod +x log_monitor.sh

Run the script manually:

./log_monitor.sh

Automate execution using cron:

crontab -e

Add the following line to check logs every hour:

0 * * * * /path/to/log_monitor.sh

📜 License

This project is licensed under the MIT License.

🤝 Contributing

Contributions are welcome! Feel free to submit a pull request.

📬 Contact

For questions or improvements, create an Issue in the repository or contact me at:
📧 b0900075@gmail.com
