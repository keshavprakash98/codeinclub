#! /bin/bash
# To declare static Array 
arr=(prakhar ankitz 1 rishabh manish abhinav)
  
# To print all elements of array
echo ${arr[@]}        # prakhar ankit 1 rishabh manish abhinav
echo ${arr[*]}        # prakhar ankit 1 rishabh manish abhinav
echo ${arr[@]:0}    # prakhar ankit 1 rishabh manish abhinav
echo ${arr[*]:0}    # prakhar ankit 1 rishabh manish abhinav
  
# To print first element
echo ${arr[0]}        # prakhar
echo ${arr}            # prakhar
  
# To print particular element
echo