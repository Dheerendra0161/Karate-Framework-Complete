function welcomeMessage() {
    return {
        Descriptions: function(name, age) {
            return "Hello " + name + " you are " + age + " years old";
        },
        City: function(city) {
            return "You are from " + city;
        },
        Address: function(address) {
            return "You live in " + address;
        }
    };
}
// let keyword is used for declaring variables in JavaScript
