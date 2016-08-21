import Html exposing (..)
import Html.App exposing (..)
import Html.Attributes exposing (..)

-- main : Program Never
main =
  Html.App.beginnerProgram { model = model, update = update, view = view }

view : Model -> Html Msg
view model =
  div [] [ label [] [ text "Input"
                    , input [type' "text"] []
                    ]
         ]

model = 0

update : Msg -> Model -> Model
update msg model =
  model

type alias Model = Int

type Msg = None
