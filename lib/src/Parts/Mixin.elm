module Parts.Mixin
    exposing
        ( input
        )

import Html exposing (Attribute)
import Html.Attributes as Attributes
import Mixin exposing (Mixin)
import Parts.Mixin.Input as Input


input : Attribute msg
input =
    Attributes.class "input"



-- inputWith


inputWith : Input.Config -> Mixin msg
inputWith conf =
    Mixin.fromAttributes
        [ Attributes.class "input"
        , inputTypeToClass conf.type_
        , Attributes.type_ "text"
        , Attributes.placeholder conf.placeholder
        ]


inputTypeToClass : Input.Type -> Attribute msg
inputTypeToClass type_ =
    Attributes.class <| case type_ of
        Input.Text ->
            "input-text"

        Input.Number ->
            "input-number"
