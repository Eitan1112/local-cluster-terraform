resource "null_resource" "cluster-start" {

  provisioner "local-exec" {
    command = join(" ", ["minikube", "start", "--cpus", var.cpus, "--memory", var.memory, "--nodes", var.nodes])
  }

  provisioner "local-exec" {
    when    = destroy
    command = join(" ", ["minikube", "delete"])
  }

}