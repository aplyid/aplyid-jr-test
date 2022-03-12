# APLYiD Junior Engineer Test

## Application
The TODO App allows a user to add reminders of things they need to do. Here are the requirements for the app.

 - Users can add, delete and see their todos.
 - Users can mark each todo as completed.

## Requirements
 - Ruby v2.7.5
 - Rails v6.1.5

## Installation
Please clone this repository first. 
Run:
```
rails db:setup
rails db:migrate
rails db:seed
```
Once you have done the step above, run:
```
rails s
```
In order to run the rails server. Go to http://localhost:3000/ and you should see the rails homepage.

## Your tasks
You have to build the front end for this application and add more features in the backend.
all the required endpoints are already done for you, in order to see all the available routes, run:(take a look at api/v1 ones)
```
rails routes
```

### backend
 - create a new migration to add a new column to exisiting tasks table. The new column is called `completed`, its type is a boolean and must be default to false
 - add a new method in the controller, in order to handle updating the completed status for each task.

### front end
Using the current endpoints in the application server, build a page which users can
 - See a list of all stored tasks
 - Create a new task
 - Delete a task
 - Update the completed status of a task

## IMPORTANT NOTES
 - For the front end part, you must use Vuejs OR Vanilla Javascript
 - There is no design or design requirements for the front end, However, we care about UI/UX, any attention to the details in the UI will be noticed. Think about what UI elments/componets are the best for each case, for example, button vs checkbox for updating the completed status, or use animations?
 - We care about Simple code, readable code
 - Use comments whenever is appropriate in your code
 - Try to have meaningful commit messages

## Not required but extra bonus
- Write automated test

## After you are done
Please send me a link to the repository of your code with any instractions needed for us to test and check your code and the application.
milad@aplyid.com

Good luck ✌️
