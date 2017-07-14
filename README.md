# bEer-commerce Site

#### _Nicky Santamaria_

## Description

An app with a list of products that can be added to a shopping cart.

## Refactor List

1. Ensure that users can't order a negative number of items.
2. Ensure users must enter a quantity before adding to cart.
3. Add flash messages for signing up, signing in and signing out.
4. Add Paperclip for product image upload.
5. Add product validations.
6. Fix the row height for products, which can quickly become uneven.
7. Add admin flash messages for adding, updating and deleting products.

## Technologies used / Prerequisites

* [Ruby](https://www.ruby-lang.org/en/downloads/)
* [Rails](http://rubyonrails.org/)
* [PostgreSQL](https://www.postgresql.org/docs/9.2/static/app-psql.html)
* [Git](https://git-scm.com/)
* [Materialize](http://materializecss.com/)
* AJAX
* bcrypt

## Installation

* `$ git clone https://github.com/nrsantamaria/went-to-bali-mwahaha`
* `$ cd went-to-bali-mwahaha`

## PostgreSQL Integration
* `$ postgres`
* `$ rake db:create`
* `$ rake db:migrate db:test:prepare`

## Seed database
* `$ rake db:reset`

## Development server

Run `rails s` for a dev server. Navigate to `http://localhost:3000/`. The app will automatically reload if you change any of the source files.

## Specifications

| Behavior |  Input   |  Output  |
|----------|:--------:|:--------:|
|Admin user adds a image to database.|Name => 'Picture', Cost => '50', Description => 'Fancy picture.', Portfolio => 'Landscape'| Name: Picture, Cost: $50, Description: Fancy Picture, Portfolio: Landscape
|One-to-many database relationship. |User adds a review to a image.|Review is listed under a specific image.|
|Admin user updates image|Name: Picture, Edit Product Name => 'Pretty Picture'|Name: Pretty Picture|
|Admin user deletes image| Name: Picture, Delete Image|User is taken to profile|
|User can select different portfolio types to have specific images displayed on the landing page.|Portfolio: Landscape |Name: Picture, Portfolio: Landscape|
|Validates all fields are filled out.|Validate: name, cost, description, file|If description blank => Error: Must fill out description|

## Known Bugs
* N/A

## License

*This software is licensed under MIT license.*

```
Copyright (c) 2017 Nicky Santamaria
```

![Home page](app/assets/images/home.png)
![Cart](app/assets/images/cart.png)
![Admin](app/assets/images/admin.png)
