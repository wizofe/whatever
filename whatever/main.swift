////
////  main.swift
////  DiffX
////
////  Created by Ioannis Valasakis on 19/04/2020.
////   Copied by the Swift for TensorFlow doumentation :)

//
import TensorFlow

struct Model: Differentiable {
    var w: Float
    var b: Float
    func applied(to input: Float) -> Float {
        return w * input + b
    }
}

let model = Model(w: 4, b: 3)
let input: Float = 2
let (𝛁model, 𝛁input) = gradient(at: model, input) {model, input in
    model.applied(to: input)
}

print(𝛁model)
print(𝛁input)
