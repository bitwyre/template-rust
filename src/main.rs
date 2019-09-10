mod some_module;

use serde_json;
use some_module::*;

fn main() {
    let person = Person {
        name: "Bitwyre Developer",
        ..Default::default()
    };
    let person_json = serde_json::to_string_pretty(&person).unwrap();
    println!("Person Json:\n{}", person_json);
}
