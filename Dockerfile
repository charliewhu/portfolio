FROM node:22.8-slim

# install pnpm
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

WORKDIR /app

# copy dependencies to workdir
COPY package.json pnpm-lock.yaml /app/

# install dependencies as stated in lockfile
RUN pnpm install --frozen-lockfile

# copy project to workdir
COPY . /app/

# build app
RUN pnpm build
