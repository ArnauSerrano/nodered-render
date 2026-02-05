# Imatge oficial de Node-RED
# Inclou Node.js i tots els nodes core
FROM nodered/node-red:latest

# Copiem el fitxer package.json al directori /data
# /data és on Node-RED dins de Render desa fluxos, configuració
# i nodes addicionals de manera persistent
COPY package.json /data/package.json

# Instal·lem els nodes definits al package.json
# --unsafe-perm: necessari dins de containers Docker
# --no-update-notifier i --no-fund: eviten missatges innecessaris
RUN npm install --unsafe-perm --no-update-notifier --no-fund

# Port per defecte de Node-RED
EXPOSE 1880
