//Dictionary
let dict = ["A": 123, "B": 789, "C": 567, "D": 432]

print(dict)

let dictKeyInc = dict.sorted(by: <)
let dictKeyDec = dict.sorted(by: >)

print(dictKeyInc)
print(dictKeyDec)

let dictValInc = dict.sorted(by: { $0.value < $1.value })
let dictValDec = dict.sorted(by: { $0.value > $1.value })

print(dictValInc)
print(dictValDec)

for item in dictValDec {
    print("key:\(item.key) value:\(item.value)")
}
