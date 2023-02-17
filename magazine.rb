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
end    