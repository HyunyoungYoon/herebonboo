# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p1 = Post.create(content: '총학생회! 10월 19일 수요일 18시 50분 경에 성낙인총장 명의의 문자를 받았어요 - 본부가 점거돼서 슬프시대요^_ㅜ - 나의 등록금 이렇게 낭비되고 있다니 너무 비웃기고 화나요!! ^_ㅜ')
p1.update_attribute :created_at, (rand*10).days.ago

p2 = Post.create(content: '오는 목요일 오후 6:30부터는 본부점거투쟁 토론회가 본부 4층에서 있을 예정입니다.
일시: 2016년 10월 20일 18시 반
장소: 본부 4층
준비물: 학생증(본부출입용)')
p2.update_attribute :created_at, (rand*10).days.ago

p3 = Post.create(content: '☆보이는 점거 라디오 제2화 이벤트☆
댓글에 "총장님에게 답장할 문자"를 작성 혹은 보이는 점거 라디오 영상을 공유해주시는 분께 추첨을 통해 상품을 드립니다~')
p3.update_attribute :created_at, (rand*10).days.ago

p4 = Post.create(content: '누가 학생이고 누가 교수인지... 한창 배우는 학생이, 가르치는 교수보다 나으니 정말 한심합니다. 그리고 학생들의 용기있는 실천을 지지하고 응원합니다. !!')
p4.update_attribute :created_at, (rand*10).days.ago

p5 = Post.create(content: '이제 본부를 점거한지 일주일이 되어갑니다. 특별한 행사가 없는 날이면, 매일 6시 30분에 본부 앞에서 촛불문화제가 열립니다. 17일 월요일에는 이번주 집중집회와 자랑스러운 학생회 깃발들을 깃대에 올리는 게양식이 진행될 예정입니다.
실시협약, 우리의 촛불 하나하나로 같이 막아냅시다. 저녁 6시 반, 본부 앞으로 모여주세요. 감사합니다.')
p5.update_attribute :created_at, (rand*10).days.ago