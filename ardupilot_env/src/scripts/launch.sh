#!/bin/bash

if [ "$RUN_SIM" = false ] ; then
    echo "Idling"
    tail -f /dev/null
fi

echo "Starting ArduPilot"
/ardupilot/Tools/autotest/sim_vehicle.py \
   --vehicle Rover \
   -I0 \
   -w --model webots-python \
   --add-param-file=/ardupilot/libraries/SITL/examples/Webots_Python/params/blueboat.parm \
   --console

#    -f json:127.0.0.1 \
#    --custom-location=42.3898,-71.1476,0.0,0.0 \

sim_vehicle.py -v Rover -w --model webots-python --add-param-file=/Users/harunkurtdev/Desktop/Github/ardupilot/libraries/SITL/examples/Webots_Python/params/blueboat.parm