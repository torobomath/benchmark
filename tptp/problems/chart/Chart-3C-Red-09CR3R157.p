%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     5
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3R157
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  158 (  14 equality;  50 variable)
%            Maximal formula depth :   24 (  16 average)
%            Number of connectives :  128 (   0   ~;   0   |;  15   &; 113   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :)
%            Number of variables   :   23 (   4 sgn;   0   !;  11   ?;   8   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_D: 'R' > '2d.Shape',V_P: '2d.Point',V_x: 'R',V_y: 'R'] :
        ( ( V_D
          = ( ^ [V_t_dot_0: 'R'] :
                ( '2d.circle/2' @ ( '2d.point/2' @ ( '*/2' @ 2 @ ( 'cos/1' @ V_t_dot_0 ) ) @ ( '*/2' @ 2 @ ( 'sin/1' @ V_t_dot_0 ) ) ) @ 1 ) ) )
        & ( V_P
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( '<=/2' @ 0 @ V_t )
        & ( '<=/2' @ V_t @ ( '*/2' @ ( '//2' @ 2 @ 3 ) @ 'Pi/0' ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ? [V_s: 'R'] :
            ( ( ( '*/2' @ 3 @ V_t )
              = ( '-/1' @ V_s ) )
            & ( V_P
              = ( '2d.vec-translate/2' @ ( '2d.center-of/1' @ ( 'LamApp/2' @ V_D @ V_t ) ) @ ( '2d.vec2d/2' @ ( 'cos/1' @ ( '+/2' @ V_s @ V_t ) ) @ ( 'sin/1' @ ( '+/2' @ V_s @ V_t ) ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_l: 'R'] :
      ? [V_D: 'R' > '2d.Shape',V_P: '2d.Point'] :
        ( ( V_D
          = ( ^ [V_t_dot_0: 'R'] :
                ( '2d.circle/2' @ ( '2d.point/2' @ ( '*/2' @ 2 @ ( 'cos/1' @ V_t_dot_0 ) ) @ ( '*/2' @ 2 @ ( 'sin/1' @ V_t_dot_0 ) ) ) @ 1 ) ) )
        & ( V_P
          = ( '2d.point/2' @ V_x @ V_y ) )
        & ( V_l
          = ( '2d.length-of/1'
            @ ( '2d.set-of-cfun/1'
              @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ? [V_t: 'R'] :
                  ( ( '<=/2' @ 0 @ V_t )
                  & ( '<=/2' @ V_t @ ( '*/2' @ ( '//2' @ 2 @ 3 ) @ 'Pi/0' ) )
                  & ? [V_s: 'R'] :
                      ( ( ( '*/2' @ 3 @ V_t )
                        = ( '-/1' @ V_s ) )
                      & ( V_P
                        = ( '2d.vec-translate/2' @ ( '2d.center-of/1' @ ( 'LamApp/2' @ V_D @ V_t ) ) @ ( '2d.vec2d/2' @ ( 'cos/1' @ ( '+/2' @ V_s @ V_t ) ) @ ( 'sin/1' @ ( '+/2' @ V_s @ V_t ) ) ) ) ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
    ? [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x_dot_0 @ ( 'cons/2' @ V_y_dot_0 @ 'nil/0' ) ) )
      & ( '<=/2' @ 0 @ V_t )
      & ( '<=/2' @ V_t @ ( '*/2' @ ( '//2' @ 2 @ 3 ) @ 'Pi/0' ) )
      & ( V_x_dot_0
        = ( '+/2' @ ( '*/2' @ 2 @ ( 'cos/1' @ V_t ) ) @ ( 'cos/1' @ ( '*/2' @ 2 @ V_t ) ) ) )
      & ( V_y_dot_0
        = ( '+/2' @ ( '*/2' @ 2 @ ( 'sin/1' @ V_t ) ) @ ( '-/1' @ ( 'sin/1' @ ( '*/2' @ 2 @ V_t ) ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_l_dot_0: 'R'] :
      ( V_l_dot_0
      = ( '//2' @ 16 @ 3 ) ) ),
    answer_to(p2_question,[])).
