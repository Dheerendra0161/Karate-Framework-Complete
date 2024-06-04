package examples.users;

import com.intuit.karate.junit5.Karate;

class UsersRunner {

//    We can write multiple test cases in a single runner class
//    @Karate.Test
//    Karate testUsers() {
//        return Karate.run("classpath:examples/users/karateRepeatMethods1.feature");
//    }

//    @Karate.Test
//    Karate testUsers1() {
//        return Karate.run("classpath:examples/users/conditionalLogics.feature");
//    }

//    @Karate.Test
//    Karate testUsers2() {
//        return Karate.run("classpath:examples/users/14ExtractResponseKeyValue.feature");
//    }


//    @Karate.Test
//    Karate testUsers3() {
//      return Karate.run("classpath:examples/users/callOnce/main.feature");
//
//    }9

//    @Karate.Test
//    Karate testUsers4() {
//        return Karate.run("classpath:examples/users/abortAndFail/karateAbortAndFail.feature");
//    }


    @Karate.Test
    Karate testUsers5() {
//        To include the Tag use @
//      return Karate.run().tags("@Regression").relativeTo(getClass());
// Note:.relativeTo(getClass()) methods: Ensures the paths to feature files are resolved relative to the package of the current class.

//     To exclude the Tag use ~
//        return Karate.run().tags("~@Regression").relativeTo(getClass());

//        To act as OR condition use comma(,) between tags
//        return Karate.run().tags("@Regression,@Sanity").relativeTo(getClass());
//
//        To act as AND condition use comma(,) between tags
//        return Karate.run().tags("@Regression","@Sanity").relativeTo(getClass());

//        To exclude the Tag use ~
//        return Karate.run().tags("~@Regression").relativeTo(getClass());

//        To include and exclude the Tag use comma(,) between tags , Here @Regression is included and @Sanity is excluded
           return Karate.run().tags("@Regression","~@Sanity").relativeTo(getClass());
    }
}

