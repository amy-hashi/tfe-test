resource "random_id" "random" {
  #byte_length = 2097152
  byte_length = 1024 
  
  keepers = {
    uuid = uuid()
  }

  depends_on = [time_sleep.wait_300_seconds]
}

output "random" {
  value = random_id.random.hex
}

resource "random_pet" "passwd" {
  length = 3

  keepers = {
    uuid = uuid()
  }

  depends_on = [time_sleep.wait_300_seconds]
}

output "passwd" {
  value = random_pet.passwd.id
}

resource "time_sleep" "wait_300_seconds" {
  create_duration = "300s"
}
