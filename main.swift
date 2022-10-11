var unsortedAlph: [String] = []

while let input = readLine() {

    unsortedAlph.append(input)
    
}


// Add your code below:

func sort(arr:[String]){
    var array = arr
    let  arrLength = arr.count
    
    for index in 0 ..< arrLength{
        var prevIndex = index-1
        let currentElement = array[index]
        
        while (prevIndex >= 0 && array[prevIndex] > currentElement){
            array[prevIndex + 1] = array[prevIndex]
            prevIndex -= 1
        }


        array[prevIndex + 1] = currentElement
    }
    print(array)
    for i in 0 ..< array.count{
        print(array[i])
    }
}

sort(arr: unsortedAlph)
