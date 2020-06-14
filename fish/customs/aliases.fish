# Navigation
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

function ll    ; ls -lh $argv ; end
function lla   ; ls -la $argv ; end

function code
  set location "$PWD/$argv"
  open -n -b "com.microsoft.VSCode" --args $location
end

# Python
# alias pip='pip3'
# alias python='python3'

# Often used shortcuts/aliases
function work; cd ~/dev/; end
