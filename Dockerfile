# Используем официальный образ OpenJDK 11
FROM openjdk:11

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем исходный код проекта в контейнер
COPY . /app

# Компилируем проект
RUN javac Helloworld.java

# Запускаем проект при запуске контейнера
CMD ["java", "Helloworld"]
