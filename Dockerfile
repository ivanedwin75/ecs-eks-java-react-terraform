ARG BUILD_IMAGE=gradle:6.7.1-jdk11
ARG RUNTIME_IMAGE=openjdk:11-jdk-slim
ARG PROFILE=dev

FROM ${BUILD_IMAGE} as dependencies
ENV APP_HOME=/

WORKDIR $APP_HOME

RUN mkdir common && mkdir talent
COPY /common/ /common/
COPY /assessments/ /assessments/

WORKDIR /assessments/

RUN gradle build -x test

FROM ${RUNTIME_IMAGE}
ENV ARTIFACT_NAME=*.jar
ENV PROFILE=${PROFILE}

ENV URL_MODULE_MICROGROWTHMODEL="" \
    URL_MODULE_SENIORITY="" \
    URL_MODULE_APPSCRIPT="" \
    URL_MODULE_PERFIL="" \
    URL_MODULE_LANGUAGE="" \
    URL_MODULE_PERFIL_USUARIOS="" \
    URL_CHAPTERS_MODULE_APPSCRIPT="" \
    URL_USER_CHAPTER_APPSCRIPT="" \
    URL_SHEET_CHAPTER="" \
    URL_SALARY_SHEET_CHAPTER="" \
    URL_LAMBDA_TOKEN="" \
    URL_DUPLICATE_DOCUMENT="" \
    URL_MODULE_API_BITACORA="" \
    URL_MODULE_APPSCRIPT_GSHEET_TO_PDF="" \
    URL_INFO_FOLDERS="" \
    URL_MODULE_USER_EMAIL_IMAGEN="" \
    VARIABLES_PLANTILLA_MEDALLA_SENIORITY="" \
    VARIABLES_PLANTILLA_TEXT_SENIORITY="" \
    VARIABLES_PLANTILLA_SENIORITY_LEVEL=""

RUN ln -sf  /usr/share/zoneinfo/America/Bogota /etc/localtime

EXPOSE 9010

COPY --from=dependencies /assessments/build/libs/$ARTIFACT_NAME /app/test.jar
CMD ["java", "-Dspring.profiles.active=${PROFILE}", "-jar", "/app/test.jar"]
