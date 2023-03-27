Project Title
Heroes API

Introduction
For this project, I worked  on an API for tracking heroes and their superpowers.

The instructions below will help you through the process of ideating and planning your app: deciding on your models and relationships, planning how the information will be laid out on the page, etc. You should work through all the planning steps before you start doing any coding.

Requirements
For this project, you must:

Create a Rails API backend.
Have at least three resources (three DB tables).
Project Setup
Once you have the plan in place for the application you want to build take the following steps:

Create a new Rails project.
Create a new GitHub repository (NB: ENSURE IT IS PRIVATE).
Add your TM as a contributor to the project. (This is only for grading purposes. We promise, we won't steal your code)
Ensure you regularly commit to the repository. Ensure there is a serializer
Project Guidelines
Your project should conform to the following set of guidelines:

Models
You need to create the following relationships:

A Hero has many Powers through HeroPower
A Power has many Heros through HeroPower
A HeroPower belongs to a Hero and belongs to a Power
Start by creating the models and migrations for the following database tables:


Heroes
  name: string
  super_name: string

Powers
  name: string
  description: text

HeroPowers
  strength: string (Enum ['Strong', 'Weak', 'Average'])
  hero_id: integer
  power_id: integer
Add any code needed in the model files to establish the relationships.

Then, run the migrations.

You are welcome to generate your own seed data to test the application.

Validations
Add validations to the HeroPower model:

strength must be one of the following values: 'Strong', 'Weak', 'Average'
Add validations to the Power model:

description must be present and at least 20 characters long
Routes
Set up the following routes. Make sure to return JSON data in the format specified along with the appropriate HTTP verb.

GET /heroes

Return JSON data in the format below:

css
Copy code
[    {    "id": 1,    "name": "Kamala Khan",    "super_name": "Ms. Marvel"  },  {    "id": 2,    "name": "Doreen Green",    "super_name": "Squirrel Girl"  },  {    "id": 3,    "name": "Gwen Stacy",    "super_name": "Spider-Gwen"  }]
GET /heroes/:id

If the Hero exists, return JSON data in the format below:

{
  "id": 1,
  "name": "Kamala Khan",
  "super_name": "Ms. Marvel",
  "powers": [
    {
      "id": 1,
      "name": "super strength",
      "description": "gives the wielder super-human strengths"
    },
    {
      "id": 2,
      "name": "flight",
      "description": "gives the wielder the ability to fly through the skies at supersonic speed"
    }
  ]
}
If the Hero does not exist, return the following JSON data, along with the appropriate HTTP status code:


{
  "error": "Hero not found"
}
``