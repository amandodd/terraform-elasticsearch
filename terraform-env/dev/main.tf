module "" {
  source  = ""

  domain_name = "${var.domain_name}"
  aws_region = "${var.aws_region}"
  elasticsearch_instance_type = "${var.elasticsearch_instance_type}"
  instance_count = "${var.instance_count}"
  volume_size = "${var.volume_size}"
  security_group_ids = "${var.security_group_ids}"
  subnet_ids = "${var.subnet_ids}"
}
