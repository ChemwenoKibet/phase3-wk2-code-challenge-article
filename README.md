# Article code challenge

# Code Challenge - Articles Without AR


## Introduction
For this assignment, you will be working with a Magazine domain.

We have three models: Author, Article, and Magazine.

For our purposes, an Author has many Articles, a Magazine has many Articles, and Articles belong to both Author and Magazine.

Author - Magazine is a many to many relationship.

Note: You should draw your domain on paper or on a whiteboard before you start coding. Remember to identify a single source of truth for your data.

## Configuration
To run this challenge use the following command line:
```bash
ruby bin/run
```

## Topics
- Classes and Instances
- Class and Instance Methods
- Variable Scope
- Object Relationships
- Arrays and Array Methods

 
## Instructions
Build out all of the methods listed in the deliverables. The methods are listed in a suggested order, but you can feel free to tackle the ones you think are easiest. Be careful: some of the later methods rely on earlier ones.

**Remember!** This code challenge does not have tests. You cannot run rspec and you cannot run learn. You'll need to create your own sample instances so that you can try out your code on your own. Make sure your associations and methods work in the console before submitting.

Writing error-free code is more important than completing all of the deliverables listed - prioritize writing methods that work overwriting more methods that don't work. You should test your code in the console as you write.

Similarly, messy code that works is better than clean code that doesn't. First, prioritize getting things working. Then, if there is time in the end, refactor your code to adhere to best practices. Examples of best practices might be to use higher-level array methods such as map, select, and find when appropriate in place of each, or, when you encounter duplicated logic, to extract it into a shared helper method.

Before you submit! Save and run your code to verify that it works as you expect. If you have any methods that are not working yet, feel free to leave comments describing your progress.

## Deliverables
1. Create the following classes and their respective methods.

2. Set up your application so it runs from a configured run file. 

3. Create instances of the classes on the run file and try out the methods you just created.

4. Use the notation # for instance methods, and .(dot) for class methods.

5. Feel free to build out any helper methods if needed.

### Initializers, Readers, and Writers
 

1. Author

Author#initialize(name)
- An author is initialized with a name, as a string.
- A name cannot be changed after it is initialized.


Author#name
- Returns the name of the author
2. Magazine

Magazine#initialize(name, category)
- A magazine is initialized with a name as a string and a category as a string
- The name and category of the magazine can be changed after being initialized.

Magazine#name
- Returns the name of this magazine

Magazine#category
- Returns the category of this magazine

Magazine. all
- Returns an array of all Magazine instances
3. Article

Article#initialize(author, magazine, title)
- An article is initialized with an author as an Author object, a magazine as a Magazine object, and title as a string.
- An article cannot change its author, magazine, or title after it has been initialized.

Article#title
- Returns the title for that given article

Article. all
- Returns an array of all Article instances

### Object Relationship Methods
1. Article

Article#author
- Returns the author for that given article

Article#magazine
- Returns the magazine for that given article

2. Author

Author#articles
- Returns an array of Article instances the author has written

Author#magazines
- Returns a unique array of Magazine instances for which the author has contributed to

3. Magazine
Magazine#contributors

- Returns an array of Author instances who have written for this magazine

### Associations and Aggregate Methods
1. Author

Author#add_article(magazine, title)
- Given a magazine (as a Magazine instance) and a title (as a string), creates a new Article instance and associates it with that author and that magazine.

Author#topic_areas
- Returns a unique array of strings with the categories of the magazines the author has contributed to

2. Magazine

Magazine.find_by_name(name)
- Given a string of magazine name, this method returns the first magazine object that matches

Magazine#article_titles
- Returns an array string of the titles of all articles written for that magazine

Magazine#contributing_authors
- Returns an array of authors who have written more than 2 articles for the magazine