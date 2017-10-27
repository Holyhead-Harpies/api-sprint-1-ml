# Bangazon API (Sprint #1)
This is the API for interacting with the Bangazon database. The database includes tables for data about employees, departments, training programs, and employee computers.  The database also includes customers, products, orders, and payment information.

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites
The Bangazon API uses Ruby version 2.4.2, Rails version 5.1.4, and SQLite version 3.1.6.  You will also need to install the Bundle gem.

### Installing
1. Clone the Bangazon API repository and move to the api directory
```
git clone https://github.com/Holyhead-Harpies/api-sprint-1-ml.git & cd $_
```
2. Install the gem dependencies
```
bundle install
```
3. Set up the database
```
rails db:migrate
```
4.  Seed the database using Faker
```
rails db:seed
```
5. Run the rails server. The api will be available at http://localhost:3000
```
rails s
```
## Testing
The Bangazon API makes use of the Rspec gem. To set up the Rspec directories, run:
```
rails g rspec:install
```

To run tests enter:
```
bundle exec rspec
```

## Using the API
The following end points are available when the API server is running:
Developers can access, add, edit, and delete records from the following resources:
 * Customers /customers & /customers/id GET, POST, PATCH
 * Employees /employees & /employees/id GET, POST, PATCH
 * Products /products & /products/id GET, POST, PATCH, DELETE
 * Payment Types /payment_types & /payment_types/id GET, POST, PATCH, DELETE
 * Products /products & /products/id GET, POST, PATCH, DELETE
 * Orders /orders & /orders/id GET, POST, PATCH, DELETE
 * Computers /computers & /computers/id GET, POST, PATCH, DELETE
 * Training Programs /training_programs & /training_programs/id GET, POST, PATCH, DELETE

 * All customers without orders can be displayed /customers/?active=false
 * Specific orders queried also return an array of products in the order

The following limitations have been put on data resources:
* Customers cannot be deleted
* Employees cannot be deleted
* Only one department can have a supervisor (only one employee per department can be amrked as a supervisor)
* A computer cannot have a decommissioned date that precedes the commissioned date
* A training program cannot be deleted after its start date

The API has a CORS policy set so that the API can only be accessed from a specified domain.

## Contributors

[Gilbert Diaz](https://github.com/diazgilberto)

[Bryon Larrance](https://github.com/beelarr)

[Michael Lindstromm](https://github.com/michaellindstromm)

[Fang W. Shen](https://github.com/fang-w-shen)

[Jeremy Wells](https://github.com/jsheridanwells)

