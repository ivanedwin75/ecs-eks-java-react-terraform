project      = "mapa-de-crecimiento"            # Nombre del proyecto preguntar si _ o - s3
project_name = "Mapa de crecimiento"            # Nombre del proyecto para los tags
environment  = "Development"                    # Ambiente de despliegue
owner        = "talent-solutions@pragma.com.co" # Nombre del propietario del proyecto
department   = "TalentSolutions"                # Departamento perteneciente del proyecto
security     = "Do not allow deletion"
stage        = "dev" # Stage del proyecto (dev, test, prod)

#VPC Variables
cidr                = "10.1.0.0/16"                     # rango de ips del proyecto
public_subnet_cidr  = ["10.1.0.0/20"]                   # rango de ips de las subredes publicas
private_subnet_cidr = ["10.1.96.0/20", "10.1.128.0/20"] # rango de ips de las subredes privadas
azs                 = ["us-east-1a", "us-east-1b"]

#S3 and Cloudfront Variables
name_frontend        = "crecimiento-web" # Nombre del bucket frontend
acl_s3               = "private"         # ACL publico o privado de el buckets s3
enable_s3_versioning = true              # True o False para versionado de los buckets s3
price_class          = "PriceClass_100"  # Price class de Cloudfront (PriceClass_100, PriceClass_200, PriceClass_All)

#RDS Variables
instance_class_db    = "db.t3.micro"                      # Clase de la instancia de base de datos
capacity_db          = 20                                 # Capacidad de la base de datos en GB
database_subnet_cidr = ["10.1.160.0/20", "10.1.192.0/20"] # Rango de ips de las subredes de la base de datos
enable_encrypt_db    = true                               # True o False para encriptar los datos de la base de datos

ecr_repository_name = "pragma-mapa-de-crecimiento/backend-app"
mutability          = "MUTABLE"

#EKS Variables
eks_cluster_version           = "1.22"        # Version del cluster EKS
enable_access_private_cluster = true          # Acceso privado a el cluster (true o false)
enable_access_public_cluster  = false         # Acceso publico a el cluster (true o false)
instance_type                 = ["t3.medium"] # Lista los tipos de instancia para el cluster
eks_desired_capacity          = 1             # Capacidad deseada de nodos para el cluster
eks_max_capacity              = 3             # Capacidad maxima de nodos para el cluster
eks_min_capacity              = 1             # Capacidad minima de nodos para el cluster
capacity_type                 = "SPOT"

#API Gateway Variables
cognito_user_pool_nombre  = "pruebamauro"                                                                   # Nombre del pool de usuarios de cognito que tienen acceso en el api gateway
lb_from_aws_console       = "aeb3920b7cd8c468db2d78d2db6beb62-902e99acd8ca8d41.elb.us-east-1.amazonaws.com" # Nombre de Load Balancer hecho manualmente desde aws
vpc_link_from_aws_console = "8bxvwr"                                                                        # Id del VPC link hecho manualmente desde aws
cognito_name              = "cognito_auth_map"

#VPN PRAGMA
vpn_pragma = ["35.170.219.222/32"]