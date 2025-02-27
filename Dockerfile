# Step 1: Base image use karo
FROM --platform=linux/amd64 openjdk:11-jdk-slim

# Step 2: Java compiler warnings disable karo
ARG JAVA_TOOL_OPTIONS="-Xlint:-options"

# Step 3: Working directory set karo
WORKDIR /app

# Step 4: Project ke sabhi files copy karo
COPY . /app

# Step 5: Required dependencies ko install karo (agar zarurat ho)
RUN apt-get update && apt-get install -y curl unzip

# Step 6: Project ko compile karo (JUnit latest version ke saath)
RUN export JAVA_TOOL_OPTIONS=""; javac -cp .:junit-jupiter-api-5.9.3.jar Calculator.java CalculatorTest.java



# Step 7: CMD me application run karne ka command likho
CMD ["java", "-cp", ".:junit-platform-console-standalone-1.9.3.jar:junit-jupiter-api-5.9.3.jar:junit-jupiter-engine-5.9.3.jar:apiguardian-api-1.1.0.jar", "org.junit.platform.console.ConsoleLauncher", "--select-class", "CalculatorTest"]
