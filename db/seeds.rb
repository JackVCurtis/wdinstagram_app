entries = Entry.all
entries.each do |entry|
  entry.destroy
end

entries = Entry.create([
  {author: "Alice", date_taken: 2.years.ago, photo_url: "http://moviesfilmsmotionpictures.files.wordpress.com/2010/09/alice_in_wonderland_cheshire_cat.jpg", caption: "How fine you look when dressed in rage. Your enemies are fortunate your condition is not permanent. You're lucky, too. Red eyes suit so few."},
  {author: "Bob", date_taken: 3.years.ago, photo_url: "http://s1.reutersmedia.net/resources/r/?m=02&d=20111218&t=2&i=548327690&w=320&fh=&fw=&ll=&pl=&r=BTRE7BH18KC00", caption: "When you smoke the herb, it reveals you to yourself. - Bob Dylan"}
  ])