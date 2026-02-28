module Helper exposing (..)


type GradeStatus
    = Pending
    | Failed
    | Approved


evaluateGrade : Float -> GradeStatus
evaluateGrade status =
    if status > 7 then
        Approved

    else if status >= 0 then
        Failed

    else
        Pending


categoricalGrade : List Float -> List GradeStatus
categoricalGrade grades =
    List.map evaluateGrade grades


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


evaluateAirplane : AirplaneStatus -> String
evaluateAirplane status =
    case status of
        Cancelled ->
            "Pedir reembolso"

        Delayed ->
            "Esperar"

        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"


airportAction : List AirplaneStatus -> List String
airportAction list =
    List.map evaluateAirplane list
