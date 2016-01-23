%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2P140
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   64 (   8 equality;  21 variable)
%            Maximal formula depth :   21 (  14 average)
%            Number of connectives :   47 (   1   ~;   1   |;   5   &;  40   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   4   ?;   6   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_m: 'R'] :
      ? [V_l: '2d.Shape',V_C: '2d.Shape',V_P: '2d.Point',V_Q: '2d.Point'] :
        ( ( V_l
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( V_y_dot_0
                = ( '+/2' @ ( '*/2' @ V_m @ V_x_dot_0 ) @ 1 ) ) ) )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( 0
                = ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '+/2' @ ( '^/2' @ V_y @ 2 ) @ ( '+/2' @ ( '*/2' @ -2 @ V_x ) @ ( '+/2' @ ( '*/2' @ -4 @ V_y ) @ 4 ) ) ) ) ) ) )
        & ( V_P != V_Q )
        & ( '2d.on/2' @ V_P @ ( '2d.intersection/2' @ V_l @ V_C ) )
        & ( '2d.on/2' @ V_Q @ ( '2d.intersection/2' @ V_l @ V_C ) )
        & ( ( 'sqrt/1' @ 2 )
          = ( '2d.distance/2' @ V_P @ V_Q ) ) ) )).

thf(p_answer,answer,(
    ^ [V_m_dot_0: 'R'] :
      ( ( V_m_dot_0
        = ( '+/2' @ 2 @ ( 'sqrt/1' @ 3 ) ) )
      | ( V_m_dot_0
        = ( '-/2' @ 2 @ ( 'sqrt/1' @ 3 ) ) ) ) ),
    answer_to(p_question,[])).
