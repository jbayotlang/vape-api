class JuiceSerializer < ActiveModel::Serializer
  attributes :id, :name, :ratio, :maker, :created

  def created
    object.created_at
  end

end
