class Company < Client
    validates :name, presence: true
end