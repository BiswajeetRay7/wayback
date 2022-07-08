#!/bin/bash
cat << "EOF" | lolcat

$$\      $$\  $$$$$$\$$\     $$\ $$$$$$$\   $$$$$$\   $$$$$$\  $$\   $$\ 
$$ | $\  $$ |$$  __$$\$$\   $$  |$$  __$$\ $$  __$$\ $$  __$$\ $$ | $$  |
$$ |$$$\ $$ |$$ /  $$ \$$\ $$  / $$ |  $$ |$$ /  $$ |$$ /  \__|$$ |$$  / 
$$ $$ $$\$$ |$$$$$$$$ |\$$$$  /  $$$$$$$\ |$$$$$$$$ |$$ |      $$$$$  /  
$$$$  _$$$$ |$$  __$$ | \$$  /   $$  __$$\ $$  __$$ |$$ |      $$  $$<   
$$$  / \$$$ |$$ |  $$ |  $$ |    $$ |  $$ |$$ |  $$ |$$ |  $$\ $$ |\$$\  
$$  /   \$$ |$$ |  $$ |  $$ |    $$$$$$$  |$$ |  $$ |\$$$$$$  |$$ | \$$\ 
\__/     \__|\__|  \__|  \__|    \_______/ \__|  \__| \______/ \__|  \__|

                                      Author: Biswajeet Ray
                                Github:github.com/BiswajeetRay7


echo "Enter your Domain Name"
EOF
read s
curl "http://web.archive.org/cdx/search/cdx?url=*.$s/*&output=json&fl=original&collapse=urlkey" -s -k --insecure --path-as-is | sed 's/\["//g'| sed 's/"\],//g' |  sort -u | tee -a $s.txt
