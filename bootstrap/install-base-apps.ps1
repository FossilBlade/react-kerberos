irm get.scoop.sh | iex
scoop install nodejs
$nodepath = (get-command node.exe).Path
New-NetFirewallRule -DisplayName "Allow NodeJS” -Direction Inbound -Program “$nodepath” -Action allow -Profile Domain

npm install -g http-server
http-server -p 8000