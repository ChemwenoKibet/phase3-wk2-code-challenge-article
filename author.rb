require_relative "./article.rb"
class Author
    attr_reader :name, :article #attribute to set authors name

    def initialize(name)
        @name = name
        @article = [] #empty array to hold articles written by author
    end
    
    #returns frozen duplicate to prevent modification
    def articles
        @articles 
    end
    
    #return list of unique magazines that author has wrtten
    def magazines
        @articles.map(&:magazine).uniq  
    end
    
    #takes mag and article arguments to create new article instances and add it to @articles array
    def add_article(magazine, title)  
        article = Article.new(self, magazine, title)
        @articles << article
        article
    end
    
    #returns a list of unique categories of magz that author has written
    def topic_areas 
        magazines.map(&:category).uniq
    end    

end


