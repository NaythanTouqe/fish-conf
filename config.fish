source /usr/share/cachyos-fish-config/cachyos-config.fish


set -x TODAY (date +"%Y-%m-%d")
set -x NOW ( date +"%Y-%m-%d|%H:%M:%S")

# overwrite greeting and disabling fastfetch
function fish_greeting
end

set -xg TERM_OLD xterm-256color


source ~/.config/fish/functions/ls.fish
