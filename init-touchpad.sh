#!/bin/bash
for cmd in $(cat ~/.synaptics_tp|tr -d ' ') ; do synclient $cmd; done 
