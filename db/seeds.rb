now = Time.zone.now

1.upto(3) do |i|
  speakers = [1, 2, 3].map do |j|
    Speaker.new(
      name: "speaker #{i}-#{j}",
      title: "title #{i}-#{j}",
      start_time: now + (10 * (j - 1)).minutes,
      end_time: now + (10 * j).minutes
    )
  end
  Event.create!(
    speakers:,
    title: "title-#{i}",
    body: "body-#{i}",
    date: Date.current + i.day
  )
end
