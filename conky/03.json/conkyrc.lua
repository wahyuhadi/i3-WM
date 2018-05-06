-- vim: ts=4 sw=4 noet ai cindent syntax=lua

--[[
Conky, a system monitor, based on torsmo
https://i3wm.org/docs/user-contributed/conky-i3bar.html
https://i3wm.org/docs/i3bar-protocol.html

You can change properties 
  "background": "\#c9c925",
  "border": "\#ee0000"
  "separator" : true
]]

conky.config = {
    out_to_x = false,
    out_to_console = true,
    short_units = true,
    update_interval = 1
}

conky.text = [[ 
[ 
# MPD
${if_mpd_playing} 
    {"full_text":"", "color":"\#c9c925", 
     "separator":false, "separator_block_width":6},
    {"full_text":"${mpd_artist 20}", "color" : "\#5c5dad", 
     "separator" : false, "separator_block_width":3 },
    {"full_text":" - ", "color" : "\#909737", 
     "separator" : false, "separator_block_width":3 },
    {"full_text":"${mpd_title 30}", "color" : "\#545454", 
     "separator" : false, "separator_block_width":6 },
${else} 
    {"full_text":"", "color":"\#c92525",
     "separator" : false, "separator_block_width":6 },
${endif}

# Time:
    {"full_text":"|", "color":"\#545454", 
     "separator":false, "separator_block_width":6},
    {"full_text":"", "color":"\#c9c925", 
     "separator":false, "separator_block_width":6},
    {"full_text":"TIME", "color":"\#5c5dad", 
     "separator":false,"separator_block_width":6},
    {"full_text":"${time %H:%M }", "color":"\#aaaaaa", 
     "separator":false, "separator_block_width":6 }
],
]]


-- note that tis json doesn't support unicode character.
