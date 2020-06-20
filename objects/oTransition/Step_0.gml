/// @description Progress the transition
// You can write your code in this editor
minValue = 1.2

if(mode != TRANS_MODE.OFF) {
	if(mode == TRANS_MODE.INTRO) {
		percent = max(0, percent - max((percent/10), 0.005));
		
	} else {
		percent = min(minValue, percent + max(((minValue-percent) /10), 0.005));
		
	}
	if(percent == minValue || percent == 0) {
		switch(mode){
			case TRANS_MODE.INTRO: 
			{
				mode = TRANS_MODE.OFF
				break;
			}
			case TRANS_MODE.NEXT: 
			{
				mode = TRANS_MODE.INTRO
				room_goto_next()
				break;
			}
			case TRANS_MODE.GOTO: 
			{
				mode = TRANS_MODE.INTRO
				room_goto(target)
				break;
			}
			case TRANS_MODE.RESTART: 
			{
				game_restart()
				break;
			}			
		}
	}
}