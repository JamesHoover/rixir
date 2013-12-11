class Subject
  include Mongoid::Document
  field :species, type: String
  embedded_in :specimen
end
