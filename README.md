# README
Movie Vault allows the user to create a list of their movies, add tags to their movies, filter them, edit them, and sort them alphabetically.  It's a fun app that anyone can use!

Link to my app in production is here: https://movies-r-us.herokuapp.com/

* Installation
  - To install this app: git clone git@github.com:Cdunagan05/movie_vault.git
  - bundle
  - type "rails s" into the console and go to localhost 3000

* Testing
  - To test, simply run rspec in the console

* Author
  - Chase Dunagan

* Tutorial
  - Sign up
    1. Navigate to the root page
    2. click "Sign up"

  - Add a Movie
    1. Fill in the fields to add a movie.  
    2. Title is required
    3. note is optional.

  - Edit a Movie
    1. Click on "Edit Movie" and it will take you to a page to edit the movie where you can change the title, note, or even give it tags!

  - Give a movie Tags
    1. You can write different tags in the space provided, such as Drama or Comedy, and even combine them by separating them with a comma like "Drama, Comedy"
    2. To remove a tag, simply edit the movie and do not write that tag in the space provided.

  - Mark as watched or UNwatched
    1. To help you keep track of which movies you have watched or not watched, there is a lovely button which allows you to do that
    2. It greys out the watched movies, while your unwatched movies are still in white.

  - Filtering
    1. You can filter by typing into the filter box, or by clicking on the "show only my watched" or "show only my UNwatched" buttons.  
    2. You can also sort your list of movies, alphabetically.
    3. You can also click on any tags, and that will take you to a page where all the movies have been filtered by that tag!
