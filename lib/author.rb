require_relative "./article.rb"
class Author
    attr_reader :name, :article #attribute to set authors name

    def initialize(name, category)
        @name = name
        @category = category
        @article = [] #empty array to hold articles written by author
    end
    
    #returns frozen duplicate to prevent modification
    def articles
        @articles 
    end

    def to_s
        "#{name} (#{category})"
    end
    
    #return list of unique magazines that author has wrtten
    def magazines
        @articles.map(&:magazine).uniq  
    end
    
    #takes mag and article arguments to create new article instances and add it to @articles array
    def add_article(magazine, title)  
        # article = 
        Article.new(self, magazine, title)
        # @articles << article
        # article
    end
    
    #returns a list of unique categories of magz that author has written
    def topic_areas 
        magazines.map(&:category).uniq
    end    

end


#TESTS

# margs = Author.new("Margs", "science")
# puts author.name
# author2 = Author.new("Tazer Black","sports" )
# puts author2

# p margs.add_article("Science", "liko")