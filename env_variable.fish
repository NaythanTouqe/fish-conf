set -ax PATH $HOME/.local/opt/kitty-0.50.0-x86_64/bin
set -ax PATH $HOME/.local/opt/mini-moulinette/bin
set -ax PATH $HOME/.local/opt/fish_shell/bin
set -ax PATH $HOME/.local/opt/eza/bin
set -ax PATH $HOME/.local/opt/tailscale
set -ax PATH $HOME/.local/opt/zen

function tailscale
	$HOME/.local/opt/tailscale/tailscale --socket $HOME/.local/run/tailscale/tailscaled.sock $argv
end


function nvim
	$HOME/.local/opt/nvim/nvim-linux-x86_64/bin/nvim $argv
end

set -ax PATH $HOME/.local/opt/cmake-4.5.1-linux-x86_64/bin
function cmake
	$HOME/.local/opt/cmake-4.5.1-linux-x86_64/bin/cmake $argv
end
