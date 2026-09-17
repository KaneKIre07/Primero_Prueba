extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0
var count=0

func _physics_process(delta: float) -> void:
	# se añade la gravedad, si no esta en el suelo le suma a la velocidad la constante de aceleracion de la gravedad y 
	#la multiplica por delta(se mide en milisegundos dependiendo de los fps (100fps->10ms).
	if not is_on_floor():
		velocity += get_gravity() * delta
		#si esta en el suelo reinicia el contador de saltos
	else:
		count=0

	# Handle jump.
	
	#si presiona la flecha de arriba y el contador es menor que 3 permite saltar
	if Input.is_action_just_pressed("arriba")  and count<3:
		velocity.y = JUMP_VELOCITY
		count+=1
		
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	#Crea la variable direccion, dandole de valor la direccion de presionada calculando su velocidad
	var direction := Input.get_axis("izquierda", "derecha")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
