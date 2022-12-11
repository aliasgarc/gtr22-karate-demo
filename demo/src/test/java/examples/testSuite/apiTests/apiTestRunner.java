package examples.testSuite.apiTests;

import com.intuit.karate.junit5.Karate;

class apiTestRunner {
    
    @Karate.Test
    Karate testApi() {
        return Karate.run("apiTest1").relativeTo(getClass());
    }    

}


