
tell application "Google Chrome"
    repeat with _w in (every window) 
        repeat with _t in (every tab whose URL contains "music.yandex.ru") of _w
			set someText to do JavaScript "document.querySelector('.ptrack__title').innerHTML" in _t
            return someText
        end repeat
    end repeat
end tell

tell application "Google Chrome"
	repeat with _w in (every window)
		repeat with _t in (every tab whose URL contains "music.yandex.ru") of _w
			tell _t to set kek to execute javascript "document.querySelector('.player-controls__btn_pause')"
			if kek is missing value
				return "play"
			end if
			return "pause"
		end repeat
	end repeat
end tell

tell application "Google Chrome"
	repeat with _w in (every window)
		repeat with _t in (every tab whose URL contains "music.yandex.ru") of _w
			set s to "document.querySelector('.player-controls__btn_play').click();"
			tell _t to execute javascript s
		end repeat
	end repeat
end tell
