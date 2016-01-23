%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CB2P164
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   74 (  12 equality;  24 variable)
%            Maximal formula depth :   17 (  14 average)
%            Number of connectives :   48 (   0   ~;   5   |;   9   &;  34   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   22 (   0   :)
%            Number of variables   :   11 (   1 sgn;   0   !;   2   ?;   7   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_n: 'Z'] :
      ? [V_F: '2d.Shape',V_C: '2d.Shape'] :
        ( ( V_F
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
                ( V_y_dot_0
                = ( '^/2' @ V_x_dot_0 @ 2 ) ) ) )
        & ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( 16
                = ( '+/2' @ ( '^/2' @ V_x @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y @ V_a ) @ 2 ) ) ) ) )
        & ( V_n
          = ( 'cardinality-of/1'
            @ ( 'set-by-def/1'
              @ ^ [V_P: '2d.Point'] :
                  ( '2d.intersect/3' @ V_F @ V_C @ V_P ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_n_dot_0: 'Z'] :
      ( ( ( '</2' @ 4 @ V_a )
        & ( '</2' @ V_a @ ( '//2' @ 65 @ 4 ) )
        & ( V_n_dot_0 = 4 ) )
      | ( ( V_a = 4 )
        & ( V_n_dot_0 = 3 ) )
      | ( ( '</2' @ -4 @ V_a )
        & ( '</2' @ V_a @ 4 )
        & ( V_n_dot_0 = 2 ) )
      | ( ( V_a = -4 )
        & ( V_n_dot_0 = 1 ) )
      | ( ( ( '</2' @ V_a @ -4 )
          | ( '</2' @ ( '//2' @ 65 @ 4 ) @ V_a ) )
        & ( V_n_dot_0 = 0 ) ) ) ),
    answer_to(p_question,[])).
