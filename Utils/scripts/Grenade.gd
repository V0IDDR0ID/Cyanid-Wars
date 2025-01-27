extends RigidBody


var explosion = preload("res://Utils/scenes/Explosion.tscn")


func explode():
	var new_instance = explosion.instance()
	new_instance.global_position = global_position
	get_parent().add_child(new_instance)

func add_damage(point,damage):
	explode()

func _on_ExplosionTimer_timeout():
	explode()
