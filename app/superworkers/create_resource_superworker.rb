Superworker.define(:CreateResourceSuperworker, :location_ids) do
  batch location_ids: :location_id do
    CreateJob :location_id
  end

  UpdateJob Time.current
end
