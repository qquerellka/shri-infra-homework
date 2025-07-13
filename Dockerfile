# 1. Базовый образ
FROM node:18

# 2. Установка рабочей директории
WORKDIR /app

# 3. Копируем package.json и lock-файл
COPY package*.json ./

# 4. Установка зависимостей
RUN npm ci

# 5. Копируем весь проект
COPY . .

# 6. Сборка фронта
RUN npm run build

# 7. Указываем порт
EXPOSE 3000

# 8. Запуск сервера
CMD ["npm", "start"]
