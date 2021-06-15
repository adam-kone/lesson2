
//resource "null_resource" "websvrhttpd2" {
//  depends_on = [oci_core_instance.webserver]
//  provisioner "remote-exec" {
//    connection {
//      type ="ssh"
//      user = "opc"
//      host = data.oci_core_vnic.vnic.public_ip_address
//      private_key = file(var.private_key_path)
//      script_path = "/home/opc/myssh.sh"
//      agent= false
//      timeout = "10m"
//    }
//    inline= ["echo'== 1. Installing HTTPD package with yum'",
//      "sudo -u root yum -y -q install httpd",
//      "echo '==2. creating /var/www/html/index.html'",
//      "sudo /bin/su -c \"echo 'welcome here!' >/var/www/html/index.html
//
//      "echo '==3. disabling firewall and starting HTTPD service'"'
//      "sudo -u root service firewalld stop",
//      "sudo -u root service httpd start"
//    ]
//  }
//}