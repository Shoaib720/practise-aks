resource "random_integer" "random_int" {
  min = 0
  max = 999
}

output "random_int" {
  value = random_integer.random_int.result
}