# Hells Kitchen

This repository requires and has been tested on Ruby v2.7.4 and is based on Rails 5.2.8.

RSpec and Shoulda-Matchers have been installed and set up.

## Setup

1. fork this repo
2. clone your fork
3. `git clone <repo_name>`
4. `cd <repo_name>`
5. `bundle install`
6. `rails db:{drop,create,migrate,seed}`

When you run `bundle exec rspec`, you should have 11 failing tests to start.  

## Instructions

* Work on this assessment independently. DO NOT discuss with anyone.
* You are allowed to use any references including notes, Google, lesson plans, etc.
* Read each story carefully before you start working.
* Commit Frequently, about every 15 - 30 minutes
* Push your code to your fork **once the time is up (not before!)**

## Submission

**Once the time for the assessment is up**, push your code to your fork and create a pull request to the `turingschool-examples` repository. Include the following:

* Your Name
* A reflection on how you felt you did with this challenge and what story you got through

## Requirements

* TDD all new work
* model methods and relationships must be fully tested.

## Not Required

* No visual styling is required or expected
* You do not need to test for or create any model validations.

###  Overview

We are creating an application to track recipes and ingredients at Hell's Kitchen. 

Recipes will have a name, complexity and genre. For example:  `name: "Pasta", complexity: 2 (integer), genre: "Italian"`.

Ingredients will have a name and a cost stored as an integer. Example: `name: "noodles", cost: 3`


Make sure all 11 failing tests you started with are passing before beginning user stories. 
 
### User Stories
 
```
User Story 1

As a visitor,
When I visit '/ingredients'
I see a list of all the ingredients including their name and cost
(e.g. "Ground Beef: 2"
     "Salt: 4")
```
 
```
User Story 2

As a visitor,
When I visit '/recipes/:id',
Then I see the recipe's name, complexity and genre,
and I see a list of the names of the ingredients for the recipe.
```


```
User Story 3

As a visitor,
When I visit '/recipes/:id'
I see the total cost of all of the ingredients in the recipe.
(e.g. "Total Cost: 22")
```

---
### Extension

```
Extension 1
Ingredients Sorted Alphabetically

As a visitor,
When I visit '/ingredients',
Then I see that the list of ingredients is sorted alphabetically by name
```	

```
Extension 2
Add an Ingredient to a Recipe

As a visitor
When I visit '/recipes/:id'
Then I see a form to add an ingredient to this recipe.
When I fill in a field with an existing ingredient's ID,
And I click submit,
Then I am redirrected to the recipe's show page,
And I see the new ingredient listed for this recipe.
```