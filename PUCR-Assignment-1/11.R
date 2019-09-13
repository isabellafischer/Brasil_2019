#Isabella Fischer


shouldIEat = function(x){
    if (x >10 | x <1){
        return("Invalid input.")
    }
    else if (x<=10 & x>=8){
        return("Go eat!")
    }
    else if (x<8 & x>=3){
        return("Don't eat!")
    }
    else if (x<3 & x>=1){
        return("Take a nap!")
    }
}
