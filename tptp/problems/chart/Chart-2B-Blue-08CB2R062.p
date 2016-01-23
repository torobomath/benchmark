%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2R062
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :   14 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  258 (  23 equality;  74 variable)
%            Maximal formula depth :   13 (   9 average)
%            Number of connectives :  214 (   2   ~;   0   |;  19   &; 193   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   45 (   4 sgn;   0   !;   3   ?;  14   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p11_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ? [V_P: '2d.Point'] :
            ( ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.line/2' @ ( '2d.point/2' @ -1 @ 3 ) @ V_P ) )
            & ( '2d.is-slope-of/2' @ -2 @ ( '2d.line/2' @ ( '2d.point/2' @ -1 @ 3 ) @ V_P ) ) ) ) )).

thf(p12_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ? [V_P: '2d.Point'] :
            ( ( ( '2d.point/2' @ 4 @ 1 )
             != V_P )
            & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.line/2' @ ( '2d.point/2' @ 4 @ 1 ) @ V_P ) )
            & ( '2d.perpendicular/2' @ ( '2d.line/2' @ ( '2d.point/2' @ 4 @ 1 ) @ V_P ) @ '2d.x-axis/0' ) ) ) )).

thf(p13_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ? [V_P: '2d.Point'] :
            ( ( ( '2d.point/2' @ 5 @ 3 )
             != V_P )
            & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.line/2' @ ( '2d.point/2' @ 5 @ 3 ) @ V_P ) )
            & ( '2d.parallel/2' @ ( '2d.line/2' @ ( '2d.point/2' @ 5 @ 3 ) @ V_P ) @ '2d.x-axis/0' ) ) ) )).

thf(p21_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.line/2' @ ( '2d.point/2' @ 1 @ -2 ) @ ( '2d.point/2' @ -3 @ 4 ) ) ) ) )).

thf(p22_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.line/2' @ ( '2d.point/2' @ -5 @ 7 ) @ ( '2d.point/2' @ 6 @ 7 ) ) ) ) )).

thf(p23_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.line/2' @ ( '2d.point/2' @ ( '//2' @ 3 @ 2 ) @ ( '//2' @ -1 @ 3 ) ) @ ( '2d.point/2' @ ( '//2' @ 3 @ 2 ) @ -1 ) ) ) ) )).

thf(p24_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
        ( ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( '2d.on/2' @ ( '2d.point/2' @ V_x @ V_y ) @ ( '2d.line/2' @ ( '2d.point/2' @ ( '//2' @ 5 @ 2 ) @ 0 ) @ ( '2d.point/2' @ 0 @ ( '//2' @ -1 @ 3 ) ) ) ) ) )).

thf(p11_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( V_y
        = ( '+/2' @ ( '*/2' @ -2 @ V_x ) @ 1 ) ) ) ),
    answer_to(p11_question,[])).

thf(p12_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( 4 = V_x ) ) ),
    answer_to(p12_question,[])).

thf(p13_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( 3 = V_y ) ) ),
    answer_to(p13_question,[])).

thf(p21_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( V_y
        = ( '+/2' @ ( '*/2' @ ( '//2' @ -3 @ 2 ) @ V_x ) @ ( '//2' @ -1 @ 2 ) ) ) ) ),
    answer_to(p21_question,[])).

thf(p22_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( 7 = V_y ) ) ),
    answer_to(p22_question,[])).

thf(p23_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( ( '//2' @ 3 @ 2 )
        = V_x ) ) ),
    answer_to(p23_question,[])).

thf(p24_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( 5
        = ( '+/2' @ ( '*/2' @ 2 @ V_x ) @ ( '*/2' @ -15 @ V_y ) ) ) ) ),
    answer_to(p24_question,[])).
