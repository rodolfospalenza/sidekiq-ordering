class CreateResourceWorkflow < Gush::Workflow
  def configure(number_of_jobs = 1)
    number_of_jobs.times do |i|
      run CreateJob, params: { timer: Time.current }, before: UpdateJob
    end

    run UpdateJob, params: { timer: Time.current }
  end
end
