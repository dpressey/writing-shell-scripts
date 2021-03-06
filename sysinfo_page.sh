#! /bin/bash

# sysinfo_page - A script to produce an HTML file

#################################### 
	#Constants
####################################

TITLE="My System Info for $HOSTNAME"
RIGHT_NOW=$(date +"$x %r %Z")
TIME_STAMP="Updated on $RIGHT_NOW by $USER"
	
#################################### 
	#Functions
####################################

system_info(){
	
	echo "<h2>System release info</h2>"
	echo "<p>Function not yet implemented</p>"
}

show_uptime(){
	
	cat <<- EOF
		<h2>System Uptime</h2>
		<p>$(uptime)</p>
	EOF
}

drive_space(){
	
	cat <<- EOF
		<h2>Drive Space</h2>
		<pre>$(df)</pre>
	EOF
}

home_space(){
	
	# Only the superuser can get this information

	echo "<h2>Home Directory Space By $USER</h2>"

	if [ "$(id -u)" = "0" ]; then
		cat <<- EOF
			<pre>$(du -s /Users/dpressey/* | sort -nr)</pre>
		EOF
	else 
		echo "you must be superuser to access this information!"
	fi
}


#################################### 
	#Main
####################################

cat <<- EOF 
	<html>
	<head>
		<title>
		$TITLE
		</title>
	</head>

	<body>
		<h1>$TITLE</h1>
		<p>$TIME_STAMP</p>
		<p>$(system_info)</p>
		<p>$(show_uptime)</p>
		<p>$(drive_space)</p>
		<p>$(home_space)</p>
	</body
	</html>
EOF