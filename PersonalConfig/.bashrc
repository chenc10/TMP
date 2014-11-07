alias l="ls -al --color"
alias ls="/bin/ls --color"
alias v="vim"
alias c="cd"
alias m="mv"
alias r!="rm -rfv"
alias e="exit"

r(){
	echo "below re-moved:";
	for items in $@
	do	
		items="/home/cchenam/.Trash/"$items
		#note that softlink is not supported here
		if [ -e $items ]
		then
			/bin/rm -rf $items
			echo $items" conflict, solved by removing"
		fi	
	done
       	mv -fv "$@" ~/~~/.Trash
}


set nobeep

export PS1="\[\e[32;10m\]\u \W\$\[\e[0m\] "


