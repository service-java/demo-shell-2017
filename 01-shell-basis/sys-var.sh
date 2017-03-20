#!/bin/bash

while [ $# -gt 0 ] # pay attention to the blank
do
  echo $*
  shift # move forward
done