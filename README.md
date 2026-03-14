# provider is a plugin that terraform manage and external api
# Terraform state file store information about managed infrastructure .
terraform refresh command will check the latest state of your infrastructure and update state file accordingly.
 cidr_ipv4   = "${aws_eip.lb.public_ip}/32" for using cross-reference attribute 
 output values make information about your infrastructure available on command line output "public-ip" {
  value = "https://${aws_eip.lb.public_ip}:8080"}
  terraform input variables are used to pass certain values from outside of configuration.
  set env variables in terraform : export TF_VAR_instance_type=m5.large
   echo $TF_VAR_instance_type
   if i want this instance type value so command is - terraform plan -var="instance_type=m5.large"
   Data type refers to the type of value .
   Data Sources allow terraform to use and fetch informantion defined outside the terraform.
   terraform fmt command format terraform configuration files content so that it matches the canoical format and style.
   Recreating the resource : terraform apply -replace="aws_instance.myec2"
   Terraform graph refers to the visual representation of the dependency relationship b/w resources that you are defined in terrform configuartion.
   for_each is used to create and manage multiple instance of resource, based on the items in a map or set of strings.
   # provisioner are used to execute scripts on a local or remote machine as a part of resource creation or destruction.
   local exec executes command locally on machine on_failure = continue , when = destroy
   remote exec command invoke scripts or directly run on remote server
    Connects to the newly created resource via SSH or WinRM to run scripts
   
   
   
  
  
