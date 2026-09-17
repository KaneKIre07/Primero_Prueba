extends StaticBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	#Input.is_action_pressed("ui_left") de manera normal (devuelve boolean)
	if Input.is_action_just_pressed("izquierda"):#asignar una accion desde proyecto (flecha izquierda del teclado)
		print("Se ha pulsado la tecla izquierda")#para añadir otra accion dentro del if tiene que estar igual tabulado
	#diferencia de is_action_just_pressed y is_action_pressed es que el segundo permite mantener pulsado y el primero solo click a click
	elif Input.is_action_just_released("derecha"):#soltar la tecla
		print("Se ha soltado la tecla derecha")
	elif Input.is_action_just_pressed("arriba"):#soltar la tecla
		print("Se ha pulsado la tecla arriba")
	
func _physics_process(delta: float) -> void:
	#print("process se ha ejecutado despues de (s): "+str(delta))
	pass
