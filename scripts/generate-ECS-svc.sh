#!/bin/bash
#serviceName = "map-schedule-meeting-svc"
#taskDefinitionName = Mapa-de-crecimiento-schedule-meeting
#targetGroupArn = "arn:aws:elasticloadbalancing:us-east-1:298782619489:targetgroup/ecs-mc-target3/e6fa4634c32db28e"
#containerName = "map-schedule-meeting-api"
#containerPort = 9040
serviceName=${1} && echo "serviceName: ${serviceName}"
taskDefinitionName=${2} && echo "taskDefinitionName: ${taskDefinitionName}"
targetGroupArn=${3} && echo "targetGroupArn: ${targetGroupArn}"
containerName=${4} && echo "containerName: ${containerName}"
containerPort=${5} && echo "containerPort: ${containerPort}"

cat >> ecs-service.json << EOL
{
    "cluster": "Cluster_mapa-de-crecimiento",
    "serviceName": "${serviceName}",
    "taskDefinition": "${taskDefinitionName}",
    "serviceRegistries": [
      {
          "registryArn": "arn:aws:servicediscovery:us-east-1:298782619489:service/srv-vpwkwke5ww4cb65h"
      }
    ],
    "launchType": "FARGATE",
    "platformVersion": "LATEST",
    "networkConfiguration": {
      "awsvpcConfiguration": {
          "assignPublicIp": "DISABLED",
          "securityGroups": [ "sg-01bda60374dbac0fe", "sg-0bfd1525450dcbffe" ],
          "subnets": [ "subnet-0a99df9542bf1f876", "subnet-0aff4a61784cde71a" ]
      }
    },
    "loadBalancers": [
        {
            "targetGroupArn": "${targetGroupArn}",
            "containerName": "${containerName}",
            "containerPort": ${containerPort}
        }
    ],
    "desiredCount": 1
}
EOL