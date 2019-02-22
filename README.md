:steam_locomotive::train::train::train::train::train:

[![forthebadge](http://forthebadge.com/images/badges/made-with-ruby.svg)](http://forthebadge.com) [![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)

## Install

- bundle

- rails db:create db:migrate

- rails s


## Endpoint

### Students
	- get `localhost:3000/students/`
	- get `localhost:3000/students/:id`
	- post `localhost:3000/students/`
		```
			{
				"name": "Luis",
				"first_last_name": "Osnaya",
				"second_last_name": "Balderas",
				"status": "single"
			}
		```
	- put `localhost:3000/students/:id`
		```
			{
				"name": "Luis",
				"first_last_name": "Osnaya",
				"second_last_name": "Balderas",
				"status": "single"
			}
		```
	- delete `localhost:3000/students/:id`

### Task
- get `localhost:3000/tasks/`
- get `localhost:3000/tasks/:id`
- post `localhost:3000/tasks/`
```
	{
		"name": "Primer tarea"
	}
```
- put `localhost:3000/tasks/:id`
	```
		{
			"name": "Actualiza tarea"
		}
	```
- delete `localhost:3000/tasks/:id`

	- put `localhost:3000/tasks/:id/assign_student/:id`
