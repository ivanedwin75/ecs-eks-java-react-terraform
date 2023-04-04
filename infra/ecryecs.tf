# ####################################################################
# ############################## ECS #################################
# ####################################################################

resource "aws_ecs_cluster" "ecscluster" {
  name = "Cluster_mapa-de-crecimiento"
  tags = var.tagss
}
resource "aws_cloudwatch_log_group" "log-group" {
  name = "${var.projects}-${var.environment}-logs"
  tags = var.tagss
}
resource "aws_cloudwatch_log_group" "log-group1" {
  name = "${var.projects}-${var.environment}-logs-1"
  tags = var.tagss
}
data "template_file" "env_vars" {
  template = file("env_vars.json")
}
# resource "aws_ecs_task_definition" "taskdefinition" {
#   #count                    = 2
#   family                   = "Task_Definition-mapa-de-crecimiento-assesment"
#   network_mode             = "awsvpc"
#   requires_compatibilities = ["FARGATE"]
#   cpu                      = 256   
#   memory                   = 512   
#   execution_role_arn       = aws_iam_role.ecs_task_role.arn ### Perimsos para creación de rol
#   task_role_arn            = aws_iam_role.ecs_task_role.arn ### Perimsos para creación de rol
#   runtime_platform {
#     operating_system_family = "LINUX"
#     cpu_architecture        = "X86_64"
#   }
#    container_definitions = <<DEFINITION
#   [
#     {  
#       "name": "map-assessments-api",
#       "image": "298782619489.dkr.ecr.us-east-1.amazonaws.com/pragma-mapa-de-crecimiento/backend-app:assessments-524e415",
#       "entryPoint": [],
#       "essential": true,
#       "logConfiguration": {
#         "logDriver": "awslogs",
#         "options": {
#           "awslogs-group": "${aws_cloudwatch_log_group.log-group.id}",
#           "awslogs-region": "${var.region}",
#           "awslogs-stream-prefix": "${var.environment}"
#         }
#       },
#       "portMappings": [
#         {
#           "containerPort": 9010,
#           "hostPort": 9010
#         }
#       ],
#       "cpu": 256,
#       "memory": 512,
#       "networkMode": "awsvpc",
     
#     "secrets": [
#      {
#           "valueFrom": "${aws_ssm_parameter.DRIVER_DATABASE.arn}",
#           "name": "${var.DRIVER_DATABASE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.EJEMPLO.arn}",
#           "name": "${var.EJEMPLO}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.EXPIRA_DAYS_SECURITY.arn}",
#           "name": "${var.EXPIRA_DAYS_SECURITY}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.H2_ENABLE.arn}",
#           "name": "${var.H2_ENABLE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.H2_PATH.arn}",
#           "name": "${var.H2_PATH}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.H2_WEBALL.arn}",
#           "name": "${var.H2_WEBALL}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.HIBERNATE_DDL.arn}",
#           "name": "${var.HIBERNATE_DDL}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.HIBERNATE_DIALECT.arn}",
#           "name": "${var.HIBERNATE_DIALECT}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.JPA_DATABASE.arn}",
#           "name": "${var.JPA_DATABASE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.JPA_SHOW.arn}",
#           "name": "${var.JPA_SHOW}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.JPA_SHOWSQL.arn}",
#           "name": "${var.JPA_SHOWSQL}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.JPA_SSL.arn}",
#           "name": "${var.JPA_SSL}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.KEYSECRET_SECURITY.arn}",
#           "name": "${var.KEYSECRET_SECURITY}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.MESSAGE_BASENAME.arn}",
#           "name": "${var.MESSAGE_BASENAME}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.MESSAGE_ENCODING.arn}",
#           "name": "${var.MESSAGE_ENCODING}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.PASSWORD_DATABASE.arn}",
#           "name": "${var.PASSWORD_DATABASE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.PREFIX_SECURITY.arn}",
#           "name": "${var.PREFIX_SECURITY}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.PROFILE.arn}",
#           "name": "${var.PROFILE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_CHAPTERS_MODULE_APPSCRIPT.arn}",
#           "name": "${var.URL_CHAPTERS_MODULE_APPSCRIPT}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_DATABASE.arn}",
#           "name": "${var.URL_DATABASE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_DUPLICATE_DOCUMENT.arn}",
#           "name": "${var.URL_DUPLICATE_DOCUMENT}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_INFO_FOLDERS.arn}",
#           "name": "${var.URL_INFO_FOLDERS}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_LAMBDA_TOKEN.arn}",
#           "name": "${var.URL_LAMBDA_TOKEN}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_MODULE_API_BITACORA.arn}",
#           "name": "${var.URL_MODULE_API_BITACORA}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_MODULE_APPSCRIPT.arn}",
#           "name": "${var.URL_MODULE_APPSCRIPT}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_MODULE_APPSCRIPT_GSHEET_TO_PDF.arn}",
#           "name": "${var.URL_MODULE_APPSCRIPT_GSHEET_TO_PDF}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_MODULE_LANGUAGE.arn}",
#           "name": "${var.URL_MODULE_LANGUAGE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_MODULE_MICROGROWTHMODEL.arn}",
#           "name": "${var.URL_MODULE_MICROGROWTHMODEL}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_MODULE_PERFIL.arn}",
#           "name": "${var.URL_MODULE_PERFIL}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_MODULE_PERFIL_USUARIOS.arn}",
#           "name": "${var.URL_MODULE_PERFIL_USUARIOS}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_MODULE_SENIORITY.arn}",
#           "name": "${var.URL_MODULE_SENIORITY}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_MODULE_USER_EMAIL_IMAGEN.arn}",
#           "name": "${var.URL_MODULE_USER_EMAIL_IMAGEN}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_MODULO_SENIORITY_TIMES.arn}",
#           "name": "${var.URL_MODULO_SENIORITY_TIMES}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_SALARY_SHEET_CHAPTER.arn}",
#           "name": "${var.URL_SALARY_SHEET_CHAPTER}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_SHEET_CHAPTER.arn}",
#           "name": "${var.URL_SHEET_CHAPTER}" 
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_UPDATE_USER_APPSCRIPT.arn}",
#           "name": "${var.URL_UPDATE_USER_APPSCRIPT}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_USER_CHAPTER_APPSCRIPT.arn}",
#           "name": "${var.URL_USER_CHAPTER_APPSCRIPT}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.USER_DATABASE.arn}",
#           "name": "${var.USER_DATABASE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.VARIABLE_AREAS.arn}",
#           "name": "${var.VARIABLE_AREAS}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.VARIABLES_DEPLOY_ENVIROMENT.arn}",
#           "name": "${var.VARIABLES_DEPLOY_ENVIROMENT}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.VARIABLES_GENERIC_USER_EMAIL.arn}",
#           "name": "${var.VARIABLES_GENERIC_USER_EMAIL}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.VARIABLES_PLANTILLA_MEDALLA_SENIORITY.arn}",
#           "name": "${var.VARIABLES_PLANTILLA_MEDALLA_SENIORITY}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.VARIABLES_PLANTILLA_SENIORITY_LEVEL.arn}",
#           "name": "${var.VARIABLES_PLANTILLA_SENIORITY_LEVEL}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.VARIABLES_PLANTILLA_TEXT_SENIORITY.arn}",
#           "name": "${var.VARIABLES_PLANTILLA_TEXT_SENIORITY}"
#         }
#       ]
#     }
#   ]
#   DEFINITION
#    tags = var.tagss
# }
# resource "aws_ecs_task_definition" "taskdefinition2" {
#   family                   = "Task_Definition-mapa-de-crecimiento-growth-matrix"
#   network_mode             = "awsvpc"
#   requires_compatibilities = ["FARGATE"]
#   cpu                      = 256   
#   memory                   = 512   
#   execution_role_arn       = aws_iam_role.ecs_task_role.arn ### Perimsos para creación de rol
#   task_role_arn            = aws_iam_role.ecs_task_role.arn ### Perimsos para creación de rol
#   runtime_platform {
#     operating_system_family = "LINUX"
#     cpu_architecture        = "X86_64"
#   }
#    container_definitions = <<DEFINITION
#   [
#     {  
#       "name": "map-growth-matrix-api",
#       "image": "298782619489.dkr.ecr.us-east-1.amazonaws.com/pragma-mapa-de-crecimiento/backend-app:growth-matrix-ac7bc1a",
#       "entryPoint": [],
#       "essential": true,
#       "logConfiguration": {
#         "logDriver": "awslogs",
#         "options": {
#           "awslogs-group": "${aws_cloudwatch_log_group.log-group.id}",
#           "awslogs-region": "${var.region}",
#           "awslogs-stream-prefix": "${var.environment}"
#         }
#       },
#       "portMappings": [
#         {
#           "containerPort": 9030,
#           "hostPort": 9030
#         }
#       ],
#       "cpu": 256,
#       "memory": 512,
#       "networkMode": "awsvpc",
     
#     "secrets": [
#        {
#           "valueFrom": "${aws_ssm_parameter.API_KEY_growth.arn}",
#           "name": "${var.API_KEY}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.DRIVER_DATABASE_growth.arn}",
#           "name": "${var.DRIVER_DATABASE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.EXPIRA_DAYS_SECURITY_growth.arn}",
#           "name": "${var.EXPIRA_DAYS_SECURITY}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.H2_ENABLE_growth.arn}",
#           "name": "${var.H2_ENABLE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.H2_PATH_growth.arn}",
#           "name": "${var.H2_PATH}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.H2_WEBALL_growth.arn}",
#           "name": "${var.H2_WEBALL}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.HIBERNATE_DDL_growth.arn}",
#           "name": "${var.HIBERNATE_DDL}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.HIBERNATE_DIALECT_growth.arn}",
#           "name": "${var.HIBERNATE_DIALECT}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.JPA_SHOW_growth.arn}",
#           "name": "${var.JPA_SHOW}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.KEYSECRET_SECURITY_growth.arn}",
#           "name": "${var.KEYSECRET_SECURITY}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.MESSAGE_BASENAME_growth.arn}",
#           "name": "${var.MESSAGE_BASENAME}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.MESSAGE_ENCODING_growth.arn}",
#           "name": "${var.MESSAGE_ENCODING}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.PASSWORD_DATABASE_growth.arn}",
#           "name": "${var.PASSWORD_DATABASE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.PLATFORM_growth.arn}",
#           "name": "${var.PLATFORM}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.PREFIX_SECURITY_growth.arn}",
#           "name": "${var.PREFIX_SECURITY}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.PROFILE_growth.arn}",
#           "name": "${var.PROFILE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_CHAPTERS_MODULE_APPSCRIPT.arn}",
#           "name": "${var.URL_CHAPTERS_MODULE_APPSCRIPT}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_DATABASE_growth.arn}",
#           "name": "${var.URL_DATABASE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_MODULE_PERFIL_growth.arn}",
#           "name": "${var.URL_MODULE_PERFIL}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_USER_CHAPTER_APPSCRIPT_growth.arn}",
#           "name": "${var.URL_USER_CHAPTER_APPSCRIPT}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.USER_DATABASE_growth.arn}",
#           "name": "${var.USER_DATABASE}"
#         }
#       ]
#     }
#   ]
#   DEFINITION
#    tags = var.tagss
# }
# resource "aws_ecs_task_definition" "taskdefinition3" {
#   #count                    = 2
#   family                   = "Task_Definition-mapa-de-crecimiento-agendar-reuniones"
#   network_mode             = "awsvpc"
#   requires_compatibilities = ["FARGATE"]
#   cpu                      = 256   
#   memory                   = 512   
#   execution_role_arn       = aws_iam_role.ecs_task_role.arn ### Perimsos para creación de rol
#   task_role_arn            = aws_iam_role.ecs_task_role.arn ### Perimsos para creación de rol
#   runtime_platform {
#     operating_system_family = "LINUX"
#     cpu_architecture        = "X86_64"
#   }
#    container_definitions = <<DEFINITION
#   [
#     {  
#       "name": "map-agendar-reuniones-api",
#       "image": "298782619489.dkr.ecr.us-east-1.amazonaws.com/crezi/agendar-reuniones:latest",
#       "entryPoint": [],
#       "essential": true,
#       "logConfiguration": {
#         "logDriver": "awslogs",
#         "options": {
#           "awslogs-group": "${aws_cloudwatch_log_group.log-group.id}",
#           "awslogs-region": "${var.region}",
#           "awslogs-stream-prefix": "${var.environment}"
#         }
#       },
#       "portMappings": [
#         {
#           "containerPort": 9040,
#           "hostPort": 9040
#         }
#       ],
#       "cpu": 256,
#       "memory": 512,
#       "networkMode": "awsvpc",
#       "secrets": [
#         {
#           "valueFrom": "${aws_ssm_parameter.DB_CONEXION.arn}",
#           "name": "${var.DB_CONEXION}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.DB_USER.arn}",
#           "name": "${var.DB_USER}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.DB_PASSWORD.arn}",
#           "name": "${var.DB_PASSWORD}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.CLIENTE_FEING.arn}",
#           "name": "${var.CLIENTE_FEING}"
#         }
#       ]
#     }
#   ]
#   DEFINITION
#    tags = var.tagss
# }
# resource "aws_ecs_task_definition" "taskdefinition4" {
#   #count                    = 2
#   family                   = "Task_Definition-mapa-de-crecimiento-marca-proyecto"
#   network_mode             = "awsvpc"
#   requires_compatibilities = ["FARGATE"]
#   cpu                      = 256   
#   memory                   = 512   
#   execution_role_arn       = aws_iam_role.ecs_task_role.arn ### Perimsos para creación de rol
#   task_role_arn            = aws_iam_role.ecs_task_role.arn ### Perimsos para creación de rol
#   runtime_platform {
#     operating_system_family = "LINUX"
#     cpu_architecture        = "X86_64"
#   }
#    container_definitions = <<DEFINITION
#   [
#     {  
#       "name": "map-marca-proyecto-api",
#       "image": "298782619489.dkr.ecr.us-east-1.amazonaws.com/pragma-mapa-de-crecimiento/backend-app:marca-proyecto-latest-1",
#       "entryPoint": [],
#       "essential": true,
#       "logConfiguration": {
#         "logDriver": "awslogs",
#         "options": {
#           "awslogs-group": "${aws_cloudwatch_log_group.log-group.id}",
#           "awslogs-region": "${var.region}",
#           "awslogs-stream-prefix": "${var.environment}"
#         }
#       },
#       "portMappings": [
#         {
#           "containerPort": 9050,
#           "hostPort": 9050
#         }
#       ],
#       "cpu": 256,
#       "memory": 512,
#       "networkMode": "awsvpc",
#       "secrets": [
#         {
#           "valueFrom": "${aws_ssm_parameter.ENABLED_GRAPHQL.arn}",
#           "name": "${var.ENABLED_GRAPHQL}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.DATASOURCE_TYPE.arn}",
#           "name": "${var.DATASOURCE_TYPE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.TOMCAT_MAX_ACTIVE.arn}",
#           "name": "${var.TOMCAT_MAX_ACTIVE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.TOMCAT_MIN_IDLE.arn}",
#           "name": "${var.TOMCAT_MIN_IDLE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.JPA_SHOW_SQL.arn}",
#           "name": "${var.JPA_SHOW_SQL}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.URL_DATABASE_marca.arn}",
#           "name": "${var.URL_DATABASE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.USER_DATABASE_marca.arn}",
#           "name": "${var.USER_DATABASE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.PASSWORD_DATABASE_marca.arn}",
#           "name": "${var.PASSWORD_DATABASE}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.DATASOURCE_DRIVER.arn}",
#           "name": "${var.DATASOURCE_DRIVER}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.DATASOURCE_DATABASE_PLTATFORM.arn}",
#           "name": "${var.DATASOURCE_DATABASE_PLTATFORM}"
#         },
#         {
#           "valueFrom": "${aws_ssm_parameter.JPA_HIBERNATE_DDLAUTO.arn}",
#           "name": "${var.JPA_HIBERNATE_DDLAUTO}"
#         }
#       ]
#     }
#   ]
#   DEFINITION
#    tags = var.tagss
# }
# resource "aws_ecs_service" "main" {
#  name                               = "map-assessments-svc"
#  cluster                            = aws_ecs_cluster.ecscluster.id
#  task_definition                    = aws_ecs_task_definition.taskdefinition.arn
#  desired_count                      = 1
#  deployment_minimum_healthy_percent = 50
#  deployment_maximum_percent         = 200
#  launch_type                        = "FARGATE"
#  scheduling_strategy                = "REPLICA"

#  network_configuration {
#    security_groups  = [var.sg_id[0],var.sg_id[1]]   ### traer el security group que ya esta
#    subnets          = [var.subnet_private_id[0],var.subnet_private_id[1]]### Traer las subredes que ya estan
#    assign_public_ip = false
#  }

#  load_balancer {
#    target_group_arn = aws_lb_target_group.apuntador.arn  ### Traer los target group que ya existen
#    container_name   = "map-assessments-api" 
#    container_port   = 9010
#  }
 
#  lifecycle {
#    ignore_changes = [task_definition, desired_count]
#  }
#  #depends_on = [aws_lb_listener.alblistener]
# }
# resource "aws_ecs_service" "main2" {
#  name                               = "map-growth-matrix-svc"
#  cluster                            = aws_ecs_cluster.ecscluster.id
#  task_definition                    = aws_ecs_task_definition.taskdefinition2.arn
#  desired_count                      = 1
#  deployment_minimum_healthy_percent = 50
#  deployment_maximum_percent         = 200
#  launch_type                        = "FARGATE"
#  scheduling_strategy                = "REPLICA"

#  network_configuration {
#    security_groups  = [var.sg_id[0],var.sg_id[1]]   ### traer el security group que ya esta
#    subnets          = [var.subnet_private_id[0],var.subnet_private_id[1]]### Traer las subredes que ya estan
#    assign_public_ip = false
#  }

#  load_balancer {
#    target_group_arn = aws_lb_target_group.apuntador2.arn  ### Traer los target group que ya existen
#    container_name   = "map-growth-matrix-api" 
#    container_port   = 9030
#  }
 
#  lifecycle {
#    ignore_changes = [task_definition, desired_count]
#  }
#  #depends_on = [aws_lb_listener.alblistener]
# }
# resource "aws_ecs_service" "main3" {
#  name                               = "map-agendar-reuniones-svc"
#  cluster                            = aws_ecs_cluster.ecscluster.id
#  task_definition                    = aws_ecs_task_definition.taskdefinition3.arn
#  desired_count                      = 1
#  deployment_minimum_healthy_percent = 50
#  deployment_maximum_percent         = 200
#  launch_type                        = "FARGATE"
#  scheduling_strategy                = "REPLICA"

#  network_configuration {
#    security_groups  = [var.sg_id[0],var.sg_id[1]]   ### traer el security group que ya esta
#    subnets          = [var.subnet_private_id[0],var.subnet_private_id[1]]### Traer las subredes que ya estan
#    assign_public_ip = false
#  }

#  load_balancer {
#    target_group_arn = aws_lb_target_group.apuntador3.arn  ### Traer los target group que ya existen
#    container_name   = "map-agendar-reuniones-api" 
#    container_port   = 9040
#  }
 
#  lifecycle {
#    ignore_changes = [task_definition, desired_count]
#  }
#  #depends_on = [aws_lb_listener.alblistener]
# }
# resource "aws_ecs_service" "main4" {
#  name                               = "map-marca-proyecto-svc"
#  cluster                            = aws_ecs_cluster.ecscluster.id
#  task_definition                    = aws_ecs_task_definition.taskdefinition4.arn
#  desired_count                      = 1
#  deployment_minimum_healthy_percent = 50
#  deployment_maximum_percent         = 200
#  launch_type                        = "FARGATE"
#  scheduling_strategy                = "REPLICA"

#  network_configuration {
#    security_groups  = [var.sg_id[0],var.sg_id[1]]   ### traer el security group que ya esta
#    subnets          = [var.subnet_private_id[0],var.subnet_private_id[1]]### Traer las subredes que ya estan
#    assign_public_ip = false
#  }

#  load_balancer {
#    target_group_arn = aws_lb_target_group.apuntador4.arn  ### Traer los target group que ya existen
#    container_name   = "map-marca-proyecto-api" 
#    container_port   = 9050
#  }
 
#  lifecycle {
#    ignore_changes = [task_definition, desired_count]
#  }
#  #depends_on = [aws_lb_listener.alblistener]
# }

