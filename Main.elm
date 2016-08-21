import Html exposing (..)
import Html.App exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

-- main : Program Never
main =
  Html.App.beginnerProgram { model = model, update = update, view = view }

view : Model -> Html Msg
view model =
  div [] [ Html.form [ onSubmit SubmitText ] [ label [] [ text "Input"
                              , input [type' "text"] []
                              ]
                   ]
         , ul [] (List.map showList model)
         ]

showList entry =
  li [] [ text entry ]

model = []

update : Msg -> Model -> Model
update msg model =
  model ++ ["something added"]

type alias Model = List String

type Msg = SubmitText
