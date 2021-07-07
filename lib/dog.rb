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
       # binding.pry
        @@all
    end

    def self.clear_all
        all.clear
    end

    def self.print_all
        dog_names = all.map do |dog|
            #binding.pry
                  dog.name.to_s
        end
        puts dog_names
    end

    def save
        self.class.all << self
    end

    

end