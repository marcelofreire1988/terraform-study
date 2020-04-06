output "ip_address" {
    # referencia para o valor criado pelo aws_instance(web) e apresenta o ip
    value = "${aws_instance.web[*].public_ip}"
}

