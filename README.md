# Phase 3 Mock Challenge: Kaiju Attack!

We have three models: `City`, `Kaiju`, and `MonsterAttack`.

For our purposes, a `City` has many `MosnterAttack`s, a `Kaiju` has many
`MonsterAttack`s, and a `MonsterAttack` belongs to a `City` and a `Kaiju`.

`City` - `Kaiju` is a many to many relationship.

## Instructions

To get started, run `bundle install` while inside of this directory.

Build out all of the methods listed in the deliverables. The methods are listed
in a suggested order, but you can feel free to tackle the ones you think are
easiest. Some of the later methods may rely on earlier ones.

This code challenge has no tests. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console.

We've provided you with a tool that you can use to test your code. To use it,
run `rake console` from the command line. This will start a `pry` session with
your classes defined. You can test out the methods that you write here. You are
also encouraged to use the `seeds.rb` file to create sample data to test your
models and associations.

## What You Already Have

The starter code has migrations and models for the initial `City` and
`Kaiju` models. The schema currently looks like this:

### `cities` Table

| Column       | Type    |
| ------------ | ------- |
| name         | String  |
| population   | Integer |

### `kaijus` Table

| Column  | Type    |
| ------- | ------- |
| name    | String  |
| powers  | String  |

You will need to create the migration for the `monster_attacks` table using the
attributes specified in the deliverables below.

## Deliverables

Write the following methods in the classes in the files provided. Feel free to
build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class
methods.

Remember: Active Record gives your classes access to a lot of methods already!
Keep in mind what methods Active Record gives you access to on each of your
classes when you're approaching the deliverables below.

### Migrations

Before working on the rest of the deliverables, you will need to create a
migration for the `monster_attacks` table.

- A `MonsterAttack` belongs to a `City`, and a `MonsterAttack` also belongs to a
  `Kaiju`. In your migration, create any columns your `monster_attacks` table will
  need to establish these relationships.
- The `monster_attacks` table should also have:
  - A `date` column that stores a string.
  - An `incident_report` column that stores a string.

**Once you've set up your `monster_attacks` table**, work on building out the following
deliverables.

### Object Relationship Methods

Use Active Record association macros and Active Record query methods where
appropriate (i.e. `has_many`, `has_many through`, and `belongs_to`).

#### MonsterAttack

- `MonsterAttack#city`
  - should return the `City` instance for this monster attack
- `MonsterAttack#kaiju`
  - should return the `Kaiju` instance for this monster attack

#### City

- `City#monster_attacks`
  - returns a collection of all the monster attacks for the `City`
- `City#kaijus`
  - returns a collection of all the kaijus who have attacked the `City`

#### Kaiju

- `Kaiju#monster_attacks`
  - should return a collection of all the monster attacks that the `Kaiju` has done
- `Kaiju#cities`
  - should return a collection of all the cities that the `Kaiju` has attacked

Use `rake console` and check that these methods work before proceeding. For
example, you should be able to call `Kaiju.first.cities` and see a list
of the cities for the first kaiju in the database based on your seed
data; and `Cities.first.kaijus` should return the kaijus for the first
city in the database.

### Aggregate and Association Methods

#### Kaiju

- `Kaiju#full_name`
  - returns the full name of the kaiju, with the first name and the last name
    concatenated, Western style.
- `Kaiju.most_attacks`
  - returns the kaiju with the most monster_attacks
