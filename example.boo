import UnityEngine

class MoveAction (Action):

	_path as (Hex) = null
	path:
		get:
			return _path
		set:
			_path = value

	_unit as Unit
	unit:
		get:
			return _unit
		set:
			_unit = value

	def canMoveUpToHex(hex as Hex, numActionSlots as int):
		return hex.path.type == Hex.Path.Type.Normal and
			hex.path.distance <= _unit.moveRange * numActionSlots

	def setHexAppearance(hex as Hex):
		if hex != _unit.hex:
			if canMoveUpToHex(hex, 1):
				Debug.Log("Hex is in range")
				hex.setInRangeColor()
			else:
				if canMoveUpToHex(hex, 2):
					Debug.Log("Hex is in extra range")
					hex.setInExtraRangeColor()
				else:
					Debug.Log("Hex is not in range")
					hex.setNotInRangeColor()
			hex.showEnemyAoi = true
