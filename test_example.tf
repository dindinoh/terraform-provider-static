provider "static_server" {}	

resource "static_server" "server1" {
	address = "test.server.com"
	connection {
		type = "ssh"
		user = "username"
		key_file = "key"
		agent = "false"
	}
	provisioner "remote-exec" {
		inline = [
			"echo on first"
		]
	}
}

resource "static_server" "server2" {
	address = "test.server.com"
	connection {
		type = "ssh"
		user = "username"
		key_file = "key"
		agent = "false"
	}
	provisioner "remote-exec" {
		inline = [
			"echo on second"
		]
	}
}
