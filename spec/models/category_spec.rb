require 'spec_helper'

describe Category do
  it { should have_many(:videos) }

  describe '#recent_videos' do
    it 'should return an array of all videos if the total number is less than six'
    it 'should return an array of six videos if the total number of videos is at least six'
    it 'returns the video array in reverse chronological order'
  end
end
