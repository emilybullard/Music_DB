module SongsHelper
	def songs_and_tracks
		 require 'grooveshark'
	    client = Grooveshark::Client.new

	    songs = client.search_songs("#{@song.artist.name} #{@song.name} #{@song.album.title}")
	    @track = songs.first


	    require 'musix_match'
	    MusixMatch::API::Base.api_key = ENV['musixmatch']

	    response = MusixMatch.search_track(q: "#{@song.artist.name} #{@song.name}")
	    if response.status_code == 200
	      response.each do |track|
	        @lyric_id = track.track_id
	      end
	      lyric_response = MusixMatch.get_lyrics(@lyric_id)
	      if lyric_response.status_code == 200 && lyrics = lyric_response.lyrics
	        @lyrics = lyrics.lyrics_body
	    end
	  end
	end
end
