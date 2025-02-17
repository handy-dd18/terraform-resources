# resource "aws_vpc" "example_vpc" {
#   cidr_block = "10.30.0.0/16"
# }

# resource "aws_subnet" "example_subnet" {
#   vpc_id            = aws_vpc.example_vpc.id
#   cidr_block        = "10.30.1.0/24"
#   availability_zone = "ap-northeast-1a"
# }

# resource "aws_route_table" "example_rt" {
#   vpc_id = aws_vpc.example_vpc.id

#   route {
#     cidr_block = "0.0.0.0/0"
#     gateway_id = var.igw_id
#   }
# }

# resource "aws_route_table_association" "example_rta" {
#   route_table_id = aws_route_table.example_rt.id
#   subnet_id      = aws_subnet.example_subnet.id
# }
