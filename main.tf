data "template_file" "sysprep-bastion" {
  template = file("./helper_scripts/sysprep-bastion.sh")
}

