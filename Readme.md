# Do You Read Me

## GA WDI London: Project 2

A Rails app to browse and review books.

![](https://github.com/CarrylSorene/ga-project-two/blob/master/app/assets/images/bookapp.png)

### Approach / How it works

Users can browse the main page of the site to discover a new book and see the beginning of a plot summary and the average rating.

If they click on the book's title or cover image, they're taken to a page all about that book with the full summary and reviews, a form to add their own review, an edit button that leads to a form on another page, and a delete button that brings up an alert asking the user to confirm they want to delete the book.

At the top of the each page is a linked call-to-action to Add a Book which leads to page with a form for them to add a new book to the app.

###The build

* HTML
* CSS
* PureCSS
* Ruby on Rails
* ActiveRecord
* PostgreSQL
* Carrierwave

###Problems & Challenges

The biggest challenge I faced was combining two models, the book and review, into one form so each review was attached to the correct book.

### Future Plans

Deploy to Heroku so the working app can be used.