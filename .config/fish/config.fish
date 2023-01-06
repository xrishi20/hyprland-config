if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Some config
set -g fish_greeting

# Starship
starship init fish | source
