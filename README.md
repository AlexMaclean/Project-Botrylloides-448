# Project Botrylloides CSC 448


## File Structure

### [ecoli/](ecoli/)

### [scripts/](/scripts)

The scripts directory holds some shared healper scripts that many of the experiments use

 - [assemble-with-stats](/scripts/assemble-with-stats) - Assumes it is run in a directory containing an assemble.sh file generated by a call to masurca. Runs that script and times it, then looks throught the logs to generate time breakouts, also runs Quast and records some quality stats. Prints all results to the console in csv row format. If the "header" option is specified prints the csv header.
 - [cleanup-experiment](/scripts/cleanup-experiment)
 - [graphs.R](/scripts/graphs.R)
