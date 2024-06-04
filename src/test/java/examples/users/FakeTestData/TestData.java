package examples.users.FakeTestData;

import com.github.javafaker.Faker;

public class TestData {
    static Faker faker = new Faker();

    public static int getRandomIDData() {
        return faker.random().nextInt(200, 1000);
    }

    public static String getNameData() {
        return faker.name().fullName();
    }

    public static String getRandomEmailData() {
        return faker.name().firstName() + faker.random().nextInt(2, 1000).toString() + "@gmail.com";
    }
}
