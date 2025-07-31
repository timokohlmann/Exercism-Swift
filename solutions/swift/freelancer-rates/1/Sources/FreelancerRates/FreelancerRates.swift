func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate) * 8
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let monthlyRate = Double(hourlyRate*8*22)
  let rateWithDiscount = monthlyRate * (1 - discount / 100)
  return  rateWithDiscount.rounded()
  
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let dailyRate = Double(hourlyRate) * (1 - discount / 100) * 8
  let days = budget / dailyRate
    return days.rounded(.down)
}
