# Dockerfile
FROM node:20-alpine 

WORKDIR /app

# Copy package.json และติดตั้ง Dependencies
COPY package*.json ./
RUN npm install --omit=dev

# Copy โค้ดแอปพลิเคชันทั้งหมด
COPY . .

# สั่งให้รันแอปพลิเคชัน (สมมติว่าคุณมี server.js หรือไฟล์หลัก)
# ถ้าไม่มีไฟล์นี้ การ Build จะผ่าน แต่การรัน Docker จะล้มเหลว
CMD ["echo", "This is the backend image."]
