resource "random_id" "random" {
  #byte_length = 2097152
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

resource "null_resource" "previous" {}

resource "time_sleep" "wait_300_seconds" {
  depends_on = [null_resource.previous]

  create_duration = "300s"
}

# This resource will create (at least) 300 seconds after null_resource.previous
resource "null_resource" "next" {
  depends_on = [time_sleep.wait_300_seconds]
}