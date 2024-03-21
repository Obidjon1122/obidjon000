#!/bin/bash
bash ai_initial_module.sh
mv door_management_fi door_management_files
cd door_management_files
mkdir door_configuration door_logs door_map
mv *.conf door_configuration
mv *.log door_logs
mv *.1 door_map
cd ..
bash ai_door_management_module.sh
