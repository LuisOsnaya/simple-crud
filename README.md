:steam_locomotive::train::train::train::train::train:

[![forthebadge](http://forthebadge.com/images/badges/made-with-ruby.svg)](http://forthebadge.com) [![forthebadge](http://forthebadge.com/images/badges/built-with-love.svg)](http://forthebadge.com)

## Install

- bundle

- rails db:create db:migrate

- rails s


## Endpoint

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
