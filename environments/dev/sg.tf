module "sg-runner" {
  count  = 1
  source = "../../modules/sg"
  name_sg = var.name_sg_runner
  vpc_id = module.networking[0].vpc_id
}