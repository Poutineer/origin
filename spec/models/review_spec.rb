require("rails_helper")

RSpec.describe(Review, :type => :model) do
  xcontext("creating a record") do
    let(:model) do
      create(:review)
    end

    pending("is valid") do
      expect(model).to(be_valid)
    end

    pending("saves to the database") do
      expect(model).to(be_persisted)
    end
  end
end
