# APLYiD Junior Engineer Test

## Application
The TODO App allows a user to add reminders of things they need to do. Here are the requirements for the app.

 - Users can add, delete and see their todos.
 - Users can mark each todo as completed.

## Requirements
 - Ruby v2.7.5
 - Rails v6.1.5

## Prerequisites and useful information
You must have a functional installation of Rails and Ruby. There are many different ways of installing both and is up to you to figure out how to install those dependencies.

One tool to have in mind if you don't want to override your local ruby: rbenv

Rails and ruby in general uses "gems" to extend their functionalities and `bundle` is a tool to facilitate the first installation.

It's up to you to navigate through that new ecosystem but if we had to do a parallel it's the same principle as npm, node modules and babel.

The controller's code is voluntarily simple, it is up to you to make it better and use some Rails mechanism to refactor that controller to be more "state of the art"

There is a chance that you bump into CORS policies issues in the browser and/or from the API. To allow requests to be accepeted from a different domain in the API, look at `config/initializers/cors.rb`. Front end policies and configurations are your responsibility if necessary.

## Installation
Please clone/fork this repository first and create a separate branch and then
Run:
```
bundle install
rails db:create
rails db:migrate
rails db:seed
```
Once you have done the steps above, run:
```
rails s
```
In order to run the rails server. Go to http://localhost:3000/ and you should see the rails homepage.

You can also double check the API is functional by using Postman (or any other tool to send requests) to verify everything is ready for you to start by sending a `GET` to `https://localhost:3000/api/v1/tasks`

```
$> curl -G http://localhost:3000/api/v1/tasks

[{"id":5,"title":"Go for run","body":"","created_at":"2022-03-13T22:21:02.575Z","updated_at":"2022-03-13T22:21:02.575Z"},{"id":4,"title":"Go to supermarket","body":"Buy Milk, Eggs and Bread!","created_at":"2022-03-13T22:21:02.570Z","updated_at":"2022-03-13T22:21:02.570Z"},{"id":3,"title":"Learn Vuejs","body":"Vuejs docs are the best resources to learn the framework.","created_at":"2022-03-13T22:21:02.566Z","updated_at":"2022-03-13T22:21:02.566Z"},{"id":2,"title":"Learn Rails","body":"Watch online courses.","created_at":"2022-03-13T22:21:02.562Z","updated_at":"2022-03-13T22:21:02.562Z"},{"id":1,"title":"Finish APLYiD test","body":"Try to finish it by Sunday.","created_at":"2022-03-13T22:21:02.557Z","updated_at":"2022-03-13T22:21:02.557Z"}]
```

## Your tasks
You have to build the front end for this application and add more features in the backend.
all the required endpoints are already done for you, in order to see all the available routes, run: (take a look at api/v1 ones, you can ignore the `/rails/*`)
You don't need to make a separate repo for the front end code, just add a new directory to this source code (for example, name it `client`) and add all your fronend code (HTML, CSS, Javascript etc) in that directory.
```
rails routes
```

### backend
 - create a new migration to add a new column to the exisiting tasks table. The new column is called `completed`, its type is a boolean and must be default to false
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
- If you run the rails server and the front end server concurrently

## After you are done
Please create a pull request of your changes in your branch and add Milad and Eddy as reviwer to your pull request.

We want you to complete the subject and can be of help for the setup of the environment you're really blocking on it. Passed that point you're on your own.

Good luck ✌️
