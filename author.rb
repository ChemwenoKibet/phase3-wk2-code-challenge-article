class Author
    attr_reader :name

    def initialize(name)
        @name = name
        @articles = []
    end
    
    def articles
        @articles.dup.freeze
    end
    
end