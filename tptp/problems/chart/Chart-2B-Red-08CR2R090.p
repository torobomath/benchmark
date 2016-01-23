%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2R090
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   73 (  10 equality;  32 variable)
%            Maximal formula depth :   20 (  15 average)
%            Number of connectives :   54 (   1   ~;   1   |;   9   &;  43   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   16 (   0 sgn;   0   !;   6   ?;   6   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_l: '2d.Shape',V_F: '2d.Shape',V_P: '2d.Point',V_A: '2d.Point',V_B: '2d.Point',V_m: 'R'] :
        ( ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
                ( V_y_dot_1
                = ( '*/2' @ V_m @ V_x_dot_1 ) ) ) )
        & ( V_F
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( V_y_dot_0
                = ( '^/2' @ ( '-/2' @ V_x_dot_0 @ 1 ) @ 2 ) ) ) )
        & ( V_P
          = ( '2d.midpoint-of/2' @ V_A @ V_B ) )
        & ( V_answer
          = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
        & ( V_A != V_B )
        & ( '2d.on/2' @ V_A @ ( '2d.intersection/2' @ V_l @ V_F ) )
        & ( '2d.on/2' @ V_B @ ( '2d.intersection/2' @ V_l @ V_F ) )
        & ( ( '2d.point/2' @ V_x @ V_y )
          = V_P ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) )
      & ( ( '</2' @ V_x @ -1 )
        | ( '</2' @ 1 @ V_x ) )
      & ( V_y
        = ( '+/2' @ ( '*/2' @ 2 @ ( '^/2' @ V_x @ 2 ) ) @ ( '*/2' @ -2 @ V_x ) ) ) ) ),
    answer_to(p_question,[])).
