# Step 1: Base image use karo
FROM openjdk:11-jdk-slim


# Step 2: Working directory set karo
WORKDIR /app

# Step 3: Project ke sabhi files copy karo
COPY . /app

# Step 4: Project ko compile karo
RUN javac -cp .:junit-jupiter-api-5.7.1.jar Calculator.java CalculatorTest.java

# Step 5: CMD me application run karne ka command likho
CMD ["java", "-cp", ".:junit-platform-console-standalone-1.7.1.jar:junit-jupiter-api-5.7.1.jar:junit-jupiter-engine-5.7.1.jar:apiguardian-api-1.1.0.jar", "org.junit.platform.console.ConsoleLauncher", "--select-class", "CalculatorTest"]
