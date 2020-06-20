/// @description Move To Next Room
// Puede escribir su código en este editor

with(oPlayer){
	if(hascontrol) {
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO, other.target)
	}
}