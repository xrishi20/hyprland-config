# Fish shell basic 
set -g fish_greeting
set VIRTUAL_ENV_DISABLE_PROMPT "1"
export BAT_THEME="Tokyonight-Dark-BL-LB"

# Set settings for https://github.com/franciscolourenco/done
set -U __done_min_cmd_duration 10000
set -U __done_notification_urgency_level low
 
# Starship prompt
if status --is-interactive
 starship init fish | source
end

# Some config
set -g fish_greeting

# Fish command history
function history
    builtin history --show-time='%F %T '
end

# File backup
function backup --argument filename
    cp $filename $filename.bak
end

# Get the error messages from journalctl
alias jctl="journalctl -p 3 -xb"

# Pacman and reflector stuff
alias cleanup='sudo pacman -Rns (pacman -Qtdq)'
alias mirror='sudo reflector --age 6 --latest 200 --fastest 20 --threads 20 --sort rate --protocol https --verbose --save /etc/pacman.d/mirrorlist'