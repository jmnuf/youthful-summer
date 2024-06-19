extends Node

enum MainStoryPoint {
	Intro,
	BikeEvent,
	Swimming,
	BeachVolleyball,
	Hiking,
	SceneryWatching,
	Resolution,
}

func start_main_story_point(story_point: MainStoryPoint) -> bool:
	var timeline_name:String
	match story_point:
		MainStoryPoint.Intro:
			timeline_name = "chapter-00"
		MainStoryPoint.BikeEvent:
			timeline_name = "chapter-01"
		MainStoryPoint.Swimming:
			timeline_name = "chapter-02"
		MainStoryPoint.BeachVolleyball:
			timeline_name = "chapter-03"
		MainStoryPoint.Hiking:
			timeline_name = "chapter-04"
		MainStoryPoint.SceneryWatching:
			timeline_name = "chapter-05"
		MainStoryPoint.Resolution:
			timeline_name = "chapter-06"

	if timeline_name.is_empty():
		return false
	
	Dialogic.start(timeline_name)
	return true


func start_new_story() -> void:
	start_main_story_point(MainStoryPoint.Intro)

