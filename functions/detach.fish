function detach
    $argv >/dev/null 2>&1 &; disown
end
