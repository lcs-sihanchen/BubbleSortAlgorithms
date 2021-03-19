//
//  main.swift
//  BubbleSortAlgorithms
//
//  Created by Chen, Sihan on 2021-03-19.
//

import Foundation

// Pause to allow the users to see output

func waitForInput() {
    print("Press Return To Continue")
    _ = readLine()
    
    
}

// Create an empty array
var dataset: [Int] = []

// Calculate the array

for _ in 1...10 {
    dataset.append(Int.random(in: 1...100))
    
}

//dataset = [1,2,3,4,5,6,7,8,9,13,15]

// Print the unsorted array
print("Unsorted:")
print(dataset)
waitForInput()

// Sort the array

// Loop through the entire array n times

var swapped = false


for i in 0..<dataset.count {
   swapped = false
    // One pass through the array to float the highest number to the end
    for j in 0..<dataset.count - 1 - i {

        
        // Compare left value to the right value
        if dataset[j] > dataset[j+1] {
            // Swap value when left value is greater than the right value
            let temporaryValue = dataset[j]     // Set aside left value
            dataset[j] = dataset[j+1]
            dataset[j+1] = temporaryValue
            swapped = true
            
        }
            
        
        
        
        
    }
    if swapped == false {
        break
    }
    
    // Print the array after n passes
    print("Array after pass \(i+1)")
    print(dataset)
    waitForInput()
    
}

// Print the sorted arrays
print("Sorted:")
print(dataset)
waitForInput()

