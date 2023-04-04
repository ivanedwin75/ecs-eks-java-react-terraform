resource "aws_ssm_parameter" "DRIVER_DATABASE" {
  name  = "/assessment/DRIVER_DATABASE"
  type  = "String"
  value = "com.mysql.cj.jdbc.Driver"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "EJEMPLO" {
  name  = "/assessment/EJEMPLO"
  type  = "String"
  value = "Prueba"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "EXPIRA_DAYS_SECURITY" {
  name  = "/assessment/EXPIRA_DAYS_SECURITY"
  type  = "String"
  value = "14"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "H2_ENABLE" {
  name  = "/assessment/H2_ENABLE"
  type  = "String"
  value = "false"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "H2_PATH" {
  name  = "/assessment/H2_PATH"
  type  = "String"
  value = "/h2"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "H2_WEBALL" {
  name  = "/assessment/H2_WEBALL"
  type  = "String"
  value = "true"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "HIBERNATE_DDL" {
  name  = "/assessment/HIBERNATE_DDL"
  type  = "String"
  value = "update"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "HIBERNATE_DIALECT" {
  name  = "/assessment/HIBERNATE_DIALECT"
  type  = "String"
  value = "org.hibernate.dialect.MySQL55Dialect"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "JPA_DATABASE" {
  name  = "/assessment/JPA_DATABASE"
  type  = "String"
  value = "mysql"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "JPA_SHOW" {
  name  = "/assessment/JPA_SHOW"
  type  = "String"
  value = "true"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "JPA_SHOWSQL" {
  name  = "/assessment/JPA_SHOWSQL"
  type  = "String"
  value = "true"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "JPA_SSL" {
  name  = "/assessment/JPA_SSL"
  type  = "String"
  value = "false"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "KEYSECRET_SECURITY" {
  name  = "/assessment/KEYSECRET_SECURITY"
  type  = "String"
  value = "SjLNct19ONkWJIw4OW4EFz8V8KUNLiQ9CU_We2nUsLg"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "MESSAGE_BASENAME" {
  name  = "/assessment/MESSAGE_BASENAME"
  type  = "String"
  value = "lang/messages"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "MESSAGE_ENCODING" {
  name  = "/assessment/MESSAGE_ENCODING"
  type  = "String"
  value = "UTF-8"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "PASSWORD_DATABASE" {
  name  = "/assessment/PASSWORD_DATABASE"
  type  = "String"
  value = "assessment-dev"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "PREFIX_SECURITY" {
  name  = "/assessment/PREFIX_SECURITY"
  type  = "String"
  value = "Bearer"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "PROFILE" {
  name  = "/assessment/PROFILE"
  type  = "String"
  value = "dev"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "URL_CHAPTERS_MODULE_APPSCRIPT" {
  name  = "/assessment/URL_CHAPTERS_MODULE_APPSCRIPT"
  type  = "String"
  value = "https://script.google.com/macros/s/AKfycbxwcR8onTBL1z7ro_IYx46V3cQpuArz1RjOzzZyve_AnRXSJ9aYo-7BQeZMsForKuRJ/exec"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "URL_DATABASE" {
  name  = "/assessment/URL_DATABASE"
  type  = "String"
  value = "jdbc:mysql://mapa-de-crecimiento-devdb.cbnohh3sqcmw.us-east-1.rds.amazonaws.com:3306/assessment_dev?useSSL=false&zeroDateTimeBehavior=CONVERT_TO_NULL&useLegacyDatetimeCode=false&serverTimezone=UTC"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "URL_DUPLICATE_DOCUMENT" {
  name  = "/assessment/URL_DUPLICATE_DOCUMENT"
  type  = "String"
  value = "https://script.google.com/macros/s/AKfycbz-uP1KEBAbB0ynuyIk_LFbHgYF65QFY9TahoB8tZZNtg8Pefbgtohho7-0Y30iJrtlVA/exec"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "URL_INFO_FOLDERS" {
  name  = "/assessment/URL_INFO_FOLDERS"
  type  = "String"
  value = "https://script.google.com/macros/s/AKfycbwuyO0W_w-kGaaMcpfrKfqUMU6kFVULPSj_hQJQR5w-6QLD_Z6wskJYXNzNQQF62pBw/exec"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "URL_LAMBDA_TOKEN" {
  name  = "/assessment/URL_LAMBDA_TOKEN"
  type  = "String"
  value = "https://ypc8axpv2c.execute-api.us-east-1.amazonaws.com"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "URL_MODULE_API_BITACORA" {
  name  = "/assessment/URL_MODULE_API_BITACORA"
  type  = "String"
  value = "https://s6z0b43euf.execute-api.us-east-1.amazonaws.com/dev/pragma/correo/pragma-vacaciones-correo/api/v1"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "URL_MODULE_APPSCRIPT" {
  name  = "/assessment/URL_MODULE_APPSCRIPT"
  type  = "String"
  value = "https://script.google.com/macros/s/AKfycbwaR-I82y3Rm3BPC0hlx66l5SLABDy_GE2526E27JpePyVBAyDzDvwmaooygp9SN2en6w/exec"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "URL_MODULE_APPSCRIPT_GSHEET_TO_PDF" {
  name  = "/assessment/URL_MODULE_APPSCRIPT_GSHEET_TO_PDF"
  type  = "String"
  value = "https://script.google.com/macros/s/AKfycby1OfQIyNHnRZp-gElo4OMQhSUTsDChKBB8DhhaHxOkUdEvviDAZYBrxNGJ5tzF1ppT/exec"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "URL_MODULE_LANGUAGE" {
  name  = "/assessment/URL_MODULE_LANGUAGE"
  type  = "String"
  value = "https://ubmduoo9c4.execute-api.us-east-1.amazonaws.com/pdn/pragma/perfil/idiomas/"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "URL_MODULE_MICROGROWTHMODEL" {
  name  = "/assessment/URL_MODULE_MICROGROWTHMODEL"
  type  = "String"
  value = "https://xx320wbhm2.execute-api.us-east-1.amazonaws.com/dev/growth-matrix/"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "URL_MODULE_PERFIL" {
  name  = "/assessment/URL_MODULE_PERFIL"
  type  = "String"
  value = "https://s6z0b43euf.execute-api.us-east-1.amazonaws.com/dev/pragma/perfil/"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "URL_MODULE_PERFIL_USUARIOS" {
  name  = "/assessment/URL_MODULE_PERFIL_USUARIOS"
  type  = "String"
  value = "https://ubmduoo9c4.execute-api.us-east-1.amazonaws.com/pdn/pragma/perfil/usuarios/reducido"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "URL_MODULE_SENIORITY" {
  name  = "/assessment/URL_MODULE_SENIORITY" 
  type  = "String"
  value = "https://xx320wbhm2.execute-api.us-east-1.amazonaws.com/dev/growth-matrix/seniority"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "URL_MODULE_USER_EMAIL_IMAGEN" {
  name  = "/assessment/URL_MODULE_USER_EMAIL_IMAGEN"
  type  = "String"
  value = "https://script.google.com/macros/s/AKfycbyh-Lcd0a3hU0CffYh15oT_w1v62VkdJN7xcYvphwJZxTqft07R8qsBMurIC0pVFnmHRQ/exec"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "URL_MODULO_SENIORITY_TIMES" {
  name  = "/assessment/URL_MODULO_SENIORITY_TIMES"
  type  = "String"
  value = "https://xx320wbhm2.execute-api.us-east-1.amazonaws.com/dev/growth-matrix/seniorityTimes"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "URL_SALARY_SHEET_CHAPTER" {
  name  = "/assessment/URL_SALARY_SHEET_CHAPTER"
  type  = "String"
  value = "https://script.google.com/macros/s/AKfycbzFncYQqGHLNeM11eKBkMKYouqHX5LrrguJF-QOqucbBPiy8tjMcsvt9EM_iDZjt_9BMw/exec"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "URL_SHEET_CHAPTER" {
  name  = "/assessment/URL_SHEET_CHAPTER"
  type  = "String"
  value = "https://script.google.com/macros/s/AKfycbzvOc1O2L-ww42dmj4fur6Y2ykg5rCLdzDIyyKkJio0rOfmgOrsInK391lXbnZt34s7/exec"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "URL_UPDATE_USER_APPSCRIPT" {
  name  = "/assessment/URL_UPDATE_USER_APPSCRIPT"
  type  = "String"
  value = "https://script.google.com/macros/s/AKfycbyGesK7gonwDzJ_KrgrVRO2BG1ffehWhuHLAj4WLPqC31oEsobkMdJl-vc6K0rHqkak/exec"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "URL_USER_CHAPTER_APPSCRIPT" {
  name  = "/assessment/URL_USER_CHAPTER_APPSCRIPT"
  type  = "String"
  value = "https://script.google.com/macros/s/AKfycbx7L8p583gaKRauET0k9iU83Ut_XWx3HORDppIEiRMh5XIKhOu7_Xe-RhVMnhCrEMaI/exec"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "USER_DATABASE" {
  name  = "/assessment/USER_DATABASE"
  type  = "String"
  value = "assessment-dev"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "VARIABLES_DEPLOY_ENVIROMENT" {
  name  = "/assessment/VARIABLES_DEPLOY_ENVIROMENT"
  type  = "String"
  value = "dev"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "VARIABLES_GENERIC_USER_EMAIL" {
  name  = "/assessment/VARIABLES_GENERIC_USER_EMAIL"
  type  = "String"
  value = "josemartinezpragma@gmail.com"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "VARIABLES_PLANTILLA_MEDALLA_SENIORITY" {
  name  = "/assessment/VARIABLES_PLANTILLA_MEDALLA_SENIORITY"
  type  = "String"
  value = "display:block;"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "VARIABLES_PLANTILLA_SENIORITY_LEVEL" {
  name  = "/assessment/VARIABLES_PLANTILLA_SENIORITY_LEVEL"
  type  = "String"
  value = "color:#F8AF3C;font-weight:700"
  tags  = var.tagss
}

resource "aws_ssm_parameter" "VARIABLES_PLANTILLA_TEXT_SENIORITY" {
  name  = "/assessment/VARIABLES_PLANTILLA_TEXT_SENIORITY"
  type  = "String"
  value = "color:#F8AF3C;font-weight:700"
  tags  = var.tagss
}

#### Parameter store growth growth

resource "aws_ssm_parameter" "PROFILE_growth"{
  name  = "/growth/PROFILE"
  type  = "String"
  value = "dev"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "PLATFORM_growth"{
  name  = "/growth/PLATFORM"
  type  = "String"
  value = "mysql"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "URL_DATABASE_growth"{
  name  = "/growth/URL_DATABASE"
  type  = "String"
  value = "jdbc:mysql://mapa-de-crecimiento-devdb.cbnohh3sqcmw.us-east-1.rds.amazonaws.com:3306/growth_model_dev?useSSL=false"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "USER_DATABASE_growth"{
  name  = "/growth/USER_DATABASE"
  type  = "String"
  value = "growth-model-dev"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "PASSWORD_DATABASE_growth"{
  name  = "/growth/PASSWORD_DATABASE"
  type  = "String"
  value = "growth-model-dev"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "DRIVER_DATABASE_growth"{
  name  = "/growth/DRIVER_DATABASE"
  type  = "String"
  value = "com.mysql.cj.jdbc.Driver"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "H2_ENABLE_growth"{
  name  = "/growth/H2_ENABLE"
  type  = "String"
  value = "false"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "H2_PATH_growth"{
  name  = "/growth/H2_PATH"
  type  = "String"
  value = "/h2"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "H2_WEBALL_growth"{
  name  = "/growth/H2_WEBALL"
  type  = "String"
  value = "true"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "JPA_SHOW_growth"{
  name  = "/growth/JPA_SHOW"
  type  = "String"
  value = "true"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "HIBERNATE_DIALECT_growth"{
  name  = "/growth/HIBERNATE_DIALECT"
  type  = "String"
  value = "org.hibernate.dialect.MySQL55Dialect"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "HIBERNATE_DDL_growth"{
  name  = "/growth/HIBERNATE_DDL"
  type  = "String"
  value = "update"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "MESSAGE_BASENAME_growth"{
  name  = "/growth/MESSAGE_BASENAME"
  type  = "String"
  value = "lang/messages"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "MESSAGE_ENCODING_growth"{
  name  = "/growth/MESSAGE_ENCODING"
  type  = "String"
  value = "UTF-8"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "KEYSECRET_SECURITY_growth"{
  name  = "/growth/KEYSECRET_SECURITY"
  type  = "String"
  value = "SjLNct19ONkWJIw4OW4EFz8V8KUNLiQ9CU_We2nUsLg"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "EXPIRA_DAYS_SECURITY_growth"{
  name  = "/growth/EXPIRA_DAYS_SECURITY"
  type  = "String"
  value = "14"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "PREFIX_SECURITY_growth"{
  name  = "/growth/PREFIX_SECURITY"
  type  = "String"
  value = "Bearer"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "URL_MODULE_PERFIL_growth"{
  name  = "/growth/URL_MODULE_PERFIL"
  type  = "String"
  value = "https://s6z0b43euf.execute-api.us-east-1.amazonaws.com/dev/pragma/perfil/"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "API_KEY_growth"{
  name  = "/growth/API_KEY"
  type  = "String"
  value = "5b2920ef-c21e-4001-9c26-be7b64ca4ff8"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "URL_USER_CHAPTER_APPSCRIPT_growth"{
  name  = "/growth/URL_USER_CHAPTER_APPSCRIPT"
  type  = "String"
  value = "https://script.google.com/macros/s/AKfycbx7L8p583gaKRauET0k9iU83Ut_XWx3HORDppIEiRMh5XIKhOu7_Xe-RhVMnhCrEMaI/exec"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "VARIABLE_AREAS"{
  name  = "/growth/VARIABLE_AREAS"
  type  = "String"
  value = "Customer Success,Talent Pool,Panamá"
  tags  = var.tagss
}
########## schedule-meeting
resource "aws_ssm_parameter" "DB_CONEXION_agenadmiento"{
  name  = "/schedule-meeting/DB_CONEXION"
  type  = "String"
  value = "mapa-de-crecimiento-devdb.cbnohh3sqcmw.us-east-1.rds.amazonaws.com"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "DB_USER_agenadmiento"{
  name  = "/schedule-meeting/DB_USER"
  type  = "String"
  value = "chapter-calendar-dev"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "DB_PASSWORD_agenadmiento"{
  name  = "/schedule-meeting/DB_PASSWORD"
  type  = "String"
  value = "Induccion2023+"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "CLIENTE_FEING_agenadmiento"{
  name  = "/schedule-meeting/CLIENTE_FEING"
  type  = "String"
  value = "https://script.google.com/macros/s/AKfycbwVHEUEmAlpwoRiV5rHCKFTVSAoyiTTuuwY6KumyKIXCDsOKNthI3V3mjl1OsqwIUsg/exec"
  tags  = var.tagss
}
########### brand 
resource "aws_ssm_parameter" "ENABLED_GRAPHQL_marca"{
  name  = "/brand/ENABLED_GRAPHQL"
  type  = "String"
  value = "true"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "DATASOURCE_TYPE_marca"{
  name  = "/brand/DATASOURCE_TYPE"
  type  = "String"
  value = "com.zaxxer.hikari.HikariDataSource"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "TOMCAT_MAX_ACTIVE_marca"{
  name  = "/brand/TOMCAT_MAX_ACTIVE"
  type  = "String"
  value = "1"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "TOMCAT_MIN_IDLE_marca"{
  name  = "/brand/TOMCAT_MIN_IDLE"
  type  = "String"
  value = "1"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "JPA_SHOW_SQL_marca"{
  name  = "/brand/JPA_SHOW_SQL"
  type  = "String"
  value = "true"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "URL_DATABASE_marca"{
  name  = "/brand/URL_DATABASE"
  type  = "String"
  value = "jdbc:mysql://mapa-de-crecimiento-devdb.cbnohh3sqcmw.us-east-1.rds.amazonaws.com:3306/marca_proyecto_dev?useSSL=false&zeroDateTimeBehavior=CONVERT_TO_NULL&useLegacyDatetimeCode=false&serverTimezone=UTC"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "USER_DATABASE_marca"{
  name  = "/brand/USER_DATABASE"
  type  = "String"
  value = "marca_proyecto_dev"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "PASSWORD_DATABASE_marca"{
  name  = "/brand/PASSWORD_DATABASE"
  type  = "String"
  value = "marcaProyectoDev2023+"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "DATASOURCE_DRIVER_marca"{
  name  = "/brand/DATASOURCE_DRIVER"
  type  = "String"
  value = "com.mysql.cj.jdbc.Driver"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "DATASOURCE_DATABASE_PLTATFORM_marca"{
  name  = "/brand/DATASOURCE_DATABASE_PLTATFORM"
  type  = "String"
  value = "org.hibernate.dialect.MySQL8Dialect"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "JPA_HIBERNATE_DDLAUTO_marca"{
  name  = "/brand/JPA_HIBERNATE_DDLAUTO"
  type  = "String"
  value = "update"
  tags  = var.tagss
}
######### chapter-administration
resource "aws_ssm_parameter" "USER_NAME_administracion"{
  name  = "/chapter-administration/USER_NAME"
  type  = "String"
  value = "chapter_administracion_dev"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "DB_CONEXION_administracion"{
  name  = "/chapter-administration/DB_CONEXION"
  type  = "String"
  value = "mapa-de-crecimiento-devdb.cbnohh3sqcmw.us-east-1.rds.amazonaws.com"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "USER_PASSWORD_administracion"{
  name  = "/chapter-administration/USER_PASSWORD"
  type  = "String"
  value = "chapterAdministracionDev2023+"
  tags  = var.tagss
}
resource "aws_ssm_parameter" "PROFILE_administracion"{
  name  = "/chapter-administration/PROFILE"
  type  = "String"
  value = "dev"
  tags  = var.tagss
}