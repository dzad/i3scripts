#session -s e   -n etc -d 'cd /etc; bash -i'
#tmux new-window  -t e:1 -n home   'cd ~; bash -i'
#tmux new-window  -t e:2 -n log   'cd /var/log; bash -i'

#tmux select-window -t e:1
#tmux -2 attach-session -t e


tmux new-session \
\; send-keys "vifm" C-m\
\; split-window -h\
\; resize-pane -L 55\
\; send-keys 'vim --servername svim' C-m\

