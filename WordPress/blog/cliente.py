import json
import requests

domain = "localhost:8080/"

"""
esta funcion recibe la matriz y la posicion x , y donde esta la posicion en blanco
"""
def challenge( domain, matrix , x , y , opponentId ):
    body = {
        "currentState" : matrix,
        "blank" : { "row" : x , "column" : y }
    }
    print domain + "/api/player/%i/challenge/" % ( opponentId ) 
    response = requests.post( domain + "/api/player/%i/challenge/" % ( opponentId ) , data = json.dumps( body ) )
"""
    funcion que retorna la matriz del reto que hizo un jugador
"""
def get_challenge( domain , pId ):
    r = requests.get( domain + "/api/board/%s/" % ( pId ))

"""
esta funcion recibe  el pid del jugador actual y mueve la ficha en blanco a la izquerda
"""
def move_left( domain , pId ):
    response = requests.post( domain + "/api/player/%i/move/left/" % ( pId ) )
"""
esta funcion recibe  el pid del jugador actual y mueve la ficha en blanco a la derecha
"""
def move_right( domain , pId ):
    response = requests.post( domain + "/api/player/%i/move/right/" % ( pId ) )

"""
esta funcion recibe  el pid del jugador actual y mueve la ficha en blanco a la arriba
"""
def move_up( domain , pId ):
    response = requests.post( domain + "/api/player/%i/move/up/" % ( pId ) )
"""
esta funcion recibe  el pid del jugador actual y mueve la ficha en blanco hacia abajo
"""
def move_down( domain , pId ):
    response = requests.post( domain + "/api/player/%i/move/down/" % ( pId ) )

def create_player(  domain , pId  , name ):
    response = requests.post( domain + "/api/player/%i/new/%s/" % ( pId , name ) )

def main():
    matrix = [ [ 1 , 5 ] , [ 2 , 4 ] ]
    domain = raw_input( "Ingrese el nombre de dominio" )
    pid = raw_input("ingrese el id del jugador")
    pid = int( pid )
    oponnent = raw_input( "ingrese el id del oponenete")
    oponnent = int( oponnent )
    challenge( domain , matrix , 1 , 1 , oponnent )
    """ hace el challenge de la matriz """
    while True:
        direccion = raw_input( "Ingrese la direccion R , L , U , D ")
        if direccion == "R":
            move_right( domain , pid )
        elif direccion == "L":
            move_left( domain , pid )
        elif direccion == "U":
            move_up( domain , pid )
        elif direccion == "D":
            move_down( domain , pid )


if __name__ == '__main__':
    main()
