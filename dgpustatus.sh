#!/bin/bash

#tail -n 1 -z /proc/acpi/bbswitch | cut -d ' ' -f 2
#cut -d ' ' -f 2 /proc/acpi/bbswitch

red="#FF0000"
yellow="#FFF600"

status="$(cut -d ' ' -f 2 /proc/acpi/bbswitch)"

case "$status" in
	ON)
		echo "ON"
#		echo "$red"
		exit 33
		;;
	OFF)
		echo "OFF"
		;;
	*)
		echo "??"
		echo "$yellow"
		exit 33
		;;
esac

