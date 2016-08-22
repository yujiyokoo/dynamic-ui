import Html exposing (..)
import Html.App exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)

-- main : Program Never
main =
  Html.App.beginnerProgram { model = model, update = update, view = view }

view : Model -> Html Msg
view model =
  div [] [ Html.form [ onSubmit SubmitText, onInput Content ] [ label [] [ text "Input"
                                                        , input [ type' "text", value model.curr_val ] []
                                                        ]
                                             ]
         , ul [] (List.map showList model.list)
         ]

showList entry =
  li [] [ text entry ]

model = { list = [], curr_val = "" }

update : Msg -> Model -> Model
update msg model =
  case msg of
    SubmitText -> { model |list = model.list ++ [ model.curr_val ], curr_val = "" }
    Content str -> { model | curr_val = str }

type alias Model =
  { list : List String
  , curr_val : String
  }

type Msg = SubmitText | Content String
