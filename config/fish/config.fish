# Fish shell basic 
set fish_greeting
set VIRTUAL_ENV_DISABLE_PROMPT "1"
export BAT_THEME="Catppuccin-mocha"

# Set settings for https://github.com/franciscolourenco/done
set -U __done_min_cmd_duration 10000
set -U __done_notification_urgency_level low
 
# Starship prompt
if status --is-interactive
 starship init fish | source
end

# Fish command history
function history
    builtin history --show-time='%F %T '
end

# File backup
function backup --argument filename
    cp $filename $filename.bak
end

# Pacman and reflector stuff
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'
alias listpkgs="pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
alias mirror='sudo reflector --age 6 --latest 200 --fastest 20 --threads 20 --sort rate --protocol https --verbose --save /etc/pacman.d/mirrorlist'

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Print cute little ghosts on the top of the terminal
function circles 
    set -l bred (set_color -o brred)
    set -l bgreen (set_color -o brgreen)
    set -l byellow (set_color -o bryellow)
    set -l bblue (set_color -o brblue)
    set -l bmagenta (set_color -o brmagenta)
    set -l bcyan (set_color -o brcyan)
    echo $bred" "$byellow" "$bgreen" "$bmagenta" "$bblue" "$bcyan" " 
end

if status --is-interactive
  circles
end

