iguales x y z  = (x==y) && (y==z)
dayOfTheWeek :: Int -> String
dayOfTheWeek i = case i of
	0 -> "Sunday"
	1 -> "Monday"
	2 -> "Tuesday"
	3 -> "Wednesday"
	4 -> "Thursday"
	5 -> "Friday"
	6 -> "Saturday"