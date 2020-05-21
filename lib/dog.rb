# Add your code here
require 'pry'

class Dog
    attr_reader :name
    @@all = []

    def initialize (name)
    @name = name
    self.save
    end

    def self.all
        @@all
    end

    def self.clear_all
        all.clear
    end

    def self.print_all
        dog_names = all.map do |dog|
            dog.name.to_s
        end
        puts dog_names
    end

    def save
        # @@all << self
        self.class.all << self
    end

    

end