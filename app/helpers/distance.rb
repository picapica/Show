class BasicDistance
  def self.setup
    @distance = Motion::Distance.new
    @distance.activity_type = CLActivityTypeFitness
    @distance.accuracy = KCLLocationAccuracyBest
  end

  def self.get
    @distance.get do |location|
      puts location[:total]
    end
  end

  def self.stop_tracking
    @distance.stop_updating
  end
end
