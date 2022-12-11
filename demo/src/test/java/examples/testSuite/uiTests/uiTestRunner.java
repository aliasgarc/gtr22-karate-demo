package examples.testSuite.uiTests;

import com.intuit.karate.junit5.Karate;

class uiTestRunner {
    
    @Karate.Test
    Karate testApi() {
        return Karate.run("basicUITestScenarioOutline").relativeTo(getClass());
    }    

}
