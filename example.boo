/* This is a very important class.
   It does something so very profoundly useful.
 */

 class Important(Base):

	public inExtraRangeColor as Color = Color(0.8, 0.8, 0.8, 1)
	public notInRangeColor as Color = Color(0.7, 0.7, 0.7, 1)

 	_myProp as string
 	myProp:
 		get:
 			return _myProp
 		set:
 			_myProp = value

 	def constructor(count as int, names as List[of string]):
 		if count != len(names):
 			raise System.Exception("Sorry for the inconvenience")

 		myProp = "Don't panic"

 	def doSomethingUseful(now as bool):
 		if now:
 			Debug.Log("Looking busy")
 		else:
 			Debug.Log("Procrastinating")
 