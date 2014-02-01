Custom modifications to avahi-daemon\main.c

1.) Added new flag for multiple pid files to allow for multiple instances running on different conf files
	-i --instance=NAME     Give instance name to PID file\n"
2.) Modified PID file name from /var/run/avahi-daemon to better match libdaemon implementation, plus custom instance name
3.) BUGFIX - DAEMON_KILL section was not setting wrote_pid_file, file deletion did not occur, added stat check for pid file to set wrote_pid_file
