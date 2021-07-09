class Dog
    attr_accessor :name
    
    @@all = []

    def initialize(name)
        # this method returns the newly created class instance
        @name = name
        save
    end

    def self.all
        @@all
    end

    def self.print_all
        puts @@all.map {|dog| dog.name}
    end

    def self.clear_all
        @@all.clear
    end

    def save
        # self is the current dog class instance
        @@all << self
    end
end