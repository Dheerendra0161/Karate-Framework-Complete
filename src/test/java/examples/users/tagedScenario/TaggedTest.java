package examples.users.tagedScenario;

import com.intuit.karate.junit5.Karate;

public class TaggedTest {

    @Karate.Test
    Karate testUsers5() {
        return Karate.run("classpath:examples/users/tagedScenario/taggingScenarios.feature").tags("@dkv").relativeTo(getClass());
    }
}
