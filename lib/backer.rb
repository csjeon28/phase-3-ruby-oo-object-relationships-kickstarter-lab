class Backer
    attr_reader :name

    def initialize(name)
        @name = name
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        all_projects = ProjectBacker.all.select {|b| b.backer == self}
        all_projects.map do |p| p.project
        end
    end

end