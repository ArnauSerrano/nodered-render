# Imatge oficial de Node-RED amb Node.js i nodes core
FROM nodered/node-red:latest

# Assignem /data com a directori de treball
WORKDIR /data

# Copiem package.json al directori de treball
COPY package.json ./

# Instal·lem els nodes addicionals
RUN npm install --unsafe-perm --no-update-notifier --no-fund

# Copiem el flow inicial versionat a GitHub
COPY flows.json /data/flows.json

# Port per defecte de Node-RED
EXPOSE 1880
