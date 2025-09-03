func sliceSize(diameter: Double?, slices: Int?) -> Double? {

  guard let diameter = diameter, diameter >= 0, let slices = slices, slices > 0 else {
    return nil
  }
  
  let radius = diameter / 2
  let pizzaSize = Double.pi * radius * radius
  let slicedArea = pizzaSize / Double(slices)
  return slicedArea 
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
  
  let areaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
  let areaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))
 
  switch (areaA, areaB) {
    case let (a?, b?): 
      if a > b {
        return "Slice A is bigger"
      } else if b > a {
        return "Slice B is bigger"
      } else {
        return "Neither slice is bigger"
      }
    
    case(.some, nil): 
      return "Slice A is bigger"
    case(nil, .some): 
      return "Slice B is bigger"
    default:
      return "Neither slice is bigger"
  } 
  
}
