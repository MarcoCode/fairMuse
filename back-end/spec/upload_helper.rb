def create_track_with_file(name="default")
	Track.create(name: name, genre: "Electro", file: fixture_file_upload("Song1.mp3", 'audio/mpeg'))
end

def upload_track(name="default track")
	fill_in "trackname", with: name
	fill_in "genre", with: "Alternative"
	attach_file 'file', Rails.root.join('spec','fixtures','testsong.mp3')
	click_button "Upload"
end