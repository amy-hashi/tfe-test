resource "random_id" "random" {
  byte_length = 1048576

  keepers = {
    uuid = uuid()
  }
}

output "random" {
  value = random_id.random.hex
}

resource "random_pet" "passwd" {
  length = 3

  keepers = {
    uuid = uuid()
  }
}

output "passwd" {
  value = random_pet.passwd.id
}

resource "random_string" "string" {
  length = 12288
  special = true

  keepers = {
    uuid = uuid()
  }
}

output "string" {
	value = random_string.string.id
}