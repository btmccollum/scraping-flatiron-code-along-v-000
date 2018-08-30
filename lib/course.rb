class Course
<<<<<<< HEAD
  attr_accessor :title, :schedule, :description
  @@all = []

  def initialize
    @@all << self
  end

=======

  attr_accessor :title, :schedule, :description

  @@all = []

  def initialize
    @@all << self
  end

  # def title
  # end
  #
  # def schedule
  # end
  #
  # def description
  # end

>>>>>>> 86c45e7187ad59080f69b72231f9675dcba21e34
  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end
end
