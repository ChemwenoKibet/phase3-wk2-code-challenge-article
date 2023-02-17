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
end    