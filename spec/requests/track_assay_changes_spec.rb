require 'spec_helper'

describe "TrackAssayChanges" do
  describe "GET /track_assay_changes" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get track_assay_changes_path
      response.status.should be(200)
    end
  end
end
