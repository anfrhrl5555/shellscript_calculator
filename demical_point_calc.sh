#!/bin/bash

read -p "frist data: " first

read -p "second data: " second


echo $first $second | awk '{print $1/$2}'
