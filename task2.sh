#!/bin/bash

#run task1.sh in 2 min.
at now +2 minutes -f ./task1.sh

#watch ~/report
tail -n 0 -f ~/report

