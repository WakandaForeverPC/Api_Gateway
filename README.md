# API Gateway

Este proyecto es un API Gateway desarrollado con Spring Boot y Spring Cloud Gateway. Su propósito es enrutar las solicitudes a diferentes microservicios basados en las rutas definidas.

## Requisitos

- Java 11 o superior
- Maven 3.6.0 o superior
- Docker (opcional, para ejecutar con Docker Compose)

## Configuración

El archivo `application.properties` contiene la configuración del API Gateway, incluyendo las rutas a los microservicios y la configuración de Prometheus para monitoreo.

### application.properties

```ini
spring.application.name=api_gateway
eureka.client.service-url.defaultZone=http://localhost:8761/eureka/
spring.cloud.gateway.discovery.locator.enabled=true
spring.cloud.gateway.discovery.locator.lower-case-service-id=true
management.endpoints.web.exposure.include=prometheus,health,info
management.endpoint.prometheus.enabled=true

# Configuración de rutas a microservicios
spring.cloud.gateway.routes[0].id=microservicio-trafico
spring.cloud.gateway.routes[0].uri=http://localhost:8081
spring.cloud.gateway.routes[0].predicates=Path=/traffic/**

spring.cloud.gateway.routes[1].id=microservicio-transporte
spring.cloud.gateway.routes[1].uri=http://localhost:8082
spring.cloud.gateway.routes[1].predicates=Path=/transporte/**

spring.cloud.gateway.routes[2].id=microservicio-emergencias
spring.cloud.gateway.routes[2].uri=http://localhost:8083
spring.cloud.gateway.routes[2].predicates=Path=/emergencias/**

spring.cloud.gateway.routes[3].id=microservicio-energia
spring.cloud.gateway.routes[3].uri=http://localhost:8084
spring.cloud.gateway.routes[3].predicates=Path=/energia/**

spring.cloud.gateway.routes[4].id=microservicio-agua
spring.cloud.gateway.routes[4].uri=http://localhost:8085
spring.cloud.gateway.routes[4].predicates=Path=/agua/**

spring.cloud.gateway.routes[5].id=microservicio-residuos
spring.cloud.gateway.routes[5].uri=http://localhost:8086
spring.cloud.gateway.routes[5].predicates=Path=/residuos/**

spring.cloud.gateway.routes[6].id=microservicio-seguridad
spring.cloud.gateway.routes[6].uri=http://localhost:8087
spring.cloud.gateway.routes[6].predicates=Path=/seguridad/**

spring.cloud.gateway.routes[7].id=microservicio-salud
spring.cloud.gateway.routes[7].uri=http://localhost:8088
spring.cloud.gateway.routes[7].predicates=Path=/salud/**

spring.cloud.gateway.routes[8].id=microservicio-educacion
spring.cloud.gateway.routes[8].uri=http://localhost:8089
spring.cloud.gateway.routes[8].predicates=Path=/educacion/**

spring.cloud.gateway.routes[9].id=microservicio-gobernanza
spring.cloud.gateway.routes[9].uri=http://localhost:8090
spring.cloud.gateway.routes[9].predicates=Path=/gobernanza/**

spring.cloud.gateway.routes[10].id=microservicio-conectividad
spring.cloud.gateway.routes[10].uri=http://localhost:8091
spring.cloud.gateway.routes[10].predicates=Path=/conectividad/**

spring.cloud.gateway.routes[11].id=microservicio-cultura
spring.cloud.gateway.routes[11].uri=http://localhost:8092
spring.cloud.gateway.routes[11].predicates=Path=/cultura/**

spring.cloud.gateway.routes[12].id=microservicio-mapa
spring.cloud.gateway.routes[12].uri=http://localhost:8095
spring.cloud.gateway.routes[12].predicates=Path=/mapa/**
