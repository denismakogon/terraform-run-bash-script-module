resource "null_resource" "run_create_script" {
  provisioner "local-exec" {
    working_dir = var.working_dir
    environment = var.environment
    when = create
    command = var.create_command
  }
}

resource "null_resource" "run_destroy_script" {
  triggers = {
    destroy_command = var.destroy_command
    working_dir = var.working_dir
  }

  provisioner "local-exec" {
    working_dir = self.triggers.working_dir
    when = destroy
    command = self.triggers.destroy_command
  }

}
