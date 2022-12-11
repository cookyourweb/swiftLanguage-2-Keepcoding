import UIKit

/*
 MARK: 1.- Calcular y generar una lista con los 100 primeros números primos y hacer un  print de los últimos 10.
 */

var initValue: Int = 2
var finalValue: Int = 545
//finalValue is the last number where 100 prime numbers are printed
var lastTenValue: Int = 467
//lastTenValue  is the range where the last 10  prime numbers are are printed

func isPrime(number: Int) -> Bool {
    
    if number < 2 {
        return false
    }
    
    for i in 2 ..< number {
        if number % i == 0 {
            return false
        }
    }
    
    return true
}

// First 100
(initValue...finalValue).forEach { number in
    if isPrime(number: number) {
      (number)
    }
}

//Print of the last 10

(lastTenValue...finalValue).forEach { number in
    if isPrime(number: number) {
  
        print("\nCounter \(number)")

    }
}


/* MARK: 2.- Calcular la suma de los primeros 50 números primos y hacer un print del resultado.
*/

var valorCincuentaNumPrimos: Int = 230
(initValue ... valorCincuentaNumPrimos).forEach { number in
    if isPrime(number: number) {
        var array: [Int] = []
        
        array.append(number)
        array.sort()
        
        
        
        print("\n Array of the 50 first prime numbers: \(number)")
        
        
        
        
/*
 MARK: 3.- Dada la siguiente lista, obtener todos los elementos que contengan más de dos vocales: val players: [String] = [“Vinicius”, “Messi”, “Ronaldo”, “Pedri”, “Mbappe”, “Modric”, “Militao”, “Morata”, “Valverde”, “Benzema”, “Piqué” ]
*/
        
        
        var players: [String] = ["Vinicius", "Messi", "Ronaldo", "Pedri", "Mbappe","Modric", "Militao", "Morata", "Valverde", "Benzema", "Pique" ]
        
        print("\n List of total players: \(players)) ")
        
        
        var playersString : [String] = []
        
        func vocalCounter()  -> [String] {
            for vocals in players {
                var counter : Int = 0
                for v in vocals where v == "a" || v == "e" || v == "i" || v == "o" || v == "u"  {
                    counter += 1
                }
                
                counter > 2 ? playersString.append(vocals) : nil;
            }
            
            return playersString
        }
        
        print("\n List of  players with more then three vowels in their names: \(vocalCounter())")
        
        
        
  /*
MARK: 4.- Crear un enumerado que permita indicar la posición en el campo de un jugador de fútbol, por ejemplo: Portero, Lateral Derecho, Central, Lateral Izquierdo, Mediocentro, Extremo Derecha, Extremo Izquierda, Delantero, etc
         
*/
        
        
        
        enum PlayerPosition {
            case Portero
            case LateralDerecho
            case Central
            case LateralIzquierdo
            case Mediocentro
            case ExtremoDerecho
            case ExtremoIzquierdo
            case Delantero
            case Ninguno
            
        }
        PlayerPosition.Delantero
        
        
/*
MARK: 5.- Crear una clase, con los atributos necesarios, para representar a los miembros que participan en una selección del mundial y un enumerado que los diferencie por tipo, por ejemplo: Jugador, Seleccionador, Médico, etc.
*/
        
        ///Swift initializer: class with properties with no default values, usinga a initializer to asign value.
        
        
        class Member {
            
            // properties with no default values
            var name : String = ""
            var age : UInt = 0
            var type : DifferentType
            var position:PlayerPosition
            // assign value using initializer
            init (name : String = "",
                  age : UInt = 0,
                  type :DifferentType,
                  position: PlayerPosition){
                self.name = name
                self.age = age
                self.type = type
                self.position = position
            }
            // object of Member with custom initializer
            var member : String { return "\nMembers name  \(name) has  \(age) years. Plays as \(position) \(type)"}
            
            // instance of Member
            var member1 = Member(name: "Militao",
                                 age: 34,
                                 type: Member.DifferentType.Player,
                                 position: PlayerPosition.LateralIzquierdo)
            
            // Enum with types of member of a Word Cup Team
            enum DifferentType {
                case President
                case Manager
                case Player
                case Doctor
                case MassageTherapist
                case PressManager
            }
        }
        // instance of Member
        var member2 = Member(name: "Benzema",
                             age: 25,
                             type: Member.DifferentType.Player,
                             position: PlayerPosition.Delantero
        )
        print(member2.member)
        
        /*
         MARK: 6.- Crear las clases necesarias, con los atributos mínimos, para representar las selecciones de fútbol del Mundial de fútbol 2022, por ejemplo: Una clase que represente el Mundial, necesitaremos que contenga un listado de Selecciones, cada selección tendrá sus atributos, como nombre, país, jugadores, seleccionador, etc.
         
         grupos del mundial 2022
         Grupo A: Países Bajos, Senegal, Ecuador, Catar (anfitrión)
         Grupo B: Inglaterra, Estados Unidos, Irán, Gales.
         Grupo C: Argentina, Polonia, México, Arabia Saudí
         Grupo D: Francia, Australia, Túnez, Dinamarca.
         Grupo E: Japón, España, Alemania, Costa Rica.
         Grupo F: Marruecos, Croacia, Bélgica, Canadá
         
         */
        enum Groups
        {
            case GroupA
            case GroupB
            case GroupC
            case GroupD
            case GroupE
            case GroupF
           
        }
        enum Country {
            case PaisesBajos
            case Senegal
            case Ecuador
            case Catar
            case Inglaterra
            case EstadosUnidos
            case Iran
            case Gales
     
        }
        
        class WorldCupTeam {
            
            var group: Groups
            var country: Country
            var players: [Member]
            var result : Int
            
            init ( group: Groups, country : Country, players : [Member] = [], result : Int = 0) {
                self.group = group
                self.country = country
                self.players = players
                self.result = result
                
            }
        }
            
        
        
        
/*
 MARK: 7.- Crear una clase para representar los partidos entre selecciones, deberá contener atributos como equipo local, visitante y resultado como mínimo. Generar una lista aleatoria de partidos entre la lista de selecciones anteriores y hacer un print de este estilo por partido:
Partido: España 3 - 1 Brasil
 */
      
      
      
      
/*
MARK: 8.- Generar de forma aleatoria, dentro de la clase Mundial, un listado de grupos con un máximo de 4 selecciones por grupo, se puede crear una clase nueva Grupo que contenga el nombre del grupo, listado de participantes y listado de partidos. Por ejemplo: Grupo A España, Brasil, Francia, Alemania.

*/
        
        
/*
         
 MARK: 9.- Para añadir a cada Grupo los puntos de cada selección habrá que contabilizar las victorias con 3 puntos, empates con 1 y derrotas con 0. Añadir una función en la clase Grupo que le pasemos una selección y nos devuelva sus puntos.*/
        
        
/*

 MARK: 10.- Generar los partidos del Mundial en cada grupo y calcular las dos primeras selecciones de cada grupo y hacer un print con los clasificados.
         
 
 */
    }
}
