# TMUX

Cheatsheet - <https://gist.github.com/MohamedAlaa/2961058>

Start a Tmux new session:

``` java
tmux new -s mysession
```

Exiting a session & let it run in the background:

Ctrl+b Then d

Re-attach existing session

``` java
tmux a -t mysession
```

Kill session

``` java
tmux kill-session -t mysession
```
