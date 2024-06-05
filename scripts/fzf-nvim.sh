#!/bin/bash

dir=$(
	fd . $HOME/dev/ -t d -d 1 | \
	fzf --preview \
	"eza --tree --level=2 --color=always --icons --git-ignore {}" \
	--layout=reverse --margin=5% --height=50% --scroll-off=5 -i)

if [ -n "$dir" ]; then
  cd "$dir" && nvim .
fi

