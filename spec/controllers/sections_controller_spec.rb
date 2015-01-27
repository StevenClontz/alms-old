require 'spec_helper'

describe SectionsController do
  render_views
  describe "index" do
    before do
      Section.create!(name: 'Cal III - Fall 2014')
      Section.create!(name: 'Cal II - Spring 2015')
      Section.create!(name: 'Intro to Advanced Math')

      xhr :get, :index
    end

    subject(:results) { JSON.parse(response.body) }

    context "when it indexes sections" do
      it 'should 200' do
        expect(response.status).to eq(200)
      end
      it 'should return three results' do
        expect(results.size).to eq(3)
      end
      it "should include 'Intro to Advanced Math'" do
        section_names = results.map{|hash| hash['name']}
        expect(section_names).to include('Intro to Advanced Math')
      end
    end

  end
end