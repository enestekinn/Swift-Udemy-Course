import UIKit

var myFavoriteMovies = ["Pulp Fiction","Kill Bill","Reservoir Dogs",5] as [Any]

//as -> casting
//any -> any object


myFavoriteMovies[0]


var myStringArray = ["Test","Test2","Test3"]
myStringArray[0].uppercased()

myStringArray[myStringArray.count - 1]

myStringArray.sort()


var myNumberArray = [1,2,3,4,5,6,7]
myNumberArray.append(8)


//Set

//Unordered collection, unique elements

var mySet: Set = [1,2,3,4,5]
mySet.first
var myStringSet: Set = ["a","b","c","d","e"]

var myInternetArray = [1,3,2,1,1,4,4,5,6,7,2]
var myInternetSet = Set(myInternetArray)
print(myInternetArray)
print(myInternetSet)

//Dictionary

var myFavoriteDictionary = ["Pulp Fiction" : "Tarantino","Stock" : "Guy Ritchie","The Dark Knight" : "Christopher Nolan"]

myFavoriteDictionary["Pulp Fiction"]

myFavoriteDictionary["Seven Samurai"] = "Akira Kurisowa"

print(myFavoriteDictionary)

var myDctionary = ["Run": 100,"Swim": 200,"Basketball": 300]
myDctionary["Run"]
