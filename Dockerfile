# Step 1: Use base image
FROM openjdk:11-jdk-slim

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy project files
COPY . /app

# Step 4: Install dependencies
RUN apt-get update && apt-get install -y curl unzip && rm -rf /var/lib/apt/lists/*

# Step 5: Download JUnit dependencies
RUN curl -o junit-platform-console-standalone.jar https://repo1.maven.org/maven2/org/junit/platform/junit-platform-console-standalone/1.9.3/junit-platform-console-standalone-1.9.3.jar

# Step 6: Compile Java files
RUN javac -cp ".:junit-platform-console-standalone.jar" Calculator.java CalculatorTest.java

# Step 7: Run JUnit tests
CMD ["java", "-cp", ".:junit-platform-console-standalone.jar", "org.junit.platform.console.ConsoleLauncher", "--select-class", "CalculatorTest"]
