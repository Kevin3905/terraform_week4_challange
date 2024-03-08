resource "local_file" "feature_toggles" {

  for_each = var.feature_toggles
  filename = "${path.module}/${each.key}-feature-toggles.txt"
  content  = "${each.key}: ${each.value}"

}

resource "local_file" "resource_a" {
  filename = "${path.module}/a.txt"
  content  = "Resource A depends on resource B"
  
}

resource "local_file" "resource_b" {
  filename = "${path.module}/b.txt"
  content  = "Resource A depends on resource B"
  depends_on = [ "local_file.resource_a" ]
}
