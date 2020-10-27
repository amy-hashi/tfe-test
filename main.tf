resource "random_id" "random" {
  byte_length = 1024
}

output "random" {
  value = random_id.random.hex
}

resource "random_pet" "passwd" {
  length = 3
}

output "passwd" {
  value = random_pet.passwd.id
}

resource "random_string" "string" {
  length = 1024
  special = true
}

output "string" {
	valut = random_string.string.id
}