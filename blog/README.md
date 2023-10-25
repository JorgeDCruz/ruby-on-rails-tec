# Blog
### Ruby on rails proyect

<br>

## Versions
#### Ruby
~~~
7.1.1
~~~
#### Ruby on rails
~~~
3.2.2
~~~
#### SQLite
~~~
3.43.2 
~~~

<br>

## To start project
~~~
ruby bin/rails server
~~~

<br>

## Create Controller 
~~~
bin/rails generate controller [NOMBRE] index --skip-routes
~~~

<br>

## Create Model
~~~
C:\...\bin rails generate model Article title:string body:text
~~~

<br>

## Database migrations
Migrations are used to change the structure of a database, like adding tables
~~~
C:\...\bin rails db:migrate
~~~

<br>

## Rails console
~~~
C:\..\bin rails console
~~~
### Create new db object
If a model is already created, we can make an object from the model and insert it into the DB with:
~~~
article = Article.new(title: "Hello Rails", body: "I am on Rails!")
article.save
~~~
Assuming we have a model article with the following atributes:
~~~ ruby
t.string :title
t.text :body
~~~