locals = {
  cluster_name                      = "kubernetesaltynai.com"
  master_autoscaling_group_ids      = ["${aws_autoscaling_group.master-us-west-2a-masters-kubernetesaltynai-com.id}", "${aws_autoscaling_group.master-us-west-2b-masters-kubernetesaltynai-com.id}", "${aws_autoscaling_group.master-us-west-2c-masters-kubernetesaltynai-com.id}"]
  master_security_group_ids         = ["${aws_security_group.masters-kubernetesaltynai-com.id}"]
  masters_role_arn                  = "${aws_iam_role.masters-kubernetesaltynai-com.arn}"
  masters_role_name                 = "${aws_iam_role.masters-kubernetesaltynai-com.name}"
  node_autoscaling_group_ids        = ["${aws_autoscaling_group.nodes-kubernetesaltynai-com.id}"]
  node_security_group_ids           = ["${aws_security_group.nodes-kubernetesaltynai-com.id}"]
  node_subnet_ids                   = ["${aws_subnet.us-west-2a-kubernetesaltynai-com.id}", "${aws_subnet.us-west-2b-kubernetesaltynai-com.id}", "${aws_subnet.us-west-2c-kubernetesaltynai-com.id}"]
  nodes_role_arn                    = "${aws_iam_role.nodes-kubernetesaltynai-com.arn}"
  nodes_role_name                   = "${aws_iam_role.nodes-kubernetesaltynai-com.name}"
  region                            = "us-west-2"
  route_table_private-us-west-2a_id = "${aws_route_table.private-us-west-2a-kubernetesaltynai-com.id}"
  route_table_private-us-west-2b_id = "${aws_route_table.private-us-west-2b-kubernetesaltynai-com.id}"
  route_table_private-us-west-2c_id = "${aws_route_table.private-us-west-2c-kubernetesaltynai-com.id}"
  route_table_public_id             = "${aws_route_table.kubernetesaltynai-com.id}"
  subnet_us-west-2a_id              = "${aws_subnet.us-west-2a-kubernetesaltynai-com.id}"
  subnet_us-west-2b_id              = "${aws_subnet.us-west-2b-kubernetesaltynai-com.id}"
  subnet_us-west-2c_id              = "${aws_subnet.us-west-2c-kubernetesaltynai-com.id}"
  subnet_utility-us-west-2a_id      = "${aws_subnet.utility-us-west-2a-kubernetesaltynai-com.id}"
  subnet_utility-us-west-2b_id      = "${aws_subnet.utility-us-west-2b-kubernetesaltynai-com.id}"
  subnet_utility-us-west-2c_id      = "${aws_subnet.utility-us-west-2c-kubernetesaltynai-com.id}"
  vpc_cidr_block                    = "${aws_vpc.kubernetesaltynai-com.cidr_block}"
  vpc_id                            = "${aws_vpc.kubernetesaltynai-com.id}"
}

output "cluster_name" {
  value = "kubernetesaltynai.com"
}

output "master_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.master-us-west-2a-masters-kubernetesaltynai-com.id}", "${aws_autoscaling_group.master-us-west-2b-masters-kubernetesaltynai-com.id}", "${aws_autoscaling_group.master-us-west-2c-masters-kubernetesaltynai-com.id}"]
}

output "master_security_group_ids" {
  value = ["${aws_security_group.masters-kubernetesaltynai-com.id}"]
}

output "masters_role_arn" {
  value = "${aws_iam_role.masters-kubernetesaltynai-com.arn}"
}

output "masters_role_name" {
  value = "${aws_iam_role.masters-kubernetesaltynai-com.name}"
}

output "node_autoscaling_group_ids" {
  value = ["${aws_autoscaling_group.nodes-kubernetesaltynai-com.id}"]
}

output "node_security_group_ids" {
  value = ["${aws_security_group.nodes-kubernetesaltynai-com.id}"]
}

output "node_subnet_ids" {
  value = ["${aws_subnet.us-west-2a-kubernetesaltynai-com.id}", "${aws_subnet.us-west-2b-kubernetesaltynai-com.id}", "${aws_subnet.us-west-2c-kubernetesaltynai-com.id}"]
}

output "nodes_role_arn" {
  value = "${aws_iam_role.nodes-kubernetesaltynai-com.arn}"
}

output "nodes_role_name" {
  value = "${aws_iam_role.nodes-kubernetesaltynai-com.name}"
}

output "region" {
  value = "us-west-2"
}

output "route_table_private-us-west-2a_id" {
  value = "${aws_route_table.private-us-west-2a-kubernetesaltynai-com.id}"
}

output "route_table_private-us-west-2b_id" {
  value = "${aws_route_table.private-us-west-2b-kubernetesaltynai-com.id}"
}

output "route_table_private-us-west-2c_id" {
  value = "${aws_route_table.private-us-west-2c-kubernetesaltynai-com.id}"
}

output "route_table_public_id" {
  value = "${aws_route_table.kubernetesaltynai-com.id}"
}

output "subnet_us-west-2a_id" {
  value = "${aws_subnet.us-west-2a-kubernetesaltynai-com.id}"
}

output "subnet_us-west-2b_id" {
  value = "${aws_subnet.us-west-2b-kubernetesaltynai-com.id}"
}

output "subnet_us-west-2c_id" {
  value = "${aws_subnet.us-west-2c-kubernetesaltynai-com.id}"
}

output "subnet_utility-us-west-2a_id" {
  value = "${aws_subnet.utility-us-west-2a-kubernetesaltynai-com.id}"
}

output "subnet_utility-us-west-2b_id" {
  value = "${aws_subnet.utility-us-west-2b-kubernetesaltynai-com.id}"
}

output "subnet_utility-us-west-2c_id" {
  value = "${aws_subnet.utility-us-west-2c-kubernetesaltynai-com.id}"
}

output "vpc_cidr_block" {
  value = "${aws_vpc.kubernetesaltynai-com.cidr_block}"
}

output "vpc_id" {
  value = "${aws_vpc.kubernetesaltynai-com.id}"
}

provider "aws" {
  region = "us-west-2"
}

resource "aws_autoscaling_attachment" "master-us-west-2a-masters-kubernetesaltynai-com" {
  elb                    = "${aws_elb.api-kubernetesaltynai-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-2a-masters-kubernetesaltynai-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-west-2b-masters-kubernetesaltynai-com" {
  elb                    = "${aws_elb.api-kubernetesaltynai-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-2b-masters-kubernetesaltynai-com.id}"
}

resource "aws_autoscaling_attachment" "master-us-west-2c-masters-kubernetesaltynai-com" {
  elb                    = "${aws_elb.api-kubernetesaltynai-com.id}"
  autoscaling_group_name = "${aws_autoscaling_group.master-us-west-2c-masters-kubernetesaltynai-com.id}"
}

resource "aws_autoscaling_group" "master-us-west-2a-masters-kubernetesaltynai-com" {
  name                 = "master-us-west-2a.masters.kubernetesaltynai.com"
  launch_configuration = "${aws_launch_configuration.master-us-west-2a-masters-kubernetesaltynai-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-west-2a-kubernetesaltynai-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesaltynai.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-west-2a.masters.kubernetesaltynai.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-west-2a"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-us-west-2a"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-west-2b-masters-kubernetesaltynai-com" {
  name                 = "master-us-west-2b.masters.kubernetesaltynai.com"
  launch_configuration = "${aws_launch_configuration.master-us-west-2b-masters-kubernetesaltynai-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-west-2b-kubernetesaltynai-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesaltynai.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-west-2b.masters.kubernetesaltynai.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-west-2b"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-us-west-2b"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "master-us-west-2c-masters-kubernetesaltynai-com" {
  name                 = "master-us-west-2c.masters.kubernetesaltynai.com"
  launch_configuration = "${aws_launch_configuration.master-us-west-2c-masters-kubernetesaltynai-com.id}"
  max_size             = 1
  min_size             = 1
  vpc_zone_identifier  = ["${aws_subnet.us-west-2c-kubernetesaltynai-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesaltynai.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "master-us-west-2c.masters.kubernetesaltynai.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "master-us-west-2c"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/master"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "master-us-west-2c"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_autoscaling_group" "nodes-kubernetesaltynai-com" {
  name                 = "nodes.kubernetesaltynai.com"
  launch_configuration = "${aws_launch_configuration.nodes-kubernetesaltynai-com.id}"
  max_size             = 2
  min_size             = 2
  vpc_zone_identifier  = ["${aws_subnet.us-west-2a-kubernetesaltynai-com.id}", "${aws_subnet.us-west-2b-kubernetesaltynai-com.id}", "${aws_subnet.us-west-2c-kubernetesaltynai-com.id}"]

  tag = {
    key                 = "KubernetesCluster"
    value               = "kubernetesaltynai.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "Name"
    value               = "nodes.kubernetesaltynai.com"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/cluster-autoscaler/node-template/label/kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  tag = {
    key                 = "k8s.io/role/node"
    value               = "1"
    propagate_at_launch = true
  }

  tag = {
    key                 = "kops.k8s.io/instancegroup"
    value               = "nodes"
    propagate_at_launch = true
  }

  metrics_granularity = "1Minute"
  enabled_metrics     = ["GroupDesiredCapacity", "GroupInServiceInstances", "GroupMaxSize", "GroupMinSize", "GroupPendingInstances", "GroupStandbyInstances", "GroupTerminatingInstances", "GroupTotalInstances"]
}

resource "aws_ebs_volume" "a-etcd-events-kubernetesaltynai-com" {
  availability_zone = "us-west-2a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "a.etcd-events.kubernetesaltynai.com"
    "k8s.io/etcd/events"                          = "a/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_ebs_volume" "a-etcd-main-kubernetesaltynai-com" {
  availability_zone = "us-west-2a"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "a.etcd-main.kubernetesaltynai.com"
    "k8s.io/etcd/main"                            = "a/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-events-kubernetesaltynai-com" {
  availability_zone = "us-west-2b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "b.etcd-events.kubernetesaltynai.com"
    "k8s.io/etcd/events"                          = "b/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_ebs_volume" "b-etcd-main-kubernetesaltynai-com" {
  availability_zone = "us-west-2b"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "b.etcd-main.kubernetesaltynai.com"
    "k8s.io/etcd/main"                            = "b/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-events-kubernetesaltynai-com" {
  availability_zone = "us-west-2c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "c.etcd-events.kubernetesaltynai.com"
    "k8s.io/etcd/events"                          = "c/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_ebs_volume" "c-etcd-main-kubernetesaltynai-com" {
  availability_zone = "us-west-2c"
  size              = 20
  type              = "gp2"
  encrypted         = false

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "c.etcd-main.kubernetesaltynai.com"
    "k8s.io/etcd/main"                            = "c/a,b,c"
    "k8s.io/role/master"                          = "1"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_eip" "us-west-2a-kubernetesaltynai-com" {
  vpc = true

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "us-west-2a.kubernetesaltynai.com"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_eip" "us-west-2b-kubernetesaltynai-com" {
  vpc = true

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "us-west-2b.kubernetesaltynai.com"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_eip" "us-west-2c-kubernetesaltynai-com" {
  vpc = true

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "us-west-2c.kubernetesaltynai.com"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_elb" "api-kubernetesaltynai-com" {
  name = "api-kubernetesaltynai-com-5h1lc8"

  listener = {
    instance_port     = 443
    instance_protocol = "TCP"
    lb_port           = 443
    lb_protocol       = "TCP"
  }

  security_groups = ["${aws_security_group.api-elb-kubernetesaltynai-com.id}"]
  subnets         = ["${aws_subnet.utility-us-west-2a-kubernetesaltynai-com.id}", "${aws_subnet.utility-us-west-2b-kubernetesaltynai-com.id}", "${aws_subnet.utility-us-west-2c-kubernetesaltynai-com.id}"]

  health_check = {
    target              = "SSL:443"
    healthy_threshold   = 2
    unhealthy_threshold = 2
    interval            = 10
    timeout             = 5
  }

  cross_zone_load_balancing = false
  idle_timeout              = 300

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "api.kubernetesaltynai.com"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_iam_instance_profile" "masters-kubernetesaltynai-com" {
  name = "masters.kubernetesaltynai.com"
  role = "${aws_iam_role.masters-kubernetesaltynai-com.name}"
}

resource "aws_iam_instance_profile" "nodes-kubernetesaltynai-com" {
  name = "nodes.kubernetesaltynai.com"
  role = "${aws_iam_role.nodes-kubernetesaltynai-com.name}"
}

resource "aws_iam_role" "masters-kubernetesaltynai-com" {
  name               = "masters.kubernetesaltynai.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_masters.kubernetesaltynai.com_policy")}"
}

resource "aws_iam_role" "nodes-kubernetesaltynai-com" {
  name               = "nodes.kubernetesaltynai.com"
  assume_role_policy = "${file("${path.module}/data/aws_iam_role_nodes.kubernetesaltynai.com_policy")}"
}

resource "aws_iam_role_policy" "masters-kubernetesaltynai-com" {
  name   = "masters.kubernetesaltynai.com"
  role   = "${aws_iam_role.masters-kubernetesaltynai-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_masters.kubernetesaltynai.com_policy")}"
}

resource "aws_iam_role_policy" "nodes-kubernetesaltynai-com" {
  name   = "nodes.kubernetesaltynai.com"
  role   = "${aws_iam_role.nodes-kubernetesaltynai-com.name}"
  policy = "${file("${path.module}/data/aws_iam_role_policy_nodes.kubernetesaltynai.com_policy")}"
}

resource "aws_internet_gateway" "kubernetesaltynai-com" {
  vpc_id = "${aws_vpc.kubernetesaltynai-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "kubernetesaltynai.com"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_key_pair" "kubernetes-kubernetesaltynai-com-84b3a37bd99d47cb03e14fec032c8f07" {
  key_name   = "kubernetes.kubernetesaltynai.com-84:b3:a3:7b:d9:9d:47:cb:03:e1:4f:ec:03:2c:8f:07"
  public_key = "${file("${path.module}/data/aws_key_pair_kubernetes.kubernetesaltynai.com-84b3a37bd99d47cb03e14fec032c8f07_public_key")}"
}

resource "aws_launch_configuration" "master-us-west-2a-masters-kubernetesaltynai-com" {
  name_prefix                 = "master-us-west-2a.masters.kubernetesaltynai.com-"
  image_id                    = "ami-003f940ce6230056f"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesaltynai-com-84b3a37bd99d47cb03e14fec032c8f07.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesaltynai-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesaltynai-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-west-2a.masters.kubernetesaltynai.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-west-2b-masters-kubernetesaltynai-com" {
  name_prefix                 = "master-us-west-2b.masters.kubernetesaltynai.com-"
  image_id                    = "ami-003f940ce6230056f"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesaltynai-com-84b3a37bd99d47cb03e14fec032c8f07.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesaltynai-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesaltynai-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-west-2b.masters.kubernetesaltynai.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "master-us-west-2c-masters-kubernetesaltynai-com" {
  name_prefix                 = "master-us-west-2c.masters.kubernetesaltynai.com-"
  image_id                    = "ami-003f940ce6230056f"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesaltynai-com-84b3a37bd99d47cb03e14fec032c8f07.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.masters-kubernetesaltynai-com.id}"
  security_groups             = ["${aws_security_group.masters-kubernetesaltynai-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_master-us-west-2c.masters.kubernetesaltynai.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 64
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_launch_configuration" "nodes-kubernetesaltynai-com" {
  name_prefix                 = "nodes.kubernetesaltynai.com-"
  image_id                    = "ami-003f940ce6230056f"
  instance_type               = "t2.micro"
  key_name                    = "${aws_key_pair.kubernetes-kubernetesaltynai-com-84b3a37bd99d47cb03e14fec032c8f07.id}"
  iam_instance_profile        = "${aws_iam_instance_profile.nodes-kubernetesaltynai-com.id}"
  security_groups             = ["${aws_security_group.nodes-kubernetesaltynai-com.id}"]
  associate_public_ip_address = false
  user_data                   = "${file("${path.module}/data/aws_launch_configuration_nodes.kubernetesaltynai.com_user_data")}"

  root_block_device = {
    volume_type           = "gp2"
    volume_size           = 128
    delete_on_termination = true
  }

  lifecycle = {
    create_before_destroy = true
  }

  enable_monitoring = false
}

resource "aws_nat_gateway" "us-west-2a-kubernetesaltynai-com" {
  allocation_id = "${aws_eip.us-west-2a-kubernetesaltynai-com.id}"
  subnet_id     = "${aws_subnet.utility-us-west-2a-kubernetesaltynai-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "us-west-2a.kubernetesaltynai.com"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-west-2b-kubernetesaltynai-com" {
  allocation_id = "${aws_eip.us-west-2b-kubernetesaltynai-com.id}"
  subnet_id     = "${aws_subnet.utility-us-west-2b-kubernetesaltynai-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "us-west-2b.kubernetesaltynai.com"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_nat_gateway" "us-west-2c-kubernetesaltynai-com" {
  allocation_id = "${aws_eip.us-west-2c-kubernetesaltynai-com.id}"
  subnet_id     = "${aws_subnet.utility-us-west-2c-kubernetesaltynai-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "us-west-2c.kubernetesaltynai.com"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_route" "0-0-0-0--0" {
  route_table_id         = "${aws_route_table.kubernetesaltynai-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = "${aws_internet_gateway.kubernetesaltynai-com.id}"
}

resource "aws_route" "private-us-west-2a-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-west-2a-kubernetesaltynai-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-west-2a-kubernetesaltynai-com.id}"
}

resource "aws_route" "private-us-west-2b-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-west-2b-kubernetesaltynai-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-west-2b-kubernetesaltynai-com.id}"
}

resource "aws_route" "private-us-west-2c-0-0-0-0--0" {
  route_table_id         = "${aws_route_table.private-us-west-2c-kubernetesaltynai-com.id}"
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = "${aws_nat_gateway.us-west-2c-kubernetesaltynai-com.id}"
}

resource "aws_route53_record" "api-kubernetesaltynai-com" {
  name = "api.kubernetesaltynai.com"
  type = "A"

  alias = {
    name                   = "${aws_elb.api-kubernetesaltynai-com.dns_name}"
    zone_id                = "${aws_elb.api-kubernetesaltynai-com.zone_id}"
    evaluate_target_health = false
  }

  zone_id = "/hostedzone/Z0674074XHYEDQY765SV"
}

resource "aws_route53_zone_association" "Z0674074XHYEDQY765SV" {
  zone_id = "/hostedzone/Z0674074XHYEDQY765SV"
  vpc_id  = "${aws_vpc.kubernetesaltynai-com.id}"
}

resource "aws_route_table" "kubernetesaltynai-com" {
  vpc_id = "${aws_vpc.kubernetesaltynai-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "kubernetesaltynai.com"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
    "kubernetes.io/kops/role"                     = "public"
  }
}

resource "aws_route_table" "private-us-west-2a-kubernetesaltynai-com" {
  vpc_id = "${aws_vpc.kubernetesaltynai-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "private-us-west-2a.kubernetesaltynai.com"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
    "kubernetes.io/kops/role"                     = "private-us-west-2a"
  }
}

resource "aws_route_table" "private-us-west-2b-kubernetesaltynai-com" {
  vpc_id = "${aws_vpc.kubernetesaltynai-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "private-us-west-2b.kubernetesaltynai.com"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
    "kubernetes.io/kops/role"                     = "private-us-west-2b"
  }
}

resource "aws_route_table" "private-us-west-2c-kubernetesaltynai-com" {
  vpc_id = "${aws_vpc.kubernetesaltynai-com.id}"

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "private-us-west-2c.kubernetesaltynai.com"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
    "kubernetes.io/kops/role"                     = "private-us-west-2c"
  }
}

resource "aws_route_table_association" "private-us-west-2a-kubernetesaltynai-com" {
  subnet_id      = "${aws_subnet.us-west-2a-kubernetesaltynai-com.id}"
  route_table_id = "${aws_route_table.private-us-west-2a-kubernetesaltynai-com.id}"
}

resource "aws_route_table_association" "private-us-west-2b-kubernetesaltynai-com" {
  subnet_id      = "${aws_subnet.us-west-2b-kubernetesaltynai-com.id}"
  route_table_id = "${aws_route_table.private-us-west-2b-kubernetesaltynai-com.id}"
}

resource "aws_route_table_association" "private-us-west-2c-kubernetesaltynai-com" {
  subnet_id      = "${aws_subnet.us-west-2c-kubernetesaltynai-com.id}"
  route_table_id = "${aws_route_table.private-us-west-2c-kubernetesaltynai-com.id}"
}

resource "aws_route_table_association" "utility-us-west-2a-kubernetesaltynai-com" {
  subnet_id      = "${aws_subnet.utility-us-west-2a-kubernetesaltynai-com.id}"
  route_table_id = "${aws_route_table.kubernetesaltynai-com.id}"
}

resource "aws_route_table_association" "utility-us-west-2b-kubernetesaltynai-com" {
  subnet_id      = "${aws_subnet.utility-us-west-2b-kubernetesaltynai-com.id}"
  route_table_id = "${aws_route_table.kubernetesaltynai-com.id}"
}

resource "aws_route_table_association" "utility-us-west-2c-kubernetesaltynai-com" {
  subnet_id      = "${aws_subnet.utility-us-west-2c-kubernetesaltynai-com.id}"
  route_table_id = "${aws_route_table.kubernetesaltynai-com.id}"
}

resource "aws_security_group" "api-elb-kubernetesaltynai-com" {
  name        = "api-elb.kubernetesaltynai.com"
  vpc_id      = "${aws_vpc.kubernetesaltynai-com.id}"
  description = "Security group for api ELB"

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "api-elb.kubernetesaltynai.com"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_security_group" "masters-kubernetesaltynai-com" {
  name        = "masters.kubernetesaltynai.com"
  vpc_id      = "${aws_vpc.kubernetesaltynai-com.id}"
  description = "Security group for masters"

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "masters.kubernetesaltynai.com"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_security_group" "nodes-kubernetesaltynai-com" {
  name        = "nodes.kubernetesaltynai.com"
  vpc_id      = "${aws_vpc.kubernetesaltynai-com.id}"
  description = "Security group for nodes"

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "nodes.kubernetesaltynai.com"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_security_group_rule" "all-master-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesaltynai-com.id}"
  source_security_group_id = "${aws_security_group.masters-kubernetesaltynai-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-master-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetesaltynai-com.id}"
  source_security_group_id = "${aws_security_group.masters-kubernetesaltynai-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "all-node-to-node" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.nodes-kubernetesaltynai-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesaltynai-com.id}"
  from_port                = 0
  to_port                  = 0
  protocol                 = "-1"
}

resource "aws_security_group_rule" "api-elb-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.api-elb-kubernetesaltynai-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-kubernetesaltynai-com.id}"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "https-elb-to-master" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesaltynai-com.id}"
  source_security_group_id = "${aws_security_group.api-elb-kubernetesaltynai-com.id}"
  from_port                = 443
  to_port                  = 443
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "icmp-pmtu-api-elb-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.api-elb-kubernetesaltynai-com.id}"
  from_port         = 3
  to_port           = 4
  protocol          = "icmp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "master-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.masters-kubernetesaltynai-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-egress" {
  type              = "egress"
  security_group_id = "${aws_security_group.nodes-kubernetesaltynai-com.id}"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "node-to-master-tcp-1-2379" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesaltynai-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesaltynai-com.id}"
  from_port                = 1
  to_port                  = 2379
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-2382-4000" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesaltynai-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesaltynai-com.id}"
  from_port                = 2382
  to_port                  = 4000
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-tcp-4003-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesaltynai-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesaltynai-com.id}"
  from_port                = 4003
  to_port                  = 65535
  protocol                 = "tcp"
}

resource "aws_security_group_rule" "node-to-master-udp-1-65535" {
  type                     = "ingress"
  security_group_id        = "${aws_security_group.masters-kubernetesaltynai-com.id}"
  source_security_group_id = "${aws_security_group.nodes-kubernetesaltynai-com.id}"
  from_port                = 1
  to_port                  = 65535
  protocol                 = "udp"
}

resource "aws_security_group_rule" "ssh-external-to-master-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.masters-kubernetesaltynai-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_security_group_rule" "ssh-external-to-node-0-0-0-0--0" {
  type              = "ingress"
  security_group_id = "${aws_security_group.nodes-kubernetesaltynai-com.id}"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
}

resource "aws_subnet" "us-west-2a-kubernetesaltynai-com" {
  vpc_id            = "${aws_vpc.kubernetesaltynai-com.id}"
  cidr_block        = "172.20.32.0/19"
  availability_zone = "us-west-2a"

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "us-west-2a.kubernetesaltynai.com"
    SubnetType                                    = "Private"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

resource "aws_subnet" "us-west-2b-kubernetesaltynai-com" {
  vpc_id            = "${aws_vpc.kubernetesaltynai-com.id}"
  cidr_block        = "172.20.64.0/19"
  availability_zone = "us-west-2b"

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "us-west-2b.kubernetesaltynai.com"
    SubnetType                                    = "Private"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

resource "aws_subnet" "us-west-2c-kubernetesaltynai-com" {
  vpc_id            = "${aws_vpc.kubernetesaltynai-com.id}"
  cidr_block        = "172.20.96.0/19"
  availability_zone = "us-west-2c"

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "us-west-2c.kubernetesaltynai.com"
    SubnetType                                    = "Private"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
    "kubernetes.io/role/internal-elb"             = "1"
  }
}

resource "aws_subnet" "utility-us-west-2a-kubernetesaltynai-com" {
  vpc_id            = "${aws_vpc.kubernetesaltynai-com.id}"
  cidr_block        = "172.20.0.0/22"
  availability_zone = "us-west-2a"

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "utility-us-west-2a.kubernetesaltynai.com"
    SubnetType                                    = "Utility"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
    "kubernetes.io/role/elb"                      = "1"
  }
}

resource "aws_subnet" "utility-us-west-2b-kubernetesaltynai-com" {
  vpc_id            = "${aws_vpc.kubernetesaltynai-com.id}"
  cidr_block        = "172.20.4.0/22"
  availability_zone = "us-west-2b"

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "utility-us-west-2b.kubernetesaltynai.com"
    SubnetType                                    = "Utility"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
    "kubernetes.io/role/elb"                      = "1"
  }
}

resource "aws_subnet" "utility-us-west-2c-kubernetesaltynai-com" {
  vpc_id            = "${aws_vpc.kubernetesaltynai-com.id}"
  cidr_block        = "172.20.8.0/22"
  availability_zone = "us-west-2c"

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "utility-us-west-2c.kubernetesaltynai.com"
    SubnetType                                    = "Utility"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
    "kubernetes.io/role/elb"                      = "1"
  }
}

resource "aws_vpc" "kubernetesaltynai-com" {
  cidr_block           = "172.20.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "kubernetesaltynai.com"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options" "kubernetesaltynai-com" {
  domain_name         = "us-west-2.compute.internal"
  domain_name_servers = ["AmazonProvidedDNS"]

  tags = {
    KubernetesCluster                             = "kubernetesaltynai.com"
    Name                                          = "kubernetesaltynai.com"
    "kubernetes.io/cluster/kubernetesaltynai.com" = "owned"
  }
}

resource "aws_vpc_dhcp_options_association" "kubernetesaltynai-com" {
  vpc_id          = "${aws_vpc.kubernetesaltynai-com.id}"
  dhcp_options_id = "${aws_vpc_dhcp_options.kubernetesaltynai-com.id}"
}

terraform = {
  required_version = ">= 0.9.3"
}
