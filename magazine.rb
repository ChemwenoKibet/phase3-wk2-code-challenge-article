class Magazine 
    attr_reader :name, :category
    @@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @@name << self
    end    

    def self.all
        @@all.dup.freeze
    end    

    def article_titles
        Article.all.select {|article| article.magazine == self }.map(&:title)
    end    

    def contributing_authors
        author_counts = Hash.new(0)
        Article.all.select{|article| article.magazine == self }.each do |article|
            author_counts [article.author] += 1
        end
        author_counts.select {|author, count| count > 2 }.keys
    end
    
    def self.find_by_name(name)
        @@all.find {|magazine| magazine.name == name }
    end    

    def name = (name)
        @name = name
    end
    
    def category=(category)
        @category = category
    end    
    
end    