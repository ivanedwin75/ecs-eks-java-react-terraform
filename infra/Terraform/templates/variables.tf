variable profile {
    default = "pragma-feedback-production"
}
variable region {
    default = "us-east-1"
}
variable region2 {
    default = "us-east-2"
}
variable nombreDb {
    default = "pragmaticoComment"
}
variable hash_key {
    default = "userEmail"
}
variable range_key {
  default = "commentDate"
}
variable "info_tags" {
  default     = { Environment = "Production", Project = "Travel Journal", Owner = "david.tolosa@pragma.com.co", 
  Department = "Talent Pool"}
  description = "resource tags"
  type        = map(string)
}
variable S3Bnombre {
    default = "s3-traveljournal-bucket"
}
variable s3_origin_id {
    default= "access-identity-traveljournal.s3.amazonaws.com" 
}
variable origin_access_identity {
  default = "access-identity-traveljournal.s3.amazonaws.com"
}
variable cloudfrontName {
  default = "cf-traveljournal"
}
variable "cog_userpool_nombre" {
  default = "cognito-traveljournal"
}
variable stage {
  default = "produccion"
}
variable scope_name {
  default = "cv"
}
variable scope_secret{
  default = "asdf"
}
variable provider_client_id {
  default = "1069225640599-i9it7vad1nn0uhda6t30nlbfua1b4pok.apps.googleusercontent.com"
}
variable provider_client_secret {
  default = "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"
}