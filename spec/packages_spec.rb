require 'rspec'
require 'json'
require 'uri'

describe "Packages" do

  before do
    @packages = JSON.parse(IO.read('packages.json'))["packages"]
  end

  it "json is valid" do
    @packages.class.should == Hash
  end

  it "has plugins, color schemes, file templates, and project templates" do
    package_types = %w(plugins color_schemes file_templates project_templates)
    package_types.each { |type| @packages.should have_key type }
  end

  it "every color scheme url points to a raw file" do
    links = @packages['color_schemes'].map { |package| package['url'] }
    links.each do |link|
      link.should match ".dvtcolortheme$"
    end
  end

  it "should have valid URLs for packages" do
    @packages.values.flatten.each do |package|
      package.should have_key "url"
      package["url"].should =~ URI::regexp
    end
  end
end
