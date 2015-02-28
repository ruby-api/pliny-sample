class Serializers::Post < Serializers::Base
  structure(:default) do |arg|
    {
      id:         arg.uuid,
      title:      arg.title,
      created_at: arg.created_at.try(:iso8601),
      updated_at: arg.updated_at.try(:iso8601),
    }
  end
end
