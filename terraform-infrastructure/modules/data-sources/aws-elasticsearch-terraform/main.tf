provider "aws" {
  region = "${var.aws_region}"
}

resource "aws_elasticsearch_domain" "example" {
    domain_name = "${var.domain_name}"
    elasticsearch_version = ""

    snapshot_options {
        automated_snapshot_start_hour =
    }

    cluster_config {
        instance_type = "${var.elasticsearch_instance_type}"
        instance_count = "${var.instance_count}"
    }

    ebs_options{
        ebs_enabled = true
        volume_size = "${var.volume_size}"
    }

    tags {
      Domain = "${var.domain_name}"
    }

    vpc_options {
      security_group_ids = [ "${var.security_group_ids}" ]
      subnet_ids         = [ "${var.subnet_ids}" ]
    }
}
