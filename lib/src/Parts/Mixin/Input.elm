module Parts.Mixin.Input
    exposing
        ( Config
        , Type (..)
        )

type Type
    = Text
    | Number


type alias Config =
    { type_ : Type
    , placeholder : String
    }
