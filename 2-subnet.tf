# Public subnets
resource "aws_subnet" "public-ap-northeast-1a" {
    vpc_id                  = aws_vpc.app1.id
    cidr_block              = "10.32.1.0/24"
    availability_zone       = "ap-northeast-1a"
    map_public_ip_on_launch = true

    tags = { 
        Name    = "public-ap-northeast-1a"
        Service = "application1"
        Owner   = "Chewbacca"
        Planet  = "Musfar"
    }
}

resource "aws_subnet" "public-ap-northeast-1c" {
    vpc_id                  = aws_vpc.app1.id
    cidr_block              = "10.32.2.0/24"
    availability_zone       = "ap-northeast-1c"
    map_public_ip_on_launch = true

    tags = { 
        Name    = "public-ap-northeast-1c"
        Service = "application1"
        Owner   = "Chewbacca"
        Planet  = "Musfar"
    }
}

resource "aws_subnet" "public-ap-northeast-1d" {
    vpc_id                  = aws_vpc.app1.id
    cidr_block              = "10.32.3.0/24"
    availability_zone       = "ap-northeast-1d"
    map_public_ip_on_launch = true

    tags = { 
        Name    = "public-ap-northeast-1d"
        Service = "application1"
        Owner   = "Chewbacca"
        Planet  = "Musfar"
    }
}

# Private subnets
resource "aws_subnet" "private-ap-northeast-1a" {
vpc_id                  = aws_vpc.app1.id
    cidr_block          = "10.32.11.0/24"
    availability_zone   = "ap-northeast-1a"

    tags = { 
        Name    = "private-ap-northeast-1a"
        Service = "application1"
        Owner   = "Chewbacca"
        Planet  = "Musfar"
    }
}

resource "aws_subnet" "private-ap-northeast-1c" {
vpc_id                  = aws_vpc.app1.id
    cidr_block          = "10.32.21.0/24"
    availability_zone   = "ap-northeast-1c"

    tags = { 
        Name    = "private-ap-northeast-1c"
        Service = "application1"
        Owner   = "Chewbacca"
        Planet  = "Musfar"
    }
}

resource "aws_subnet" "private-ap-northeast-1d" {
vpc_id                  = aws_vpc.app1.id
    cidr_block          = "10.32.31.0/24"
    availability_zone   = "ap-northeast-1d"

    tags = { 
        Name    = "private-ap-northeast-1d"
        Service = "application1"
        Owner   = "Chewbacca"
        Planet  = "Musfar"
    }
}