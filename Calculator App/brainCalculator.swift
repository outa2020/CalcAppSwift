//
//  brainCalculator.swift
//  Calculator App
//
//  Created by macbook on 2018-02-20.
//  Copyright © 2018 mohamed. All rights reserved.


import Foundation

class brainCalculator {
    
    typealias calcElement = (res : Double , op : Character)  //to define new kinds of types
    var numWithOpsArray : [calcElement] = []
    
    func add(num : Double , op : Character) {
        numWithOpsArray.append(calcElement(num, op))
    }
    
    
    func calculSomme() -> Double {
        calculMultiDiv()
        calculMoins()
        return numWithOpsArray.reduce(0, {$0 + $1.res})
        
    }
    
    func calculPlus() -> Double {
        

        var resulat : Double = 0
        for (index , elm) in numWithOpsArray.enumerated() {
            if elm.op != "=" {
                resulat = elm.res
                numWithOpsArray.remove(at: index)
                resulat = resulat + calculPlus()
                break
            } else {return elm.res}
        }
        return resulat
    }

    // let result : Int  = arr.reduce(0,{$0, $1})
    func calculMoins(){
        for (index , elm) in numWithOpsArray.enumerated() {
            if elm.op == "-" {
                let nextElm = numWithOpsArray[index + 1]
                var newElm : calcElement = (0, Character("+"))
                newElm.res = nextElm.res * (-1)
                newElm.op = "+"
                numWithOpsArray.remove(at: index + 1)
                numWithOpsArray.insert(newElm, at: index + 1)
    
            }
        }
    }

    
        func calculMultiDiv(){
            for (index , elm) in numWithOpsArray.enumerated() {
                  var newElm   : calcElement = (0, Character("+"))
                if elm.op == "x" {
                    let nextElm = numWithOpsArray[index + 1]
                    newElm.res = elm.res * nextElm.res
                    newElm.op = nextElm.op
                    numWithOpsArray.remove(at: index)
                    numWithOpsArray.remove(at: index)
                    numWithOpsArray.insert(newElm, at: index)
                    
                    calculMultiDiv()
                    break
    
                } else if elm.op == "/" {
                        let nextElm = numWithOpsArray[index + 1]
                        newElm.res = elm.res / nextElm.res
                        newElm.op = nextElm.op
                    numWithOpsArray.remove(at: index)
                    numWithOpsArray.remove(at: index)
                    numWithOpsArray.insert(newElm, at: index)
                    
                    calculMultiDiv()
                    break
    
                }
               }
            }
    

    
    func restartCalc(){
        numWithOpsArray = []
    }
}
