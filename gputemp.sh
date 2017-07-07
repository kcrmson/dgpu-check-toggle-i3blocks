#!/bin/bash



status="$(cut -d ' ' -f 2 /proc/acpi/bbswitch)"

gputemp="optirun nvidia-smi --format=csv,noheader --query-gpu=temperature.gpu"

case "$status" in
	ON)
		echo "$($gputemp) C"
		exit 33
		;;
	OFF)
		echo "OFF"
		exit 0
		;;
	failed)
		echo "OFF"
		exit 33
		;;
	*)
		echo "??"
		exit 33
		;;
esac
