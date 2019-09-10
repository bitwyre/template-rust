use chrono::prelude::*;
use serde::{Deserialize, Serialize};
use uuid::Uuid;

#[derive(Debug, Clone, Serialize, Deserialize, Copy)]
pub struct Person {
    pub id: Uuid,
    pub name: &'static str,
    pub birthdate: DateTime<FixedOffset>,
}

impl Default for Person {
    fn default() -> Person {
        Person {
            id: Uuid::new_v4(),
            name: "John Doe",
            birthdate: "1970-01-01T00:00:00+09:00"
                .parse::<DateTime<FixedOffset>>()
                .unwrap(),
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn test_default_person_has_common_name() {
        let default_person = Person::default();
        assert_eq!(default_person.name, "John Doe");
    }
}
