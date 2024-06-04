package examples;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;

import static org.junit.jupiter.api.Assertions.*;

import com.intuit.karate.junit5.Karate;
import org.junit.jupiter.api.Test;

class ExamplesTest {

//    @Test
//    void testParallel() {
//        Results results = Runner.path("classpath:users")
//                //.outputCucumberJson(true)
//                .parallel(0);
//        assertEquals(0, results.getFailCount(), results.getErrorMessages());
//    }


//    @Karate.Test
//    Karate testUsers5() {
//        return Karate.run().tags("@Regression","~@Sanity").relativeTo(getClass());

    // To run the code form the command line use the below command

    // To include the tag
    // mvn test "-Dkarate.options= --tags @Smoke"

    // To exclude the tag
    // mvn test "-Dkarate.options= --tags ~@Smoke"

    // To include and exclude the tag both use comma(,) between tags
    // mvn test "-Dkarate.options= --tags @Smoke,~@Regression"

    // To run the scenario tagged with @Smoke but not tagged with @Regression
    // mvn test "-Dkarate.options= --tags @Smoke --tags ~@Regression"


    // To run the code in the class path specific feature file use the below command
    // mvn test "-Dkarate.options=classpath:examples/users/tagedScenario/taggingScenarios.feature"

    // To run the code from a specific line number use the below command lets take line number 25 as an example scenario 4
    // mvn test "-Dkarate.options=classpath:examples/users/tagedScenario/taggingScenarios.feature:25"


//    @Karate.Test
//        Karate testUsers5() {
//        return Karate.run("classpath:examples/users/tagedScenario/taggingScenarios.feature");
//        To run the scenario which is tagged with @ignore , it will ignore the scenario and will not run the scenario

    @Karate.Test
    Karate testUsers5() {
        return Karate.run("classpath:examples/users/DataDrivenTesting.feature");

    }
}
