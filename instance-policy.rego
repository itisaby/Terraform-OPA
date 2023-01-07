package main

import data.aws.ec2

disallow_instance_types {
  not allowed_instance_types[instance_type]
}

allowed_instance_types = {
  "t2.micro": true,
  "t2.small": true,
}
