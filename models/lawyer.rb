class Scrape

       @@track=Hash.new
       @@id=1
       #scrape url
        def self.create_hash(index_url)
            @doc = Nokogiri::HTML(open(index_url))
            container = @doc.search("div.lawyer-search-result").map do |info|
              l_name = info.search("div h3").text
              l_practice = info.search("p.text-truncate").text
              l_rating = info.search("span.text-nowrap strong").text
              l_years =  info.search("time").text.delete("since ").to_i

            #  l_number = info.search("ul li span .gc-cs-link").text
               l_number = info.search("span.hidden-xs").text


             time = Time.now

             @@track[@@id]={
                           :name => l_name,
                           :practice => l_practice,
                           :rating => l_rating,
                           :years => time.year-l_years,
                           :number => l_number
                           }
                         @@id += 1
                end
        end

       ############### External Methods ##########

       def self.track
         @@track
       end
 



   end # End Scrape class
