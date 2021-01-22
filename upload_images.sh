#!/bin/bash

function tag_and_push {
    SERVICE_FROM=$1
    SERVICE_TO=$2
    docker tag ${SERVICE_FROM} master-1:32000/${SERVICE_TO}
    docker push master-1:32000/${SERVICE_TO}
}

function pull_and_tag_and_push {
    SERVICE_FROM=$1
    SERVICE_TO=$2
    docker pull ${SERVICE_FROM}
    tag_and_push ${SERVICE_FROM} ${SERVICE_TO}
}

tag_and_push    asm-accounts:latest              asm/accounts:latest
tag_and_push    asm-api-account:latest           asm/api-account:latest
tag_and_push    asm-customconfig:latest          asm/customconfig:latest
tag_and_push    asm-emailgateway:latest          asm/emailgateway:latest
tag_and_push    asm-gateway-isp:latest           asm/gateway-isp:latest
tag_and_push    asm-gateway-ent:latest           asm/gateway-ent:latest
tag_and_push    asm-provisioning:latest          asm/provisioning:latest
tag_and_push    asm-identity:latest              asm/identity:latest
tag_and_push    asm-nsadaptor:latest             asm/nsadaptor:latest
tag_and_push    asm-push_native:latest           asm/push_native:latest
tag_and_push    asm-reports:latest               asm/reports:latest
tag_and_push    asm-hamqtt:latest                asm/hamqtt:latest
tag_and_push    asm-vernemq:latest               asm/vernemq:latest
tag_and_push    asm-bucket-writer:latest         asm/bucket-writer:latest
tag_and_push    asm-subsystemssupervisor:latest  asm/subsystemssupervisor:latest
tag_and_push    asm-bucket-reader:latest         asm/bucket-reader:latest
tag_and_push    asm-periodic-reports:latest      asm/periodic-reports:latest
tag_and_push    asm-esevents:latest              asm/esevents:latest
tag_and_push    asm-snmpagent:latest             asm/snmpagent:latest
tag_and_push    asm-smsgateway:latest            asm/smsgateway:latest
tag_and_push    asm-packages:latest              asm/packages:latest
tag_and_push    asm-esadaptor:latest             asm/esadaptor:latest
tag_and_push    asm-push_web:latest              asm/push_web:latest
tag_and_push    asm-esonboarding:latest          asm/esonboarding:latest
tag_and_push    asm-notifications:latest         asm/notifications:latest


pull_and_tag_and_push   bitnami/kafka:2.4.0-debian-9-r0                     asm/kafka:2.4.0-debian-9-r0
pull_and_tag_and_push   bitnami/kafka-exporter:1.2.0-debian-9-r145          asm/kafka-exporter:1.2.0-debian-9-r145
pull_and_tag_and_push   bitnami/jmx-exporter:0.12.0-debian-9-r145           asm/jmx-exporter:0.12.0-debian-9-r145
pull_and_tag_and_push   bitnami/zookeeper:3.6.1-debian-10-r54               asm/zookeeper:3.6.1-debian-10-r54
pull_and_tag_and_push   bitnami/mongodb:4.2.8-debian-10-r47                 asm/mongodb:4.2.8-debian-10-r47
pull_and_tag_and_push   bitnami/mongodb-exporter:0.11.0-debian-10-r96       asm/mongodb-exporter:0.11.0-debian-10-r96

