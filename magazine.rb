require_relative "./article"
class Magazine 
    attr_reader :name, :category
    @@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @@all << self
    end    

    #returns a frozen duplicate of an array containing all the Magazine instances.
    def self.all  
        @@all.dup.freeze
    end    

    #returns a list of article titles published by mag instances
    def article_titles #returns a list of article titles published by mag instances
        Article.all.select {|article| article.magazine == self }.map(&:title)
    end    

    #returns a list of authors who have contributed more than two articles to the magazine instance
    def contributing_authors 
        author_counts = Hash.new(0)  
        Article.all.select{|article| article.magazine == self }.each do |article|
            author_counts [article.author] += 1
        end
        author_counts.select {|author, count| count > 2 }.keys
    end
    
    #takes a name argument and returns the magazine instance with that name.
    def self.find_by_name(name)
        @@all.find {|magazine| magazine.name == name }
    end   
    
    #this method returns the first magazine object that matches
    def self.find_by_name(name)
        Article.all.find { |magazine| magazine.name == name}
    end



    def name(name)
        @name = name
    end
    
    def category(category)
        @category = category
    end    
    
end    



