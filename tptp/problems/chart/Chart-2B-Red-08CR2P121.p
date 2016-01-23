%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P121
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  147 (  12 equality;  45 variable)
%            Maximal formula depth :   13 (  11 average)
%            Number of connectives :  123 (   0   ~;   1   |;  16   &; 106   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   21 (   0 sgn;   0   !;   3   ?;   6   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_circle: '2d.Shape'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.circle-type/1' @ V_circle )
        & ( ( '2d.point/2' @ 2 @ 1 )
          = ( '2d.center-of/1' @ V_circle ) )
        & ( '2d.tangent/2' @ V_circle @ '2d.x-axis/0' )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_circle ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_circle: '2d.Shape'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.circle-type/1' @ V_circle )
        & ( ( '2d.point/2' @ -1 @ 2 )
          = ( '2d.center-of/1' @ V_circle ) )
        & ( '2d.tangent/2' @ V_circle @ '2d.y-axis/0' )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_circle ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_circle: '2d.Shape'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.circle-type/1' @ V_circle )
        & ( '2d.tangent/2' @ V_circle @ '2d.x-axis/0' )
        & ( '2d.tangent/2' @ V_circle @ '2d.y-axis/0' )
        & ( '2d.on/2' @ ( '2d.point/2' @ 2 @ 4 ) @ V_circle )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ V_circle ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( 1
        = ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x @ 2 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y @ 1 ) @ 2 ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( 1
        = ( '+/2' @ ( '^/2' @ ( '+/2' @ V_x @ 1 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y @ 2 ) @ 2 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( ( 4
          = ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x @ 2 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y @ 2 ) @ 2 ) ) )
        | ( 100
          = ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x @ 10 ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y @ 10 ) @ 2 ) ) ) ) ) ),
    answer_to(p3_question,[])).
