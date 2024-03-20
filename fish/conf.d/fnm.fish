# We need to customize for fish shell.
# See https://github.com/Schniz/fnm/issues/691
set -l os (uname)
switch (uname)
    case Darwin
        # do things for macOS
        /opt/homebrew/bin/fnm env | source
    case Linux
        # do things for Linux
        set PATH "$HOME/.fnm" $PATH
        fnm env | source
    case '*'
        # do things for other OSs
end
