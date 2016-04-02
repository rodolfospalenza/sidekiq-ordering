class CreateJob < Gush::Job
  def work
    sleep(5)
    puts "CreateJob - #{params.inspect}"
  end
end
