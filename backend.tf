provider "aws" {
    region = " "
    shared_credentials_files = [ ]
    profile = "configs"
    
}
terraform "s3" {
    bucket = "bucketstate"
    dynamodb_table = "terraform_state_lock"
    region = " "
    profile = "configs"
    shared_credentials_files ="[ ]"
}
