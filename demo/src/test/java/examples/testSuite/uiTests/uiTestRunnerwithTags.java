package examples.testSuite.uiTests;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import static org.junit.jupiter.api.Assertions.*;
import org.junit.jupiter.api.Test;

class uiTestRunnerwithTags {
    @Test
    void testParallel() {
        String tags = System.getProperty("tags");
        Results results = Runner.path("classpath:testSuite/uiTests").tags(tags).parallel(5);
        assertEquals(0, results.getFailCount(), results.getErrorMessages());
    }
}
    
