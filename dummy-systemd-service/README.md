# Dummy Systemd Service
A bash project that runs a dummy background app with systemd and keeps it alive with automatic restart.

## Getting Started
1. **Clone the repository**
	```
	git clone https://github.com/jstin9/devops-lab.git
	cd devops-lab/dummy-systemd-service/
	```

2. **Make the script executable**
	```
	chmod +x dummy.sh
	```

3. **Copy files to system locations**
	```
	sudo cp dummy.sh /usr/local/bin/dummy.sh
	sudo chmod +x /usr/local/bin/dummy.sh
	sudo cp dummy.service /etc/systemd/system/dummy.service
	sudo systemctl daemon-reload
	```

4. **Manage the service**
	```
	sudo systemctl start dummy
	sudo systemctl stop dummy
	sudo systemctl enable dummy
	sudo systemctl disable dummy
	sudo systemctl status dummy
	```

5. **Check logs**
	```
	sudo journalctl -u dummy -f
	```

## Files
- `dummy.sh`: runs forever and prints a message every 10 seconds to simulate a background app.
- `dummy.service`: starts the script on boot and restarts it automatically if it fails.

This project is part of [roadmap.sh](https://roadmap.sh/projects/dummy-systemd-service) DevOps projects.
