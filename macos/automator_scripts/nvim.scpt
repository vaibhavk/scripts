# ref https://gist.github.com/charlietran/43639b0f4e0a01c7c20df8f1929b76f2
on run {input, parameters}
	
	set nvimCommand to "/usr/local/bin/nvim -p "
	
	set filepaths to ""
	if input is not {} then
		repeat with currentFile in input
			set filepaths to filepaths & quoted form of POSIX path of currentFile & " "
		end repeat
	end if
	
	if application "iTerm" is running then
		tell application "iTerm"
			create window with default profile command nvimCommand & filepaths
		end tell
	else
		tell application "iTerm"
			tell current session of current window
				write text nvimCommand & filepaths
			end tell
		end tell
	end if
	
end run
