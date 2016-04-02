class UpdateJob
  include Sidekiq::Worker

  def perform(time)
    puts "UpdateJob - #{time}"
  end
end
