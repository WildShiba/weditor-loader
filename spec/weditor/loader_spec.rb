RSpec.describe Weditor::Loader do
  it "has a version number" do
    expect(Weditor::Loader::VERSION).not_to be 'nil'
  end

  describe "Template.load" do

    before(:each) do
      path = "#{File.dirname __FILE__}/templates/test.html"
      @template = Weditor::Loader::Template.load(path)
    end

    it "屬性檢查" do
      expect(@template.xpath("//div[@id='od']/@data-twedr").text).to eq('文稿')
    end 
  end  


end
