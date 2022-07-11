require "spec"

require "../lib/past_tense_inflector"

module PasteTenseInflectorSpec
  def self.subject
    PastTenseInflector.new
  end

  describe PastTenseInflector do

    it "inflects verbs" do
      subject["cook"].should eq("cooked")
      subject["cook_pizza"].should eq("pizza_cooked")
    end

    it "uses exception list" do
      subject["understand_problem"].should eq("problem_understood")
    end

  end
end