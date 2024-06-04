package examples.users.tagedScenario;

import com.intuit.karate.junit5.Karate;
import com.linecorp.armeria.server.annotation.Get;

class envRunner {

//    static {
//      System.setProperty("karate.env", "somethingDKV");
//// Note: If you are not using the setProperty, the 'karate.env' will be null
//    }

    @Karate.Test
    Karate testUsers() {

        return Karate.run("classpath:examples/users/tagedScenario/envTag.feature").relativeTo(Get.class);
    }
}

//Static blocks ensure one-time initialization, maintain initialization order, encapsulate logic, and handle exceptions. This ensures correct property setting early in the application, enhancing reliability and code organization.