require "rails_helper"









describe "Image assets" do
	it "are available" do
		# Favicons
		expect(File.exist?("app/assets/images/favicon.ico")).to be true
		expect(File.exist?("app/assets/images/apple-touch-icon.png")).to be true
		expect(File.exist?("app/assets/images/apple-touch-icon-72x72.png")).to be true
		expect(File.exist?("app/assets/images/apple-touch-icon-114x114.png")).to be true


		# Logos
		expect(File.exist?("app/assets/images/logos/sitatunga_city_logo-400x400.png")).to be true


		# Slides
		expect(File.exist?("app/assets/images/slides/1.jpg")).to be true
		expect(File.exist?("app/assets/images/slides/2.jpg")).to be true
		expect(File.exist?("app/assets/images/slides/3.jpg")).to be true
		expect(File.exist?("app/assets/images/slides/4.jpg")).to be true
		expect(File.exist?("app/assets/images/slides/5.jpg")).to be true
		expect(File.exist?("app/assets/images/slides/6.jpg")).to be true
		expect(File.exist?("app/assets/images/slides/7.jpg")).to be true
		expect(File.exist?("app/assets/images/slides/8.jpg")).to be true
	end
end









describe "PDF assets" do
	it "are available" do
		# PDFs
	end
end
