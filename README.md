# gtr22-karate-demo
This for GTR22 Karate Demo

**KARATE AUTOMATED TESTS:**

Karate is the only open-source tool to combine API test-automation, mocks, performance-testing and even UI automation into a single, unified framework. The BDD syntax popularized by Cucumber is language-neutral, and easy for even non-programmers. Assertions and HTML reports are built-in, and you can run tests in parallel for speed.

There's also a cross-platform stand-alone executable for teams not comfortable with Java. You don't have to compile code. Just write tests in a simple, readable syntax - carefully designed for HTTP, JSON, GraphQL and XML. And you can mix API and UI test-automation within the same test script.

Refreance-https://github.com/karatelabs/karate

 


**Getting Started:**

**Pre-requisites:**
    
   Make sure you have installed all the pre-requisites
    
    1. Jdk Latest -https://www.oracle.com/java/technologies/downloads/#jdk19-windows
    
    2. Maven-https://maven.apache.org/download.cgi
    
    3. Karate 1.3.0

    <dependency>
    <groupId>com.intuit.karate</groupId>
    <artifactId>karate-junit5</artifactId>
    <version>1.3.0</version>
    <scope>test</scope>
    </dependency>
    
    4. VS Code -https://code.visualstudio.com/download

    5. VS Code Extension - 
    5.1 Karate Runner
    5.2 Cucumber (Gherkin) Full Support
  



**Installations:**
 
   Make sure you install the plugins required for karate
    




**Dependencies**

   Dependencies required to add in pom.xml    

    .karate-junit5
    .karate-apache
    .cucumber-reporting
    	
**Usage:**
To start the test execution 

   Open command prompt or terminal

   Navigate to project folder and execute,

    -> mvn clean test "-DconfigPath= <path of the environment config. file>" "-tags=@<tag1,tag2>"

   For Example:

    -> mvn test -Dtest=uiTestRunnerwith
    -> mvn test -Dtest=uiTestRunnerwithTags  "-Dtags=@basicUITestdropdown"
    -> mvn test -Dtest=uiTestRunnerwithTags  "-Dtags=@basicUITestdropdown"

    -> mvn test -Dtest=apiTestRunner
    -> mvn test -Dtest=apiTestRunnerwithTags  "-Dtags=@smoke"
    -> mvn test -Dtest=apiTestRunnerwithTags  "-Dtags=@smokeyml"

    
**Reporting And Outputs:**

 Cucumber Html Reports:
  .A folder with cucumber-html-reports will be created
  .Navigate to ./target/cucumber-html-reports/
  .Open overview-features.html


 

