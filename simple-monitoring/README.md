# Simple Monitoring
A bash project that automates a basic Netdata monitoring setup, dashboard test, and cleanup flow.

## Getting Started
1. **Clone the repository**
	```
	git clone https://github.com/jstin9/devops-lab.git
	cd devops-lab/simple-monitoring/
	```

2. **Make the scripts executable**
	```
	chmod +x setup.sh test_dashboard.sh cleanup.sh
	```

3. **Run the setup script with sudo**
	```
	sudo ./setup.sh
	```

4. **Test the dashboard**
	```
	./test_dashboard.sh
	```

5. **Run cleanup with sudo**
	```
	sudo ./cleanup.sh
	```

## Scripts
- `setup.sh`: installs Netdata on a Linux system and prepares the monitoring dashboard.
- `test_dashboard.sh`: generates system load so you can verify the dashboard and charts.
- `cleanup.sh`: removes Netdata and cleans up the system.

This project is part of [roadmap.sh](https://roadmap.sh/projects/simple-monitoring-dashboard) DevOps projects.