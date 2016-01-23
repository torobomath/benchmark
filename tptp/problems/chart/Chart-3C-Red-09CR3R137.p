%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     1
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3R137
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  116 (  12 equality;  38 variable)
%            Maximal formula depth :   22 (  12 average)
%            Number of connectives :   90 (   0   ~;   0   |;  11   &;  77   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   28 (   0   :)
%            Number of variables   :   17 (   0 sgn;   1   !;   5   ?;   9   ^)
%                                         (  15   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_f: '2d.Shape'] :
        ( ( V_f
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ 0 @ V_x )
                & ( '<=/2' @ V_x @ ( '*/2' @ 2 @ 'Pi/0' ) )
                & ( V_y
                  = ( 'sin/1' @ V_x ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_f @ ( 'cons/2' @ '2d.x-axis/0' @ 'nil/0' ) ) ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_f: 'R' > 'R',V_C: '2d.Shape',V_l: '2d.Shape'] :
        ( ( V_f
          = ( ^ [V_x_dot_1: 'R'] :
                ( '*/2' @ ( '-/2' @ 3 @ V_x_dot_1 ) @ ( 'exp/1' @ V_x_dot_1 ) ) ) )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y: 'R'] :
                ( V_y
                = ( 'LamApp/2' @ V_f @ V_x_dot_0 ) ) ) )
        & ( V_l
          = ( '2d.line/2' @ ( '2d.point/2' @ V_a @ 0 ) @ ( '2d.point/2' @ V_a @ 1 ) ) )
        & ( V_answer
          = ( 'cons/2' @ V_a @ ( 'cons/2' @ V_S @ 'nil/0' ) ) )
        & ( 0
          = ( 'LamApp/2' @ ( 'deriv/1' @ V_f ) @ V_a ) )
        & ? [V_d: 'R'] :
            ( ( '</2' @ 0 @ V_d )
            & ! [V_x: 'R'] :
                ( ( ( '</2' @ ( '-/2' @ V_x @ V_a ) @ V_d )
                 => ( '<=/2' @ ( 'LamApp/2' @ ( 'deriv/1' @ V_f ) @ V_x ) @ 0 ) )
                & ( ( '</2' @ ( '-/2' @ V_a @ V_x ) @ V_d )
                 => ( '<=/2' @ 0 @ ( 'LamApp/2' @ ( 'deriv/1' @ V_f ) @ V_x ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C @ ( 'cons/2' @ V_l @ ( 'cons/2' @ '2d.x-axis/0' @ 'nil/0' ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] : ( V_S_dot_0 = 4 ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( V_answer_dot_0
      = ( 'cons/2' @ 2 @ ( 'cons/2' @ ( '+/2' @ ( 'exp/1' @ 3 ) @ ( '*/2' @ -2 @ ( 'exp/1' @ 2 ) ) ) @ 'nil/0' ) ) ) ),
    answer_to(p2_question,[])).
