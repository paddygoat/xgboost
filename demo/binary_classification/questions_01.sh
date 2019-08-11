#!/bin/bash
printf "\033c"

echo""
echo -e "\e[41m\e[36m------------------ Questionnaire begin --------------------\e[0m"

########################################################################################

options=("bell=b" "conical=c" "convex=x" "flat=f" "knobbed=k" "sunken=s")
options2=("b" "c" "x" "f" "k" "s")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m1. Cap-shape:\e[0m"
    #echo "cap-shape:"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices[num]}" ]] && choices[num]="" || choices[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
paddy3=$paddy2

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("fibrous=f" "grooves=g" "scaly=y" "smooth=s")
options2=("f" "g" "y" "s")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m2. Cap-surface:\e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices2[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices2[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices2[num]}" ]] && choices2[num]="" || choices2[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices2[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("brown=n" "buff=b" "cinnamon=c" "gray=g" "green=r" "pink=p" "purple=u" "red=e" "white=w" "yellow=y")
options2=("n" "b" "c" "g" "r" "p" "u" "e" "w" "y")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m3. cap-color:\e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices3[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices3[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices3[num]}" ]] && choices3[num]="" || choices3[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices3[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("bruises=t" "no=f" )
options2=("t" "f")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m4. bruises?:\e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices4[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices4[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices4[num]}" ]] && choices4[num]="" || choices4[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices4[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("almond=a" "anise=l" "creosote=c" "fishy=y" "foul=f" "musty=m" "none=n" "pungent=p" "spicy=s" )
options2=("a" "l" "c" "y" "f" "m" "n" "p" "s")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m5. odor:\e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices5[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices5[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices5[num]}" ]] && choices5[num]="" || choices5[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices5[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("attached=a" "descending=d" "free=f" "notched=n" )
options2=("a" "d" "f" "n")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m6. gill-attachment:\e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices6[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices6[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices6[num]}" ]] && choices6[num]="" || choices6[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices6[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("close=c" "crowded=w" "distant=d")
options2=("c" "w" "d")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m7. gill-spacing:\e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices7[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices7[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices7[num]}" ]] && choices7[num]="" || choices7[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices7[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("broad=b" "narrow=n")
options2=("b" "n")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m8. gill-size:\e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices8[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices8[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices8[num]}" ]] && choices8[num]="" || choices8[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices8[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("black=k" "brown=n" "buff=b" "chocolate=h" "gray=g" "green=r" "orange=o" "pink=p" "purple=u" "red=e" "white=w" "yellow=y")
options2=("k" "n" "b" "h" "g" "r" "o" "p" "u" "e" "w" "y")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m9. gill-color:\e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices9[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices9[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices9[num]}" ]] && choices9[num]="" || choices9[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices9[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("enlarging=e" "tapering=t" )
options2=("e" "t")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m10. stalk-shape\e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices10[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices10[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices10[num]}" ]] && choices10[num]="" || choices10[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices10[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("bulbous=b" "club=c" "cup=u" "equal=e" "rhizomorphs=z" "rooted=r" "missing=?")
options2=("b" "c" "u" "e" "z" "r" "?")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m11. stalk-root:\e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices11[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices11[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices11[num]}" ]] && choices11[num]="" || choices11[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices11[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("fibrous=f" "scaly=y" "silky=k" "smooth=s")
options2=("f" "y" "k" "s")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m12. stalk-surface-above-ring:\e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices12[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices12[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices12[num]}" ]] && choices12[num]="" || choices12[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices12[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("fibrous=f" "scaly=y" "silky=k" "smooth=s")
options2=("f" "y" "k" "s")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m13. stalk-surface-below-ring:\e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices13[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices13[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices13[num]}" ]] && choices13[num]="" || choices13[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices13[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("brown=n" "buff=b" "cinnamon=c" "gray=g" "orange=o" "pink=p" "red=e" "white=w" "yellow=y")
options2=("n" "b" "c" "g" "o" "p" "e" "w" "y")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m14. stalk-color-above-ring:\e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices14[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices14[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices14[num]}" ]] && choices14[num]="" || choices14[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices14[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("brown=n" "buff=b" "cinnamon=c" "gray=g" "orange=o" "pink=p" "red=e" "white=w" "yellow=y")
options2=("n" "b" "c" "g" "o" "p" "e" "w" "y")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m15. stalk-color-below-ring:\e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices15[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices15[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices15[num]}" ]] && choices15[num]="" || choices15[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices15[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("partial=p" "universal=u" )
options2=("p" "u")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m16. veil-type: \e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices16[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices16[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices16[num]}" ]] && choices16[num]="" || choices16[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices16[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("brown=n" "orange=o" "white=w" "yellow=y")
options2=("n" "o" "w" "y")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m17. veil-color:  \e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices17[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices17[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices17[num]}" ]] && choices17[num]="" || choices17[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices17[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("none=n" "one=o" "two=t")
options2=("n" "o" "t")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m18. ring-number: \e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices18[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices18[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices18[num]}" ]] && choices18[num]="" || choices18[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices18[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("cobwebby=c" "evanescent=e" "flaring=f" "large=l" "none=n" "pendant=p" "sheathing=s" "zone=z")
options2=("c" "e" "f" "l" "n" "p" "s" "z")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m19. ring-type: \e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices19[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices19[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices19[num]}" ]] && choices19[num]="" || choices19[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices19[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("black=k" "brown=n" "buff=b" "chocolate=h" "green=r" "orange=o" "purple=u" "white=w" "yellow=y")
options2=("k" "n" "b" "h" "r" "o" "u" "w" "y")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m20. spore-print-color: \e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices20[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices20[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices20[num]}" ]] && choices20[num]="" || choices20[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices20[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("abundant=a" "clustered=c" "numerous=n" "scattered=s" "several=v" "solitary=y")
options2=("a" "c" "n" "s" "v" "y")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m21. population: \e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices21[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices21[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices21[num]}" ]] && choices21[num]="" || choices21[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
paddy3="$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices21[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
printf "\033c"

##########################################################################################

options=("grasses=g" "leaves=l" "meadows=m" "paths=p" "urban=u" "waste=w" "woods=d")
options2=("g" "l" "m" "p" "u" "w" "d")

menu() 
{
    echo""
    echo -e "\e[46m\e[31m22. habitat: \e[0m"
    for i in ${!options[@]}; do 
        printf "%3d%s) %s\n" $((i+1)) "${choices22[i]:- }" "${options[i]}"
    done
    if [[ "$msg" ]]; then echo "$msg"; fi
}

prompt="Check an option (again to uncheck, ENTER when done): "
while menu && read -rp "$prompt" num && [[ "$num" ]]; do
    [[ "$num" != *[![:digit:]]* ]] &&
    (( num > 0 && num <= ${#options[@]} )) ||
    { msg="Invalid option: $num"; continue; }
    ((num--)); msg="${options[num]} was ${choices22[num]:+un}checked" paddy="${options[num]}" paddy2="${options2[num]}"
    [[ "${choices22[num]}" ]] && choices22[num]="" || choices22[num]="+"
done
#echo "paddy= " "$paddy"
#echo "paddy2= " "$paddy2"
#comma=","
initialiser="p,"
paddy3="$initialiser$paddy3$comma$paddy2"

printf "You selected"; msg=" nothing"
for i in ${!options[@]}; do 
    [[ "${choices22[i]}" ]] && { printf " %s" "${options[i]}"; msg=""; }
done
echo "$msg"
#echo "paddy3= " "$paddy3"
#echo -e "\e[41m\e[36mpaddy3 = $paddy3\e[0m"
echo -e "\e[7mData so far = $paddy3\e[0m"
#echo $paddy3 > fungusFile.txt
printf "\033c"

##########################################################################################

echo""
echo -e "\e[41m\e[36m------------------ Questionnaire end --------------------\e[0m"
echo""
echo $paddy3 > fungusFile.data

echo "Now send the data collected from questionnaire to Python feature mapping ...... "

# map feature using indicator encoding, also produce featmap.txt
python mapfeat_paddy.py

echo "Now output prediction task ...... "

# output prediction task=pred 
../../xgboost mushroom_Paddy.conf task=pred model_in=0002.model

# Print out pred file:
echo -n "Prediction = "
cat pred.txt

#echo -n "There is a ";
#cat pred.txt | tr -d '\n';
#echo " % chance of survival after eating this fungus."


percentage=$(cat pred.txt)
#echo -n "Percentage 1 = "
#echo "$percentage"

#awk 'BEGIN { print 100-(100*$percentage) }'
#awk "BEGIN { print 100-(100*$percentage) }"
awk "BEGIN { print 100-(100*$percentage) }" > percentage.txt

echo -n "There is a ";
cat percentage.txt | tr -d '\n';
echo " % chance of death after eating this fungus."
echo""
echo -e "\e[41m\e[36m------------------ END --------------------\e[0m"









