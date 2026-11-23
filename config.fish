# source /usr/share/cachyos-fish-config/cachyos-config.fish


set -x TODAY (date +"%Y-%m-%d")
set -x NOW ( date +"%Y-%m-%d|%H:%M:%S")

# overwrite greeting and disabling fastfetch
function fish_greeting
end

set -xg TERM_OLD xterm-256color



function detach --wraps=$argv[1]
    $argv >/dev/null 2>&1 &; disown
end


function git_set_personal_sshkey
    git config core.sshCommand "ssh -i ~/.ssh/personal_github -o IdentitiesOnly=yes"
end

function tailscale_proxy
    set -l proxy_env ALL_PROXY=socks5://localhost:1055 HTTP_PROXY=http://localhost:1055 HTTPS_PROXY=http://localhost:1055
    $proxy_env $argv 
end

function ssh_to_my_pc
    ssh -o ProxyCommand="nc -X 5 -x localhost:1055 %h %p" angela@100.127.191.12
end


source ~/.config/fish/functions/ls.fish
source ~/.config/fish/env_variable.fish
