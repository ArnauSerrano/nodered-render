# Imatge oficial de Node-RED
# Inclou Node.js i tots els nodes core
FROM nodered/node-red:latest

# Copiem el package.json al directori de treball del contenidor
WORKDIR /usr/src/node-red
COPY package.json ./

# Instal·lem els nodes definits al package.json
# --unsafe-perm: necessari dins de containers Docker
# --no-update-notifier i --no-fund: eviten missatges innecessaris
RUN npm install --unsafe-perm --no-update-notifier --no-fund

# Copiem el flows.json versionat al repo
# Cada build a Render sobreescriurà aquest fitxer
COPY flows.json /data/flows.json

# Port per defecte de Node-RED
EXPOSE 1880
