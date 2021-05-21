#!/usr/bin/env bash

## install fonts
if [[ `uname` == 'Darwin' ]]; then
	# MacOS
	echo "We are in MacOS."
	pathUsrFonts="$HOME/Library/Fonts"
else
	# Linux
	echo "We are in Linux."
	pathUsrFonts="$HOME/.fonts"
fi

pathfonts='./fonts'
if [ ! -d $pathUsrFonts ]; then
	echo "default user fonts dir doesn't exist & create it..."
	mkdir $pathUsrFonts
	cp -r "$pathfonts"/* $pathUsrFonts
else
	echo "default user fonts dir exist & check and install fonts..."
	fontsToInstall=$(ls $pathfonts | xargs basename -a)
	fontsInstalled=$(ls $pathUsrFonts | xargs basename -a )
	for file in $fontsToInstall
	do
		try=true
		for fonts in $fontsInstalled
		do
			if [ "$file" = "$fonts" ]; then
			       try=false	
			fi
		done

		if $try; then
			cp "$pathfonts/$file" $pathUsrFonts
		else
			echo "$file has been installed!"
		fi
	done
fi

echo 'Fonts installation finished~~~'
echo 'Refeshing font cache:'
fc-cache -f -v
