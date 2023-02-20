class Article
    attr_reader :author, :magazine, :title

    @@all = []

    def initialize(author, magazine, title)
        @author = author
        @magazine = magazine
        @title = title
        @@all << self
    end

    def to_s
        "#{@author} #{@magazine} #{@title}"
    end    
    
    def self.all
        @@all.dup.freeze
    end    

end


#TESTS

# puts article1 = Article.new("John", "magazine1", "The Wonders of the Universe")
# article2 = Article.new("Kilo", "magazine2", "10 Must-Have Fashion Items for Fall")
# article3 = Article.new("poli", "magazine1", "The Science of Climate Change")
# Margs = Article.new("Margs", "Mag2", "Mag3")
# puts Margs

# puts article1
# puts article1
# puts article2
# puts article3
