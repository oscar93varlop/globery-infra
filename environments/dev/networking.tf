module "networking" {
    count         = 1   
    source        = "../../modules/networking"
    # some_variable = some_value
}