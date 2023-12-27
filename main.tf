resource "random_id" "some_random_string" {
  byte_length = 8
}

output "product_id" {
  value = random_id.some_random_string.hex
}