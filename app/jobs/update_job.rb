class UpdateJob < Gush::Job
  def work
    puts "UpdateJob - #{params.inspect}"
  end
end
