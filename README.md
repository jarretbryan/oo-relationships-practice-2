# OO Relationships Practice
Hello everyone! This afternoon we'll be practicing OO relationships.
# Step 1
Build out a domain for Owners, Pets, Cats.
An owner **has many** pets
An owner **has many** cats **through** pets
A cat **has many** pets
A cat **has many** owners **through** pets
A pet **belongs to** an owner and **belongs to** a cat
---
# Build out the following methods:
### Owner
* #pets
    * should return all pet instances associated with a particular owner instance
* #cats
    * should return all cats associated with a particular owner instance
* #sick_cats
    *should return all cats who are sick
### Cat
* Should initialize with a name and sick:boolean
* #pets
    * should return all pet instances associated with a particular cat instance
* #owners
    * should return all owner instances associated with a cat instance
---
