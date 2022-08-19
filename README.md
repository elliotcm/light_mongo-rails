LightMongo-Rails
================

LightMongo-Rails provides ActionPack compatibility for [LightMongo][lm], allowing you to use form_for and other such helpers.

Status
------
This project is long abandoned in favour of other contemporary ORMs.

Installation
------------

`gem install light_mongo-rails`, assuming you already have LightMongo and Rails 3 on the boil.

Usage
-----

    class MyModel
      include LightMongo::Model
    end
    
Then use like a normal LightMongo::Document.

NB: You are still welcome to include LightMongo::Document when in Rails, you just might hit some trouble using the ActionPack helpers.

[lm]:http://github.com/elliotcm/light_mongo
