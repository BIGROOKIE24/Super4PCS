#!/bin/sh

# Copyright 2014 Nicolas Mellado
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#   http:#www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
# ---------------------------------------------------------------------------- #
#
# Authors: Nicolas Mellado
#
# An implementation of the Super 4-points Congruent Sets (Super 4PCS)
# algorithm presented in:
#
# Super 4PCS: Fast Global Pointcloud Registration via Smart Indexing
# Nicolas Mellado, Dror Aiger, Niloy J. Mitra
# Symposium on Geometry Processing 2014.
#
#
#
#
# This file is supposed to be ran from super4pcs_install_dir/assets/demo1/

SUPER4PCS=../../bin/Super4PCS

custom_run() {
    echo "\$ $1"
    time -p $1
}


custom_run "${SUPER4PCS} -i bird/frame_0000.ply bird/frame_0002.ply -d 3    -o 0.8  -t 10000 -n 500  -r bird/frame_0002_aligned.ply"
custom_run "${SUPER4PCS} -i buba/buba1.obj  buba/buba2.obj          -d 0.75 -o 0.75 -t 10000 -n 3000 -r buba/buba2_aligned.obj"
custom_run "${SUPER4PCS} -i head/input1.obj head/input2.obj         -d 2    -o 0.6  -t 10000 -n 1500 -r head/input2_aligned.obj"

custom_run "${SUPER4PCS} -i kinect/guy/1.ply kinect/guy/2.ply       -d 0.03 -o 0.4  -t 10000 -n 1000 -c 200 -r kinect/guy/2_aligned.ply"

custom_run "${SUPER4PCS} -i kinect/office/data_02.ply kinect/office/data_03.ply -d 0.03 -o 0.7 -n 1200 -c 100 -r kinect/office/data_03_aligned.ply  -t 10000"
custom_run "${SUPER4PCS} -i kinect/office/data_02.ply kinect/office/data_04.ply -d 0.03 -o 0.7 -n 1200 -c 100 -r kinect/office/data_04_aligned.ply  -t 10000"
custom_run "${SUPER4PCS} -i kinect/office/data_02.ply kinect/office/data_07.ply -d 0.03 -o 0.7 -n 1200 -c 100 -r kinect/office/data_07_aligned.ply  -t 10000"
custom_run "${SUPER4PCS} -i kinect/office/data_02.ply kinect/office/data_08.ply -d 0.03 -o 0.7 -n 1200 -c 100 -r kinect/office/data_08_aligned.ply  -t 10000"
custom_run "${SUPER4PCS} -i kinect/office/data_02.ply kinect/office/data_09.ply -d 0.03 -o 0.7 -n 1200 -c 100 -r kinect/office/data_09_aligned.ply  -t 10000"

custom_run "${SUPER4PCS} -i kinect/stage/1.ply kinect/stage/2.ply -d 0.03 -o 0.5 -n 800 -c 100 -r kinect/stage/2_aligned.ply  -t 10000"
custom_run "${SUPER4PCS} -i kinect/stage/1.ply kinect/stage/3.ply -d 0.03 -o 0.5 -n 800 -c 100 -r kinect/stage/3_aligned.ply  -t 10000"
custom_run "${SUPER4PCS} -i kinect/stage/1.ply kinect/stage/4.ply -d 0.03 -o 0.5 -n 800 -c 100 -r kinect/stage/4_aligned.ply  -t 10000"
custom_run "${SUPER4PCS} -i kinect/stage/1.ply kinect/stage/5.ply -d 0.03 -o 0.4 -n 800 -c 100 -r kinect/stage/5_aligned.ply  -t 10000"

