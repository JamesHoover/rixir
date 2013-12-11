class Speciman
  include Mongoid::Document
  field :id, type: String
  field :label, type: String
  field :type, type: String
end
