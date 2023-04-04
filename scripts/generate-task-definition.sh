#!/bin/bash
#taskName=Mapa-de-crecimiento-schedule-meeting
#port=9040
#imageName=schedule-meeting-$(setAppVersion.hashOrTag)
#logsGroup=mapa-de-crecimiento-Development-logs
#"containerName": "map-schedule-meeting-api"
taskName=${1} && echo "Task name: ${taskName}"
port=${2} && echo "Port: ${port}"
imageName=${3} && echo "Image Name: ${imageName}"
logsGroup=${4} && echo "Logs Group: ${logsGroup}"
containerName=${5} && echo "Container Name: ${containerName}"
serviceNameVariables=${6} && echo "Service NAme for variables: ${serviceNameVariables}"

secrets=$(aws ssm get-parameters-by-path --path /${serviceNameVariables}/ --query "Parameters[*].{name:Name,valueFrom:ARN}" --region us-east-1 | jq --arg replace /${serviceNameVariables}/ 'walk(if type == "object" and has("name") then .name |= gsub($replace;"") else . end)') && echo "${secrets}"

cat >> task-definition.json << EOL
{
  "family": "${taskName}",
  "networkMode": "awsvpc",
  "executionRoleArn": "arn:aws:iam::298782619489:role/ecsTaskRole",
  "taskRoleArn": "arn:aws:iam::298782619489:role/ecsTaskRole",
  "runtimePlatform": 
  {
      "operatingSystemFamily": "LINUX",
      "cpuArchitecture": "X86_64"
   },
  "containerDefinitions": [
      {
         "name": "${containerName}",
         "image": "298782619489.dkr.ecr.us-east-1.amazonaws.com/pragma-mapa-de-crecimiento/backend-app:${imageName}",
         "logConfiguration": {
           "logDriver": "awslogs",
           "options": {
             "awslogs-group": "${logsGroup}",
             "awslogs-region": "us-east-1",
             "awslogs-stream-prefix": "Development"
           }
         },
         "portMappings": [
           {
             "containerPort": ${port},
             "hostPort": ${port}
           }
         ],
          "essential": true,
          "entryPoint": [],
         "cpu": 256,
         "memory": 512,
         "secrets": ${secrets}
      }
  ],
  "requiresCompatibilities": [
      "FARGATE"
  ],
  "cpu": "256",
  "memory": "512"
} 
EOL
