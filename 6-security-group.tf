resource "aws_security_group" "app1_sg1_server" { 
    name        = "app1_sg1_server"
    description = "Aapp1_sg1_server"
    vpc_id      = aws_vpc.app1.id

    ingress {
        description      = "MyHomePage"
        from_port        = 80
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    ingress {
        description      = "SSH"
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    ingress {
        description      = "EvilBox"
        from_port        = 3389
        to_port          = 3389
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = { 
        Name = "app1_sg1_server"
        Service = "application1"
        Owner = "Chewbacca"
        Planet = "Musfar"
    }   
}

resource "aws_security_group" "app1_sg2_lb1" { 
    name        = "app1_sg2_lb1"
    description = "app1_sg2_lb1"
    vpc_id      = aws_vpc.app1.id

    ingress {
        description      = "LBExternal"
        from_port        = 80
        to_port          = 80
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    ingress {
        description      = "LBExternalSecure"
        from_port        = 443
        to_port          = 443
        protocol         = "tcp"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
    }

    tags = { 
        Name = "app1_sg2_lb1"
        Service = "application1"
        Owner = "Chewbacca"
        Planet = "Musfar"
    }   
}