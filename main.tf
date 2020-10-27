resource "random_id" "random" {
  byte_length = 1024

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