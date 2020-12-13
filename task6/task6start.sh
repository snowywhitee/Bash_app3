#!/bin/bash

sh task6handler.sh&a=$!

sh task6generator.sh $a
