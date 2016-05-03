class ShopSerializer < ActiveModel::Serializer
  attributes :id, :name, :address, :hours, :sns_page, :longitude, :latitude
end
