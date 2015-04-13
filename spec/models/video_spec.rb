require 'spec_helper'

describe Video do
  it { should belong_to(:category)  }
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:description) }

  describe "#search_by_title" do
    it "should return an empty array if there is no match" do
      fury = Video.create(title: "Fury", description: "a war movie" )
      result = Video.search_by_title("random")
      expect(result).to eq([])
    end

    it "should return an empty array if the search term is an empty string" do
      fury = Video.create(title: "Fury", description: "a war movie" )
      result = Video.search_by_title("")
      expect(result).to eq([])
    end

    it "should return an array of one video title if there is one video that is a full match" do
      fury = Video.create(title: "Fury", description: "a war movie")
      hero = Video.create(title: "Hero", description: "a hero movie")
      result = Video.search_by_title("Fury")
      expect(result).to eq([fury])
    end

    it "should return an array of one video title if there is one video that is a partial match" do
      fury = Video.create(title: "Fury", description: "a war movie")
      result = Video.search_by_title("Fu")
      expect(result).to eq([fury])
    end

    it "should return an array of all matches ordered by created_at" do
      fury = Video.create(title: "Fury", description: "a war movie", created_at: 1.day.ago)
      futurama = Video.create(title: "Futurama", description: "a futuristic movie", created_at: 2.days.ago)
      result = Video.search_by_title("Fu")
      expect(result).to eq([fury, futurama])
    end

  end
end
