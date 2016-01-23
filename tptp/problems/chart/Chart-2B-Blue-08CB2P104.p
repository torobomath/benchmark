%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2P104
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :   12 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  232 (  23 equality;  71 variable)
%            Maximal formula depth :   13 (  10 average)
%            Number of connectives :  189 (   3   ~;   1   |;  19   &; 166   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   33 (   0   :)
%            Number of variables   :   41 (   4 sgn;   0   !;   3   ?;  12   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ? [V_P: '2d.Point'] :
            ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.line/2' @ ( '2d.point/2' @ -2 @ 4 ) @ V_P ) )
            & ( '2d.is-slope-of/2' @ -3 @ ( '2d.line/2' @ ( '2d.point/2' @ -2 @ 4 ) @ V_P ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ? [V_P: '2d.Point'] :
            ( ( V_P
             != ( '2d.point/2' @ 5 @ 6 ) )
            & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.line/2' @ ( '2d.point/2' @ 5 @ 6 ) @ V_P ) )
            & ( '2d.parallel/2' @ ( '2d.line/2' @ ( '2d.point/2' @ 5 @ 6 ) @ V_P ) @ '2d.y-axis/0' ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ? [V_P: '2d.Point'] :
            ( ( V_P
             != ( '2d.point/2' @ 8 @ -7 ) )
            & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.line/2' @ ( '2d.point/2' @ 8 @ -7 ) @ V_P ) )
            & ( '2d.perpendicular/2' @ ( '2d.line/2' @ ( '2d.point/2' @ 8 @ -7 ) @ V_P ) @ '2d.y-axis/0' ) ) ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.line/2' @ ( '2d.point/2' @ 3 @ -5 ) @ ( '2d.point/2' @ -7 @ 2 ) ) ) ) )).

thf(p5_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.line/2' @ ( '2d.point/2' @ 2 @ 3 ) @ ( '2d.point/2' @ -1 @ 3 ) ) ) ) )).

thf(p6_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.line/2' @ ( '2d.point/2' @ 1 @ 0 ) @ ( '2d.point/2' @ V_a @ -4 ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( V_y
        = ( '+/2' @ ( '*/2' @ -3 @ V_x ) @ -2 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( 5 = V_x ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( -7 = V_y ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( V_y
        = ( '+/2' @ ( '*/2' @ ( '//2' @ -7 @ 10 ) @ V_x ) @ ( '//2' @ -29 @ 10 ) ) ) ) ),
    answer_to(p4_question,[])).

thf(p5_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( 3 = V_y ) ) ),
    answer_to(p5_question,[])).

thf(p6_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( ( ( V_a != 1 )
          & ( V_y
            = ( '+/2' @ ( '*/2' @ ( '//2' @ -4 @ ( '-/2' @ V_a @ 1 ) ) @ V_x ) @ ( '//2' @ 4 @ ( '-/2' @ V_a @ 1 ) ) ) ) )
        | ( ( 1 = V_a )
          & ( 1 = V_x ) ) ) ) ),
    answer_to(p6_question,[])).
