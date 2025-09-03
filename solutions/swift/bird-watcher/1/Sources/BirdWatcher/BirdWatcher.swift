func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
  var total = 0
  for bird in birdsPerDay {
    total += bird 
  }
  return total
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
  let startIndex = (weekNumber - 1) * 7
  let endIndex = startIndex + 7
  
  var total = 0
  for i in startIndex..<endIndex {
    total += birdsPerDay[i]
  }
  return total
  
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {

  var birdsCorrected = birdsPerDay
  for bird in 0..<birdsCorrected.count {
    if bird % 2 == 0 {
      birdsCorrected[bird] += 1
    }
  }
  return birdsCorrected
}
