resource "aws_lb_target_group" "app1_tg" { 
    name = "app1-target-group"
    port = 80
    protocol = "HTTP"
    vpc_id = aws_vpc.app1.id
    target_type = "instance"

    health_check { 
        enabled = true
        interval = 30 
        path = "/"
        protocol = "HTTP"
        healthy_threshold = 5
        unhealthy_threshold = 2
        timeout = 5
        matcher = "200"
    }

    tags = { 
        Name = "app1-target-group"
        Service = "application1"
        Owner = "Chewbacca"
        Planet = "Musfar"
    }
}