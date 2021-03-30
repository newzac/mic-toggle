on getMicVolume()
	input volume of (get volume settings)
end getMicVolume

on disableMic()
	set volume input volume 0
	display notification "Mic Disabled" subtitle "The microphone has been disabled."
end disableMic

on enableMic()
	set volume input volume 65
	display notification "Mic Enabled" subtitle "The microphone has been enabled."
end enableMic

if getMicVolume() is greater than 0 then
	disableMic()
else
	enableMic()
end if
