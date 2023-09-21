extends Label

var time = 0
var timer_on = true

func _process(delta):
	if(timer_on):
		time += delta
		
	var mils = fmod(time,1)*1000
	var secs = fmod(time,60)
	var mins = fmod(time, 60*60) / 60
	var hr = fmod(fmod(time,3600 * 60) / 3600,24)
	var dy = fmod(time,12960000) / 86400
	
	var time_passed = "%02d : %02d : %03d" % [mins,secs,mils]
	text = time_passed# + " : " + var2str(time)
	
	pass
