FROM node:18.14.0

ARG PROJECT_NAME
ARG USER_NAME
ENV TZ=Asia/Tokyo

RUN corepack enable
USER ${USER_NAME}
WORKDIR /home/${USER_NAME}/${PROJECT_NAME}

EXPOSE 3000 6006 9229
CMD ["yarn", "dev"]
