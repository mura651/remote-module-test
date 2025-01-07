#Webサブネット
resource "aws_subnet" "web" {
    vpc_id = var.vpc_id
    tags = {
        Name = var.name
    }
}

#APIサブネット-01
resource "aws_subnet" "api_1" {
    vpc_id = var.vpc_id
    tags = {
        Name = var.name
    }
}

#APIサブネット-02
resource "aws_subnet" "api_2" {
    vpc_id = var.vpc_id
    tags = {
        Name = var.name
    }
}

#DBサブネット-01
resource "aws_subnet" "db_1" {
    vpc_id = var.vpc_id
    tags = {
        Name = var.name
    }
}


#DBサブネット-02
resource "aws_subnet" "db_2" {
    vpc_id = var.vpc_id
    tags = {
        Name = var.name
    }
}

#ELBサブネット-01
resource "aws_subnet" "elb_1" {
    vpc_id = var.vpc_id
    tags = {
        Name = var.name
    }
}


#ELBサブネット-02
resource "aws_subnet" "elb_2" {
    vpc_id = var.vpc_id
    tags = {
        Name = var.name
    }
}

