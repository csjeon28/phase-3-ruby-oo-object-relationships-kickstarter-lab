class Project
    attr_reader :title

    def initialize(title)
        @title = title
    end

    def add_backer(backer)
        ProjectBacker.new(self, backer)
    end

    def backers
        all_backers = ProjectBacker.all.select {|p| p.project == self}
        all_backers.map do |b| b.backer
        end
    end
    
end