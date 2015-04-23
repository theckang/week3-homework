# REFERENCES
# Photo URLs found from google images. Please see the photo url link.
# Descriptions found from wikipedia. Source cited in the description, see below.

# Remove all existing entries in the database
Place.delete_all

[{:title=> "Willis Tower Sky Deck", :photo_url => "http://upload.wikimedia.org/wikipedia/commons/b/ba/Sears_Tower_ss.jpg", :admission_price => 19.50, :description => "A bustling community of business, tourism and culture, Willis Tower is so much more than North America's tallest building. It’s home to large well-known companies as well as hundreds of thriving businesses run by smart, passionate people. More than an office building, it’s a cultural landmark and iconic Chicago tourist attraction. Willis Tower is a pivotal point of reference – from across town, from financial centers on both coasts, and from Europe, Asia, and the Middle East. It’s a building with retail and commercial office space at heart, but also inspires tens of thousands of visitors to take in the amazing views of the city and experience the breathtaking Ledge. (Source: www.willistower.com)"},
{:title=> "Art Institute of Chicago", :photo_url => "http://media-2.web.britannica.com/eb-media/05/124305-004-F9B15553.jpg", :admission_price => 25.50, :description => "The Art Institute of Chicago (AIC) is an encyclopedic art museum located in Chicago's Grant Park. It features a collection of Impressionist and Post-Impressionist art in its permanent collection. Its holdings also include American art, Old Masters, European and American decorative arts, Asian art, modern and contemporary art, and architecture and industrial and graphic design. In addition, it houses the Ryerson & Burnham Libraries.
Tracing its history to a free art school and gallery founded in 1866, the museum is located at 111 South Michigan Avenue in the Chicago Landmark Historic Michigan Boulevard District. It is associated with the School of the Art Institute of Chicago and is overseen by Director and President Douglas Druick. At one million square feet, it is the second-largest art museum in the United States, after the Metropolitan Museum of Art. (Source: http://en.wikipedia.org/wiki/Art_Institute_of_Chicago)"},
{:title=> "Shedd Aquarium", :photo_url => "http://upload.wikimedia.org/wikipedia/commons/4/4d/Shedd_Aquarium_Chicago_August_2005.jpg", :admission_price => 8, :description => "Shedd Aquarium (formally the John G. Shedd Aquarium) is an indoor public aquarium in Chicago, Illinois in the United States that opened on May 30, 1930. The aquarium contains over 32,500 fish, and was for some time the largest indoor aquarium in the world with 5,000,000 US gallons (19,000,000 l; 4,200,000 imp gal) of water. Shedd Aquarium was the first inland aquarium with a permanent saltwater fish collection. It is surrounded by Museum Campus Chicago, which it shares with the Adler Planetarium and the Field Museum of Natural History. The aquarium has 2 million annual visitors; it was the most visited aquarium in the U.S. in 2005, and in 2007, it surpassed the Field Museum as the most popular cultural attraction in Chicago. It contains 1500 species including fish, marine mammals, birds, snakes, amphibians, and insects. The aquarium received awards for best exhibit from the Association of Zoos and Aquariums (AZA) for Seahorse Symphony in 1999, Amazon Rising in 2001, and Wild Reef in 2004. (Source: http://en.wikipedia.org/wiki/Shedd_Aquarium)"},
{:title=> "Museum of Science and Industry", :photo_url => "http://upload.wikimedia.org/wikipedia/commons/4/4e/Museum_of_Science_and_Industry.jpg", :admission_price => 27, :description => "The Museum of Science and Industry (MSI) is located in Chicago, Illinois, in Jackson Park, in the Hyde Park neighborhood between Lake Michigan and The University of Chicago. It is housed in the former Palace of Fine Arts from the 1893 World's Columbian Exposition. Initially endowed by Julius Rosenwald, the Sears, Roebuck and Company president and philanthropist, it was supported by the Commercial Club of Chicago and opened in 1933 during the Century of Progress Exposition.
It is the largest science museum in the western hemisphere. Among its diverse and expansive exhibits, the museum features a full-size replica coal mine, a German submarine (U-505) captured during World War II, a 3,500-square-foot (330 m2) model railroad, the first diesel-powered streamlined stainless-steel passenger train (Pioneer Zephyr), and the Apollo 8 spacecraft that carried the first humans to orbit the Moon.
Based on 2009 attendance, the Museum of Science and Industry was the second largest cultural attraction in Chicago. David R. Mosena has been President and CEO of the Museum since 1998."},
{:title=> "Adler Planetarium", :photo_url => "http://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/Adler_Planetarium_Front.JPG/1024px-Adler_Planetarium_Front.JPG", :admission_price => 12, :description => "Shedd Aquarium (formally the John G. Shedd Aquarium) is an indoor public aquarium in Chicago, Illinois in the United States that opened on May 30, 1930. The aquarium contains over 32,500 fish, and was for some time the largest indoor aquarium in the world with 5,000,000 US gallons (19,000,000 l; 4,200,000 imp gal) of water. Shedd Aquarium was the first inland aquarium with a permanent saltwater fish collection. It is surrounded by Museum Campus Chicago, which it shares with the Adler Planetarium and the Field Museum of Natural History. The aquarium has 2 million annual visitors; it was the most visited aquarium in the U.S. in 2005, and in 2007, it surpassed the Field Museum as the most popular cultural attraction in Chicago. It contains 1500 species including fish, marine mammals, birds, snakes, amphibians, and insects. The aquarium received awards for best exhibit from the Association of Zoos and Aquariums (AZA) for Seahorse Symphony in 1999, Amazon Rising in 2001, and Wild Reef in 2004. (Source: http://en.wikipedia.org/wiki/Shedd_Aquarium)"}
].each do |place_hash|
	p = Place.new
	p.title = place_hash[:title]
	p.photo_url = place_hash[:photo_url]
	p.admission_price = place_hash[:admission_price]
	p.description = place_hash[:description]
	p.save
end


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
