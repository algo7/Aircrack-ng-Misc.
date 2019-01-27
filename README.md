# Aircrack-ng-Misc.
## Wrapper scripts for Aircrack-ng suit to simplify its operation. All scripts should be run as root.

### monitor_mode.sh
List all the interfaces available on the device. Enter the desire interface. A file called `airmon.sh` will be generated. Run it afterward to enable the monitor mode.
### packet_dump.sh (with --manufacturer flag on | no capturing).
Enter the interface with monitor mode enabled. A file called `pdump.sh` will be generated. Run it afterward to view the wireless networks in the proximity.
### packet_dump2.sh (with --manufacturer and -c flag on | no capturing).
Enter the interface with monitor mode enabled along with the targeted channel. A file called `pdumpsec.sh` will be generated. Run it afterward to view the wireless networks on a specific channel within the proximity.
### replayscript.sh
Enter the BSSID of both the AP and the client (obtained through `pdump.sh` or `pdumpsec.sh`) along with the monitoring interface. A file called `rscript.sh` will be generated. Run it afterward to start the deauth attack.
