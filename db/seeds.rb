# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
## Examples:
##   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Post.create( id: "0", title3:"일본", img3: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9e/Flag_of_Japan.svg/900px-Flag_of_Japan.svg.png")
Post.create( id: "1", title3:"중국", img3: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/900px-Flag_of_the_People%27s_Republic_of_China.svg.png")
Post.create( id: "2", title3:"필리핀", img3: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Flag_of_the_Philippines.svg/900px-Flag_of_the_Philippines.svg.png")
Post.create( id: "3", title3:"인도", img3: "http://www.icons.or.kr/attach/board/migration/icons/cooper371/1243489097.02.jpg")
Post.create( id: "4", title3:"싱가폴", img3: "https://image-proxy.namuwikiusercontent.com/r/http%3A%2F%2Fwww.worldstatesmen.org%2Fsg.gif")



America.create( id: "0", title2:"미국", img2: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a4/Flag_of_the_United_States.svg/1024px-Flag_of_the_United_States.svg.png")
America.create( id: "1", title2:"캐나다", img2: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Flag_of_Canada.svg/225px-Flag_of_Canada.svg.png")
America.create( id: "2", title2:"페루", img2: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cf/Flag_of_Peru.svg/225px-Flag_of_Peru.svg.png")
America.create( id: "3", title2:"아르헨티나", img2: "https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_Argentina.svg/225px-Flag_of_Argentina.svg.png")
America.create( id: "4", title2:"브라질", img2: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Flag_of_Brazil.svg/225px-Flag_of_Brazil.svg.png")


Europe.create( id: "0", title1:"프랑스", img1: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c3/Flag_of_France.svg/225px-Flag_of_France.svg.png")
Europe.create( id: "1", title1:"영국", img1: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/Flag_of_the_United_Kingdom.svg/225px-Flag_of_the_United_Kingdom.svg.png")
Europe.create( id: "2", title1:"독일", img1: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/ba/Flag_of_Germany.svg/225px-Flag_of_Germany.svg.png")
Europe.create( id: "3", title1:"이탈리아", img1: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Flag_of_Italy.svg/225px-Flag_of_Italy.svg.png")
Europe.create( id: "4", title1:"스페인", img1: "https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Flag_of_Spain.svg/225px-Flag_of_Spain.svg.png")


Africa.create( id: "0", title:"이집트", img: "https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/Flag_of_Egypt.svg/225px-Flag_of_Egypt.svg.png")
Africa.create( id: "1", title:"남아공", img: "https://upload.wikimedia.org/wikipedia/commons/thumb/a/af/Flag_of_South_Africa.svg/225px-Flag_of_South_Africa.svg.png")


#위험경보 이미지

#<아시아>
Asia1.create( asiaimg: "/assets/map/japan.png", post_id: 0)
Asia1.create( asiaimg: "/assets/map/china.png", post_id: 1)
Asia1.create( asiaimg: "/assets/map/Philippines.png", post_id: 2)
Asia1.create( asiaimg: "/assets/map/India.png", post_id: 3)
Asia1.create( asiaimg: "/assets/map/singapore.png", post_id: 4)

# <아메리카>
Ame1.create( ameimg: "/assets/map/usa.png", america_id: 0)
Ame1.create( ameimg: "/assets/map/canada.png", america_id: 1)
Ame1.create( ameimg: "/assets/map/Peru.png", america_id: 2)
Ame1.create( ameimg: "/assets/map/argentina.png", america_id: 3)
Ame1.create( ameimg: "/assets/map/Brazil.png", america_id: 4)

# <유럽>
Eur1.create( eurimg: "/assets/map/France.png", europe_id: 0)
Eur1.create( eurimg: "/assets/map/UK.png", europe_id: 1)
Eur1.create( eurimg: "/assets/map/germany.png", europe_id: 2)
Eur1.create( eurimg: "/assets/map/italy.png", europe_id: 3)
Eur1.create( eurimg: "/assets/map/Spain.png", europe_id: 4)

# <아프리카>
Afr1.create( afrimg: "/assets/map/egypt.png", africa_id: 0)
Afr1.create( afrimg: "/assets/map/South_Africa.png", africa_id: 1)