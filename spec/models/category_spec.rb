require 'spec_helper'

describe Category do
  it { should have_many(:videos) }

  describe '#recent_videos' do
    it 'returns an array of all videos if the total number is less than six' do
      category = Category.create(name: "Action")
      Video.create(title: "Fury", description:"A War movie.", category: category)
      Video.create(title: "Big Hero", description:"A Hero movie.", category: category)
      Video.create(title: "Interstellar", description:"A Space movie.", category: category)
      expect(category.recent_videos.count).to eq(3)
    end

    it 'returns an array of six videos if the total number of videos is at least six' do
      category = Category.create(name: "Action")
      7.times { Video.create(title: "test", description: "video", category: category) }
      expect(category.recent_videos.count).to eq(6)
    end

    it 'returns the video array in reverse chronological order' do
      category = Category.create(name: "Action")
      fury = Video.create(title: "Fury", description:"A War movie.", category: category, created_at: 1.day.ago )
      hero = Video.create(title: "Big Hero", description:"A Hero movie.", category: category, created_at: 2.days.ago )
      interstellar = Video.create(title: "Interstellar", description:"A Space movie.", category: category, created_at: 3.days.ago )
      expect(category.recent_videos).to eq([fury, hero, interstellar])
    end

    it 'returns the most recent six videos' do
      category = Category.create(name: "Action")
      6.times { Video.create(title: "test", description: "video", category: category) }
      oldest_video = Video.create(title: "yesterday's show", description: "the oldest video", category: category, created_at: 1.day.ago)
      expect(category.recent_videos).to_not include(oldest_video)
    end

    it 'returns an empty array if the category is empty' do
      category = Category.create(name: "Action")
      expect(category.recent_videos).to eq([])
    end
  end
end
