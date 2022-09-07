declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[cats]="mew"

echo "dog sound : " ${sounds[dog]}
echo "all animals : " ${!sounds[@]}
echo "all sounds : "  ${sounds[@]}

