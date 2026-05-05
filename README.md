# Server Stats Analyzer
The Moto is to Monitor - Total CPU usage,  Total memory usage (Free vs Used including percentage),  Total disk usage (Free vs Used including percentage),  Top 5 processes by CPU usage,  Top 5 processes by memory usage

Server Stats Analyzer
A lightweight Bash script designed to provide instant visibility into critical Linux server performance metrics. This project demonstrates foundational skills in Linux System Administration, Shell Scripting, and Performance Monitoring.🚀 OverviewAs a former Systems Administrator transitioning into DevOps, I developed this script to automate the manual task of checking server health. It provides a concise summary of resource utilization without the need for heavy monitoring agents.📊 Monitored MetricsThe script extracts and calculates the following data points:CPU Utilization: Real-time percentage of total CPU usage.Memory Analysis: Used vs. Free memory, including a calculated usage percentage.Storage Health: Total disk usage across the root filesystem.Process Monitoring: Identifies the top 5 resource-heavy processes by both CPU and Memory consumption.🛠️ RequirementsOS: Any Linux distribution (Ubuntu, CentOS, Debian, etc.)Tools: Standard binaries (awk, grep, ps, free, df)—no third-party dependencies required.💻 UsageClone the repository:bashgit clone https://github.com
cd server-stats-script
Use code with caution.Make the script executable:bashchmod +x server-stats.sh
Use code with caution.Run the script:bash./server-stats.sh
Use code with caution.🏗️ DevOps ApproachIdempotency & Portability: The script uses POSIX-compliant commands to ensure it runs across different environments without modification.Observability: Built as a precursor to automated alerting systems.Infrastructure as Code (Future): This script is designed to be easily distributed across fleets using Ansible or Terraform metadata scripts.📝 Example Outputtext--- Server Stats: Tue May  5 22:26:00 UTC 2026 ---
Total CPU Usage: 12.5%
Total Memory Usage:
  Used: 2048MB, Free: 5952MB (25.60%)
Total Disk Usage:
  Used: 15G, Free: 35G (30%)
...
Use code with caution.Author: [Mohamed Aakhil]Connect with me: [https://linkedin.com/in/mohamed-aakhil] | [https://github.com/mohamedaakhil]
