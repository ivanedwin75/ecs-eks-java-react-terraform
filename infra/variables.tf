variable region {
    default="us-east-1"
}
variable profile {
    default = "desarrollo-mapadecrecimiento"
}
variable "environment"{
  type = string
  default = "Development"
}
variable "projects"{
  type = string
  default = "mapa-de-crecimiento"
}
variable "tagss"{
  type        = map(string)
  description = "A map of tags to apply to all resources."
  default = {
    Environment = "Development"
    Owner       = "talent-solutions@pragma.com.co"
    Project     = "Mapa de crecimiento"
    Department  = "TalentSolutions"
    Security    = "Do not allow deletion"
  }
}

variable "public_subnet_cidrs" {
 type        = list(string)
 description = "Public Subnet CIDR values"
 default     = ["10.0.103.0/24", "10.0.104.0/24"]
}
variable "private_subnet_cidrs" {
 type        = list(string)
 description = "Private Subnet CIDR values"
 default     = ["10.0.101.0/24", "10.0.102.0/24"]
}
variable "azs" {
 type        = list(string)
 description = "Availability Zones"
 default     = ["us-east-1a", "us-east-1b"]
}
variable "subnet_private_id" {
 type        = list(string)
 description = "Subnet-Private-mapa-de-crecimiento"
 default     =  ["subnet-0a99df9542bf1f876", "subnet-0aff4a61784cde71a"]
}
variable "subnet_private_id_a" {
 type        = string
 description = "Subnet-Private-mapa-de-crecimiento"
 default     =  "subnet-0a99df9542bf1f876"
}
variable "subnet_private_id_b" {
 type        = string
 description = "Subnet-Private-mapa-de-crecimiento"
 default     =  "subnet-0aff4a61784cde71a"
}
variable "subnet_public_id" {
 type        = list(string)
 description = "Subnet-Public-mapa-de-crecimiento"
 default     = ["subnet-09873cc668c420b19", "subnet-0c1b0b54197176c1d"]
}
variable "sg_id" {
 type        = list(string)
 description = "sg_Node_mapa-de-crecimiento"
 #default     = ["sg-01bda60374dbac0fe", "sg-0bfd1525450dcbffe","sg-0399e2cdfe359e243"]
 default     = ["sg-01bda60374dbac0fe", "sg-0bfd1525450dcbffe"]
}

##### Variables de entorno de assesment

# variable "/assessment/DRIVER_DATABASE"{
#   type      = string
#   default   = "/assessment/DRIVER_DATABASE"
# }
# variable "/assessment/EJEMPLO"{
#   type      = string
#   default   = "/assessment/EJEMPLO"
# }
# variable "/assessment/EXPIRA_DAYS_SECURITY"{
#   type      = string
#   default   = "/assessment/EXPIRA_DAYS_SECURITY"
# }
# variable "/assessment/H2_ENABLE"{
#   type      = string
#   default   = "/assessment/H2_ENABLE"
# }
# variable "/assessment/H2_PATH"{
#   type      = string
#   default   = "/assessment/H2_PATH"
# }
# variable "/assessment/H2_WEBALL"{
#   type      = string
#   default   = "/assessment/H2_WEBALL"
# }
# variable "/assessment/HIBERNATE_DDL"{
#   type      = string
#   default   = "/assessment/HIBERNATE_DDL"
# }
# variable "/assessment/HIBERNATE_DIALECT"{
#   type      = string
#   default   = "/assessment/HIBERNATE_DIALECT"
# }
# variable "/assessment/JPA_DATABASE"{
#   type      = string
#   default   = "/assessment/JPA_DATABASE"
# }
# variable "/assessment/JPA_SHOW"{
#   type      = string
#   default   = "/assessment/JPA_SHOW"
# }
# variable "/assessment/JPA_SHOWSQL"{
#   type      = string
#   default   = "/assessment/JPA_SHOWSQL"
# }
# variable "/assessment/JPA_SSL"{
#   type      = string
#   default   = "/assessment/JPA_SSL"
# }

# variable "/assessment/KEYSECRET_SECURITY"{
#   type      = string
#   default   = "/assessment/KEYSECRET_SECURITY"
# }
# variable "/assessment/MESSAGE_BASENAME"{
#   type      = string
#   default   = "/assessment/MESSAGE_BASENAME"
# }
# variable "/assessment/MESSAGE_ENCODING"{
#   type      = string
#   default   = "/assessment/MESSAGE_ENCODING"
# }
# variable "/assessment/PASSWORD_DATABASE"{
#   type      = string
#   default   = "/assessment/PASSWORD_DATABASE"
# }
# variable "/assessment/PREFIX_SECURITY"{
#   type      = string
#   default   = "/assessment/PREFIX_SECURITY"
# }
# variable "/assessment/PROFILE"{
#   type      = string
#   default   = "/assessment/PROFILE"
# }
# variable "/assessment/URL_CHAPTERS_MODULE_APPSCRIPT"{
#   type      = string
#   default   = "/assessment/URL_CHAPTERS_MODULE_APPSCRIPT"
# }
# variable "/assessment/URL_DATABASE"{
#   type      = string
#   default   = "/assessment/URL_DATABASE"
# }
# variable "/assessment/URL_DUPLICATE_DOCUMENT"{
#   type      = string
#   default   = "/assessment/URL_DUPLICATE_DOCUMENT"
# }
# variable "/assessment/URL_INFO_FOLDERS"{
#   type      = string
#   default   = "/assessment/URL_INFO_FOLDERS"
# }
# variable "/assessment/URL_LAMBDA_TOKEN"{
#   type      = string
#   default   = "/assessment/URL_LAMBDA_TOKEN"
# }
# variable "/assessment/URL_MODULE_API_BITACORA"{
#   type      = string
#   default   = "/assessment/URL_MODULE_API_BITACORA"
# }
# variable "/assessment/URL_MODULE_APPSCRIPT"{
#   type      = string
#   default   = "/assessment/URL_MODULE_APPSCRIPT"
# }
# variable "/assessment/URL_MODULE_APPSCRIPT_GSHEET_TO_PDF"{
#   type      = string
#   default   = "/assessment/URL_MODULE_APPSCRIPT_GSHEET_TO_PDF"
# }
# variable "/assessment/URL_MODULE_LANGUAGE"{
#   type      = string
#   default   = "/assessment/URL_MODULE_LANGUAGE"
# }
# variable "/assessment/URL_MODULE_MICROGROWTHMODEL"{
#   type      = string
#   default   = "/assessment/URL_MODULE_MICROGROWTHMODEL"
# }
# variable "/assessment/URL_MODULE_PERFIL"{
#   type      = string
#   default   = "/assessment/URL_MODULE_PERFIL"
# }
# variable "/assessment/URL_MODULE_PERFIL_USUARIOS"{
#   type      = string
#   default   = "/assessment/URL_MODULE_PERFIL_USUARIOS"
# }
# variable "/assessment/URL_MODULE_SENIORITY"{
#   type      = string
#   default   = "/assessment/URL_MODULE_SENIORITY"
# }
# variable "/assessment/URL_MODULE_USER_EMAIL_IMAGEN"{
#   type      = string
#   default   = "/assessment/URL_MODULE_USER_EMAIL_IMAGEN"
# }
# variable "/assessment/URL_MODULO_SENIORITY_TIMES"{
#   type      = string
#   default   = "/assessment/URL_MODULO_SENIORITY_TIMES"
# }
# variable "/assessment/URL_SALARY_SHEET_CHAPTER"{
#   type      = string
#   default   = "/assessment/URL_SALARY_SHEET_CHAPTER"
# }
# variable "/assessment/URL_SHEET_CHAPTER"{
#   type      = string
#   default   = "/assessment/URL_SHEET_CHAPTER"
# }
# variable "/assessment/URL_UPDATE_USER_APPSCRIPT"{
#   type      = string
#   default   = "/assessment/URL_UPDATE_USER_APPSCRIPT"
# }
# variable "/assessment/URL_USER_CHAPTER_APPSCRIPT"{
#   type      = string
#   default   = "/assessment/URL_USER_CHAPTER_APPSCRIPT"
# }
# variable "/assessment/USER_DATABASE"{
#   type      = string
#   default   = "/assessment/USER_DATABASE"
# }
# variable "/assessment/VARIABLES_DEPLOY_ENVIROMENT"{
#   type      = string
#   default   = "/assessment/VARIABLES_DEPLOY_ENVIROMENT"
# }
# variable "/assessment/VARIABLES_GENERIC_USER_EMAIL"{
#   type      = string
#   default   = "/assessment/VARIABLES_GENERIC_USER_EMAIL"
# }
# variable "/assessment/VARIABLES_PLANTILLA_MEDALLA_SENIORITY"{
#   type      = string
#   default   = "/assessment/VARIABLES_PLANTILLA_MEDALLA_SENIORITY"
# }
# variable "/assessment/VARIABLES_PLANTILLA_SENIORITY_LEVEL"{
#   type      = string
#   default   = "/assessment/VARIABLES_PLANTILLA_SENIORITY_LEVEL"
# }
# variable "/assessment/VARIABLES_PLANTILLA_TEXT_SENIORITY"{
#   type      = string
#   default   = "/assessment/VARIABLES_PLANTILLA_TEXT_SENIORITY"
# }
#### variables de entorno de growth

# variable "PROFILE_growth"{
#   type      = string
#   default   = "PROFILE_growth"
# }
# variable "PLATFORM_growth"{
#   type      = string
#   default   = "PLATFORM_growth"
# }
# variable "PLATFORM"{
#   type      = string
#   default   = "PLATFORM"
# }
# variable "URL_DATABASE_growth"{
#   type      = string
#   default   = "URL_DATABASE_growth"
# }
# variable "USER_DATABASE_growth"{
#   type      = string
#   default   = "USER_DATABASE_growth"
# }
# variable "PASSWORD_DATABASE_growth"{
#   type      = string
#   default   = "PASSWORD_DATABASE_growth"
# }
# variable "DRIVER_DATABASE_growth"{
#   type      = string
#   default   = "DRIVER_DATABASE_growth"
# }
# variable "H2_ENABLE_growth"{
#   type      = string
#   default   = "H2_ENABLE_growth"
# }
# variable "H2_PATH_growth"{
#   type      = string
#   default   = "H2_PATH_growth"
# }
# variable "H2_WEBALL_growth"{
#   type      = string
#   default   = "H2_WEBALL_growth"
# }
# variable "JPA_SHOW_growth"{
#   type      = string
#   default   = "JPA_SHOW_growth"
# }
# variable "HIBERNATE_DIALECT_growth"{
#   type      = string
#   default   = "HIBERNATE_DIALECT_growth"
# }
# variable "HIBERNATE_DDL_growth"{
#   type      = string
#   default   = "HIBERNATE_DDL_growth"
# }
# variable "MESSAGE_BASENAME_growth"{
#   type      = string
#   default   = "MESSAGE_BASENAME_growth"
# }
# variable "MESSAGE_ENCODING_growth"{
#   type      = string
#   default   = "MESSAGE_ENCODING_growth"
# }
# variable "KEYSECRET_SECURITY_growth"{
#   type      = string
#   default   = "KEYSECRET_SECURITY_growth"
# }
# variable "EXPIRA_DAYS_SECURITY_growth"{
#   type      = string
#   default   = "EXPIRA_DAYS_SECURITY_growth"
# }
# variable "PREFIX_SECURITY_growth"{
#   type      = string
#   default   = "PREFIX_SECURITY_growth"
# }
# variable "URL_MODULE_PERFIL_growth"{
#   type      = string
#   default   = "URL_MODULE_PERFIL_growth"
# }
# variable "API_KEY_growth"{
#   type      = string
#   default   = "API_KEY_growth"
# } 
# variable "API_KEY"{
#   type      = string
#   default   = "API_KEY"
# } 
# variable "URL_CHAPTERS_MODULE_APPSCRIPT_growth"{
#   type      = string
#   default   = "URL_CHAPTERS_MODULE_APPSCRIPT_growth"
# }
# variable "URL_USER_CHAPTER_APPSCRIPT_growth"{
#   type      = string
#   default   = "URL_USER_CHAPTER_APPSCRIPT_growth"
# }  
# variable "VARIABLE_AREAS"{
#   type      = string
#   default   = "VARIABLE_AREAS"
# }
# ############## variable scheduling 
# variable "DB_CONEXION_agenadmiento"{
#   type      = string
#   default   = "DB_CONEXION_agenadmiento"
# }
# variable "DB_USER_agenadmiento"{
#   type      = string
#   default   = "DB_USER_agenadmiento"
# }
# variable "DB_PASSWORD_agenadmiento"{
#   type      = string
#   default   = "DB_PASSWORD_agenadmiento"
# }
# variable "CLIENTE_FEING_agenadmiento"{
#   type      = string
#   default   = "CLIENTE_FEING_agenadmiento"
# }
# ####################################################

# variable "ENABLED_GRAPHQL_marca"{
#   type      = string
#   default   = "ENABLED_GRAPHQL_marca"
# }
# variable "DATASOURCE_TYPE_marca"{
#   type      = string
#   default   = "DATASOURCE_TYPE_marca"
# }
# variable "TOMCAT_MAX_ACTIVE_marca"{
#   type      = string
#   default   = "TOMCAT_MAX_ACTIVE_marca"
# }
# variable "TOMCAT_MIN_IDLE_marca"{
#   type      = string
#   default   = "TOMCAT_MIN_IDLE_marca"
# }
# variable "JPA_SHOW_SQL_marca"{
#   type      = string
#   default   = "JPA_SHOW_SQL_marca"
# }
# variable "URL_DATABASE_marca"{
#   type      = string
#   default   = "URL_DATABASE_marca"
# }
# variable "USER_DATABASE_marca"{
#   type      = string
#   default   = "USER_DATABASE_marca"
# }
# variable "PASSWORD_DATABASE_marca"{
#   type      = string
#   default   = "PASSWORD_DATABASE_marca"
# }
# variable "DATASOURCE_DRIVER_marca"{
#   type      = string
#   default   = "DATASOURCE_DRIVER_marca"
# }
# variable "DATASOURCE_DATABASE_PLTATFORM_marca"{
#   type      = string
#   default   = "DATASOURCE_DATABASE_PLTATFORM_marca"
# }
# variable "JPA_HIBERNATE_DDLAUTO_marca"{
#   type      = string
#   default   = "JPA_HIBERNATE_DDLAUTO_marca"
# }

# #######################################
# variable "USER_NAME_administracion"{
#   type      = string
#   default   = "USER_NAME_administracion"
# }
# variable "DB_CONEXION_administracion"{
#   type      = string
#   default   = "DB_CONEXION_administracion"
# }
# variable "USER_PASSWORD_administracion"{
#   type      = string
#   default   = "USER_PASSWORD_administracion"
# }
# variable "PROFILE_administracion"{
#   type      = string
#   default   = "PROFILE_administracion"
# }
