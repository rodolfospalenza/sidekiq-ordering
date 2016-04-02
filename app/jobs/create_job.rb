class CreateJob
  include Sidekiq::Worker

  def perform(location_id)
    sleep(rand(1..9))

    variable =
      if location_id == 20
        true
      else
        false
      end

    # binding.pry if variable
    # raise "ERROR XPTO" if variable

    puts "CreateJob - #{location_id}"
  end
end
