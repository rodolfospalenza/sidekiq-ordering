class UpdateJob < ActiveJob::Base
  queue_as :default

  def perform
  end
end
