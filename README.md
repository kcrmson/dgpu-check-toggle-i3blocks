# dgpu-check-toggle-i3blocks
i3blocks-gaps block with necessary scripts for displaying whether the nVidia dGPU is on, its temperature if on and a script that can be used standalone to toggle the nVidia card on and off.

The only odd behavior I've observed is that during i3wm's startup the dGPU will get toggled on and off 2-3 times as the scripts make their first run though.  This is normal behavior.

These scripts assume you have nvidia-settings installed as it is required for the temperature detection.

I have not attempted to modify any of this for nouveau as the bumblebee intel/nouveau setup is unsupported in Arch Linux as well as me not using the nouveau drivers.
