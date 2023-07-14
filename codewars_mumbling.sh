# https://www.codewars.com/kata/5667e8f4e3f572a8f2000039/train/shell
#
#!/bin/bash
accum () {                                       
    length=${#input_string}   
    input_string=${1,,}  
    output_string=''                                        
    sep='-'                                          
                 
    for (( index=0; index<$length; index++ )) {      
        char=${input_string:$index:1}                       
        
        if [ $index -gt 0 ]; then                    
            output_string=$output_string$sep
        fi
        
        token=''                                     
        for (( count=0; count<=$index; count++ )) {           
            token=$token$char
        }        
        token=${token^}                              
        output_string=$output_string$token                         
    }   
    
    echo $output_string                                     
    
}
accum "$1"
