module.exports = (robot) ->
  robot.hear /癒されたい|癒やされたい|癒して|癒やして|癒せ|癒やせ|いやされたい|いやして|いやせ|にゃん/i, (msg) ->
    Flickr = require("flickrapi")
    flickrOptions = {
      api_key: "086a915d18bb5d1a2b4798b136ff641a",
      secret: "9b02cd647c612780"
    }

    Flickr.tokenOnly flickrOptions, (error, flickr) ->
      flickr.photos.search {
        text: '子猫'
        color_codes: 1
        media: 'photos'
        per_page: 200
        safe_search: 1
        extras: 'url_z'
      }, (err, result) ->
        photos = result.photos.photo
        blacklist = [
          'https://farm2.staticflickr.com/1530/24904738430_140810b37b_z.jpg',
          'https://farm8.staticflickr.com/7708/16849244358_c0a6e58963_z.jpg',
          'https://farm2.staticflickr.com/1552/24982352582_ebf6728753_z.jpg',
          'https://farm2.staticflickr.com/1704/24569685744_50bea5da37_z.jpg',
          'https://farm6.staticflickr.com/5713/23859739175_992c82523b_z.jpg',
          'https://farm1.staticflickr.com/670/20628720641_27e1112789_z.jpg',
          'https://farm6.staticflickr.com/5721/20959929482_7f8493f64a_z.jpg'
        ]
        for val, i in blacklist
          photos.filter (item, index) ->
            if item.url_z == val
              photos.splice index, 1
        rand = Math.floor(Math.random() * photos.length)
        msg.send photos[rand].url_z
