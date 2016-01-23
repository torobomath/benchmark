%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CY2E172
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   78 (  11 equality;  35 variable)
%            Maximal formula depth :   23 (  18 average)
%            Number of connectives :   57 (   1   ~;   1   |;  10   &;  45   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :   17 (   0 sgn;   0   !;  11   ?;   6   ^)
%                                         (  17   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_l: '2d.Shape',V_F: '2d.Shape',V_M: '2d.Point',V_P: '2d.Point',V_Q: '2d.Point',V_x: 'R',V_y: 'R',V_m: 'R'] :
        ( ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
                ( V_y_dot_1
                = ( '*/2' @ V_m @ V_x_dot_1 ) ) ) )
        & ( V_F
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( V_y_dot_0
                = ( '+/2' @ ( '^/2' @ V_x_dot_0 @ 2 ) @ 1 ) ) ) )
        & ( V_M
          = ( '2d.midpoint-of/2' @ V_P @ V_Q ) )
        & ( V_P != V_Q )
        & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_l @ V_F ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.intersection/2' @ V_l @ V_F ) )
        & ( V_answer
          = ( 'cons/2' @ V_m @ ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ 'nil/0' ) ) ) )
        & ( ( '2d.point/2' @ V_x @ V_y )
          = V_M ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
    ? [V_m_dot_0: 'R',V_x_dot_2: 'R',V_y_dot_2: 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_m_dot_0 @ ( 'cons/2' @ V_x_dot_2 @ ( 'cons/2' @ V_y_dot_2 @ 'nil/0' ) ) ) )
      & ( V_m_dot_0
        = ( '*/2' @ 2 @ V_x_dot_2 ) )
      & ( V_y_dot_2
        = ( '*/2' @ 2 @ ( '^/2' @ V_x_dot_2 @ 2 ) ) )
      & ( ( '</2' @ V_x_dot_2 @ -1 )
        | ( '</2' @ 1 @ V_x_dot_2 ) ) ) ),
    answer_to(p_question,[])).
