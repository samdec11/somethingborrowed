# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require "spec_helper"

describe Category do
  describe ".create" do
    it "should have an id and a name" do
      cat = Category.create(name:"books")
      expect(cat).to be_an_instance_of(Category)
      expect(cat.id).to eq 1
      expect(cat.name).to eq "books"
    end
  end
end
