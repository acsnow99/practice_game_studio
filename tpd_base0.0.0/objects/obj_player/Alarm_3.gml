if room_coming == 0 {
	room_goto(room_explore);
}
else if room_coming == 1 {
	room_goto(room_exploreAgain);
}
else if room_coming == 2 {
	room_goto(room_exploreAThirdTime);
}
else if room_coming == 3 {
	room_goto(room_basement);
}