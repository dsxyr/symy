#! /bin/bash 
WALLPAPERS="/home/dsxyr/.etc_dsxyr/pics"
 ALIST=( `ls -w1 $WALLPAPERS` )
  RANGE=${#ALIST[@]}
   let "number = $RANDOM"
    let LASTNUM="`cat $WALLPAPERS/.last` + $number"
     let "number = $LASTNUM % $RANGE"
      echo $number > $WALLPAPERS/.last
      
       feh --bg-scale $WALLPAPERS/${ALIST[$number]}
