containsAnyOfTheseKeys = function(lis_var, vec_var){
t=0
f=0

chek = vec_var %in% names(lis_var)

n = length(chek)
  for (i in 1:n){
    if(chek[i]==1){   
     t= t+1}
    else {f = f+1}
}
  if(t!=0){ 
    return(TRUE)}
  else {return(FALSE)}
}

#  habitats1 = list("duck" = "pond", "horse" = "field", "cow" = "pasture")
#  habitats2 = list("deer" = "forest", "elk" = "forest", "wolf" = "forest")
#  habitats3 = list("student" = "library", "trout" = "lake", "shark" = "ocean")
# 
# print(containsAnyOfTheseKeys(habitats1, c("duck", "wolf", "bird")))
# print(containsAnyOfTheseKeys(habitats1, c("mouse", "wolf", "bird")))
# print(containsAnyOfTheseKeys(habitats2, c("shark", "horse", "trout")))
# print(containsAnyOfTheseKeys(habitats2, c("shark", "deer", "trout")))
# print(containsAnyOfTheseKeys(habitats3, c("shark", "deer", "trout")))
# print(containsAnyOfTheseKeys(habitats3, c("manatee")))

