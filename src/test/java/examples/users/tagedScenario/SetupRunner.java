package examples.users.tagedScenario;

import com.intuit.karate.junit5.Karate;

class SetupRunner {

//    @Karate.Test
//    Karate testUsers5() {
//        return Karate.run("classpath:examples/users/tagedScenario/setupTag.feature");
//        }

    @Karate.Test
    Karate testUsers6() {
        return Karate.run("classpath:examples/users/tagedScenario/setupTag1.feature");
    }
}

