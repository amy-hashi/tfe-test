resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 12
}

output "random" {
  value = "${random_id.random.hex}"
}

resource "random_pet" "passwd" {
  length = 3
}

output "passwd" {
  value = "${random_pet.passwd.id}"
}

