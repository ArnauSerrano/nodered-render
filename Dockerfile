# Imatge oficial de Node-RED amb nodes core
FROM nodered/node-red:latest

# Definim el directori de treball del container
WORKDIR /usr/src/node-red

# Copiem package.json al directori de treball
COPY package.json ./

# Instal·lem els nodes addicionals
RUN npm install --unsafe-perm --no-update-notifier --no-fund

# Copiem el flows.json al directori de treball
# Com que no tenim disc persistent, el flow sempre serà el que hi ha al repo
COPY flows.json ./flows.json

# Port per defecte de Node-RED
EXPOSE 1880
