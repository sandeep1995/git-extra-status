#!/usr/bin/env bash

get_abspath() {
	local thePath
	if [[ ! "$1" =~ ^/ ]]; then
		thePath="$PWD/$1"
	else
		thePath="$1"
	fi
	echo "$thePath" | (
		IFS=/
		read -a parr
		declare -a outp
		for i in "${parr[@]}"; do
			case "$i" in
			'' | .) continue ;;
			..)
				len=${#outp[@]}
				if ((len == 0)); then
					continue
				else
					unset outp[$((len - 1))]
				fi
				;;
			*)
				len=${#outp[@]}
				outp[$len]="$i"
				;;
			esac
		done
		echo /"${outp[*]}"
	)
}

echo $(get_abspath $1)