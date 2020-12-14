class Project
    attr_accessor :title

    @@all = []
    
    def initialize(title)
        @title = title
        @@all << self
    end

    def self.all
        @@all
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        my_backers = ProjectBacker.all.select{|probak| probak.project == self}
        my_backers.collect{|probak| probak.backer}
    end

end