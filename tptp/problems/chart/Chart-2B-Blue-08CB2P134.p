%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2P134
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  125 (  11 equality;  38 variable)
%            Maximal formula depth :   12 (  10 average)
%            Number of connectives :  103 (   0   ~;   0   |;  12   &;  91   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   20 (   0 sgn;   0   !;   2   ?;   6   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.circle/2' @ ( '2d.point/2' @ 3 @ -2 ) @ 4 ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ? [V_circle: '2d.Shape'] :
            ( ( '2d.circle-type/1' @ V_circle )
            & ( ( '2d.point/2' @ 0 @ 3 )
              = ( '2d.center-of/1' @ V_circle ) )
            & ( '2d.on/2' @ ( '2d.point/2' @ -1 @ 6 ) @ V_circle )
            & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_circle ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ? [V_circle: '2d.Shape'] :
            ( ( '2d.circle-type/1' @ V_circle )
            & ( ( '2d.point/2' @ -2 @ 4 )
              = ( '2d.center-of/1' @ V_circle ) )
            & ( '2d.tangent/2' @ '2d.x-axis/0' @ V_circle )
            & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_circle ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( 16
        = ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x @ 3 ) @ 2 ) @ ( '^/2' @ ( '+/2' @ V_y @ 2 ) @ 2 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( 10
        = ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y @ 3 ) @ 2 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( 16
        = ( '+/2' @ ( '^/2' @ ( '+/2' @ V_x @ 2 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y @ 4 ) @ 2 ) ) ) ) ),
    answer_to(p3_question,[])).
