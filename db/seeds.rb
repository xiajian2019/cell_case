
20.times do |i|
  Todo.create(description: "item #{i}", complete: false)
end

%w( Collection AvatarCard DownloadPage  Image  Carousel ﻿QrcodeCard ﻿TopicCard).each do |code|
  Component.create name: code, code: code
end


json = File.read 'db/com_list.json'

com_list = JSON.parse(json)

com_list.each do |com|
  c = Component.find_by_code com['name']

  if c.blank?
    c = Component.new code: com['name'], name: com['name']
  end

  c.config = com['config'].to_h

  c.save
end
