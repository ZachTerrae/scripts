while true; do
    echo -en "Press Q to exit \t\t: "
    read input
    if [[ $input = "q" ]] || [[ $input = "Q" ]] 
        then break 
    else 
        for ((i=0; i <= 100000000 ; i++))
        do
            xdotool click 1 &
            sleep 0.01
        done
    fi
done
