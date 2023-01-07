package Infracost

deny[out] {
  maxDiff = 5
  msg := sprintf(
    "Total monthly cost diff must be less than $%.2f (actual diff is $%.2f)",
    [maxDiff, to_number(input.diffTotalMonthlyCost)],
  )
  out := {
    "msg": msg,
    "failed": to_number(input.diffTotalMonthlyCost) >= maxDiff
  }
}