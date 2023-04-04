project      = "mapa-de-crecimiento"            # Nombre del proyecto preguntar si _ o - s3
project_name = "Mapa de crecimiento"            # Nombre del proyecto para los tags
environment  = "Production"                     # Ambiente de despliegue
owner        = "talent-solutions@pragma.com.co" # Nombre del propietario del proyecto
department   = "TalentSolutions"                # Departamento perteneciente del proyecto
security     = "Do not allow deletion"
stage        = "prod" # Stage del proyecto (dev, qa, prod)

#VPC Variables
cidr                = "10.1.0.0/16"                     # rango de ips del proyecto
public_subnet_cidr  = ["10.1.0.0/20", "10.1.16.0/20"]   # rango de ips de las subredes publicas
private_subnet_cidr = ["10.1.96.0/20", "10.1.128.0/20"] # rango de ips de las subredes privadas
azs                 = ["us-east-1a", "us-east-1b"]

#S3 and Cloudfront Variables
name_frontend        = "crecimiento-web" # Nombre del bucket frontend
acl_s3               = "private"         # ACL publico o privado de el buckets s3
enable_s3_versioning = true              # True o False para versionado de los buckets s3
price_class          = "PriceClass_100"  # Price class de Cloudfront (PriceClass_100, PriceClass_200, PriceClass_All)

#RDS Variables
instance_class_db = "db.t3.micro" # Clase de la instancia de base de datos
capacity_db       = 20            # Capacidad de la base de datos en GB
# database_subnet_cidr = ["10.1.160.0/20", "10.1.192.0/20"] # Rango de ips de las subredes de la base de datos
database_subnet_cidr = ["10.1.208.0/20", "10.1.224.0/20"]
enable_encrypt_db    = true # True o False para encriptar los datos de la base de datos

#ECR Variables
ecr_repository_name = "pragma-mapa-de-crecimiento/backend-app"
mutability          = "MUTABLE"

#EKS Variables
eks_cluster_version           = "1.22"       # Version del cluster EKS
enable_access_private_cluster = true         # Acceso privado al cluster (true o false)
enable_access_public_cluster  = false        # Acceso publico al cluster (true o false)
instance_type                 = ["t2.medium"] # Lista los tipos de instancia para el cluster
eks_desired_capacity          = 1            # Capacidad deseada de nodos para el cluster
eks_max_capacity              = 3            # Capacidad maxima de nodos para el cluster
eks_min_capacity              = 1            # Capacidad minima de nodos para el cluster
capacity_type                 = "ON_DEMAND"

#API Gateway Variables
cognito_user_pool_nombre  = "pruebamauro"                                                                   # Nombre del pool de usuarios de cognito que tienen acceso en el api gateway
lb_from_aws_console       = "aa2e77f7f15424f6e9aa761de24184bc-6b89374da12c1c58.elb.us-east-1.amazonaws.com" # Nombre de Load Balancer hecho manualmente desde aws
vpc_link_from_aws_console = "6e6sey"                                                                        # Id del VPC link hecho manualmente desde aws
cognito_name              = "cognito_auth_map"

#VPN PRAGMA
vpn_pragma = ["35.170.219.222/32"]
