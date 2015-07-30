##Programajama

###Description
This app is meant to be similar to LearnHowToProgram. The main goal is to work on getting CRUD functionality throughout the site, and to use capybara for testing.

To follow along and build your own version of this app go to <a href="https://www.learnhowtoprogram.com/lessons/rebuild-this-site-hackernews-tuesday-classwork" target="#">LearnHowToProgram</a>

###To open the site locally run the following code:

```
git clone https://github.com/adammcfadden/programajama_rails.git
bundle
rake db:create
rake db:migrate
rails s
```

If testing also run: 

```
rake db:test:prepare
```

###Author
Adam McFadden

###License
GPL v2

Copyright &copy; Adam McFadden 2015.
