# Isabella Fischer

howManySixes = function(vector){
    six = table(vector)["6"]
    
    if(!is.na(six)){
        return(six[["6"]])
    }else{
        return(as.numeric(FALSE))
    }}


