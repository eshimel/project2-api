#
class EntrySerializer < ActiveModel::Serializer
  attributes :id, :title, :isbn
end
