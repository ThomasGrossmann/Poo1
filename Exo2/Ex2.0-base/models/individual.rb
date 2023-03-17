class Individual < Client
  validates :firstname, length: { minimum: 2 }
  validates :lastname, length: { minimum: 2 }
end