class Band < ActiveRecord::Base
  has_and_belongs_to_many(:venues)
  
  validates(:name, {:presence => true})
  before_save(:title_case)

private

  define_method(:title_case) do
    split_name = self.name.split()
    split_name.each() do |word|
      word.capitalize!()
    end
    self.name = split_name.join(" ")
  end
end
