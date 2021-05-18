#!/usr/bin/env bash

## install fonts
pathUsrFonts="$HOME/.fonts"
pathfonts='./fonts'
if [ ! -d $pathUsrFonts ]; then
	mkdir $pathUsrFonts
	cp -r "$pathfonts"/* $pathUsrFonts
else
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
			echo "$file is already installed!"
		fi
	done
fi

fc-cache -f -v

