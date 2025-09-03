func getName(_ item: (name: String, amount: Int)) -> String {
  let toy = (item.name)
  return toy
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
  let toy = (name: name, amount: amount)
  return toy
}

func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) ->  [(name: String, amount: Int)] {
  var result = items
  if let index = result.firstIndex(where: {$0.name == toy}) {
    result[index].amount = amount
  }
  return result
  
}

func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
  var toys: [(name: String, amount: Int, category: String)] = []
  
  for item in items {
    var toy = (name: item.name, amount: item.amount, category: category)
    toys.append(toy)
  }
  
  return toys
} 
