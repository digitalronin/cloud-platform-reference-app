#!/bin/bash

aws ecr create-repository \
        --repository-name cloud-platform/cloud-platform-reference-app > /dev/null
aws ecr put-lifecycle-policy \
        --repository-name cloud-platform/cloud-platform-reference-app \
        --lifecycle-policy-text '{
                "rules": [
                    {
                    "rulePriority": 10,
                    "description": "remove-untagged",
                    "selection": {
                        "tagStatus": "untagged",
                        "countType": "sinceImagePushed",
                        "countUnit": "days",
                        "countNumber": 1
                    },
                    "action": {
                        "type": "expire"
                    }
                    }
                ]}'