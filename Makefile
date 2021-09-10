DIANA_FOLDER=/usr/local/diana
FOLDER_NAME=zed_tracking
#name of the service, without the extension .service
SERVICE_NAME=zed_tracker
START_SCRIPT=start-zed_tracker.sh
STOP_SCRIPT=stop-zed_tracker.sh
EXECUTABLE_NAME=ZED_Positional_Tracking

all: compile test ZED_tracker

# Change exampleprogram to the name of the program you would like to execute

clean:
	@echo "\n\033[1;91m█ Cleaning build directory...\033[0m\n" &&\
	rm -rf build/*

compile:
	mkdir -p build &&\
	cd build &&\
	echo "\n\033[1;33m█ Generating makefiles...\033[0m\n" &&\
	cmake .. &&\
	echo "\n\033[1;93m█ Compiling...\033[0m\n" &&\
	cmake --build .

install: install_service

# This install rule is needed only for the services
install_service: compile
	#TODO understand if this commented commands are needed
	#sudo rm -rf $(DIANA_FOLDER)/current/$(FOLDER_NAME)
	#sudo rm -f /etc/systemd/system/$(SERVICE_NAME).service
	#sudo rm $(DIANA_FOLDER)/config/diagnostics/services/$(FOLDER_NAME).toml
	#creating path and copying service stuff inside it
	sudo mkdir -p $(DIANA_FOLDER)/current/$(FOLDER_NAME)/services
	sudo cp services/$(SERVICE_NAME).service /etc/systemd/system/$(SERVICE_NAME).service
	sudo cp services/$(START_SCRIPT) $(DIANA_FOLDER)/current/$(FOLDER_NAME)/services/start.sh
	sudo cp services/$(STOP_SCRIPT) $(DIANA_FOLDER)/current/$(FOLDER_NAME)/services/stop.sh
	#refreshing systemctl to load the service
	sudo systemctl daemon-reload
	#moving executable and giving +x to service scripts
	sudo cp build/$(EXECUTABLE_NAME) $(DIANA_FOLDER)/current/$(FOLDER_NAME)
	sudo chmod +x $(DIANA_FOLDER)/current/$(FOLDER_NAME)/services/start.sh
	sudo chmod +x $(DIANA_FOLDER)/current/$(FOLDER_NAME)/services/stop.sh
	#creating directories and .toml file for Diagnostics
	sudo mkdir -p $(DIANA_FOLDER)/config/diagnostics/services
	sudo touch $(DIANA_FOLDER)/config/diagnostics/services/$(FOLDER_NAME).toml
	sudo chmod 666 $(DIANA_FOLDER)/config/diagnostics/services/$(FOLDER_NAME).toml
	#echo "..." > file to override previous trash
	sudo echo "[[service]]" > $(DIANA_FOLDER)/config/diagnostics/services/$(FOLDER_NAME).toml
	#echo -e to accept escape char and use \t
	sudo echo -e "\tname = \"$(SERVICE_NAME)\"" >> $(DIANA_FOLDER)/config/diagnostics/services/$(FOLDER_NAME).toml
	sudo echo -e "\ttitle = \"$(SERVICE_NAME)\"" >> $(DIANA_FOLDER)/config/diagnostics/services/$(FOLDER_NAME).toml
	sudo echo -e "\ttopic = \"$(SERVICE_NAME)\"" >> $(DIANA_FOLDER)/config/diagnostics/services/$(FOLDER_NAME).toml

purge_service:
	sudo rm -rf /usr/local/diana/current/$(FOLDER_NAME)
	sudo rm -f /etc/systemd/system/$(SERVICE_NAME).service
	sudo rm -f /usr/local/diana/config/diagnostics/services/$(FOLDER_NAME).toml

install: compile install_service

# Create here one entry for every executable of the project
ZED_tracker:
	@echo "\n\033[1;32m█ Running...\033[0m\n\n" &&\
	sudo ./build/ZED_Positional_Tracking

configure:
	@bash utils/configure.sh

test:
	@echo "\n\033[1;93m█ Testing project...\033[0m\n\n" &&\
	cd build &&\
	make test
