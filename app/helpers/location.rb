class BasicLocation
  def self.setup
    self.authorize!
  end

  def self.authorize!
    @manager = Locman::Manager.new(
      background: true, # for background updates
      accuracy: :ten_meters,
      distance_filter: 20 # in meter
    )

    @manager.after_authorize = lambda do |authorized|
      puts "Authorized!" if authorized
    end

    @manager.authorize!

    self
  end

  def self.update
    @manager.on_update = lambda do |locations|
      locations.each { |loc| puts "(#{loc.latitude}, #{loc.longitude})" }
    end

    @manager.update! # Starts receiving normal location updates
    @manager.update_significant! # Starts receiving significant location updates

    self
  end
end
