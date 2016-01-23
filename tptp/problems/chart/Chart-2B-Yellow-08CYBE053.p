%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE053
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  121 (  14 equality;  50 variable)
%            Maximal formula depth :   28 (  16 average)
%            Number of connectives :   89 (   0   ~;   0   |;  10   &;  79   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :   16 (  16   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   15 (   0   :)
%            Number of variables   :   36 (   0 sgn;   0   !;  14   ?;  22   ^)
%                                         (  36   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_max: 'R'] :
      ? [V_C1: 'R' > 'R' > $o,V_C2: 'R' > 'R' > $o] :
        ( ( V_C1
          = ( ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
                ( 1
                = ( '+/2' @ ( '^/2' @ V_x_dot_1 @ 2 ) @ ( '^/2' @ V_y_dot_1 @ 2 ) ) ) ) )
        & ( V_C2
          = ( ^ [V_a_dot_1: 'R',V_b_dot_1: 'R'] :
                ( 2
                = ( '+/2' @ ( '^/2' @ V_a_dot_1 @ 2 ) @ ( '^/2' @ V_b_dot_1 @ 2 ) ) ) ) )
        & ( 'maximum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_v: 'R'] :
              ? [V_x: 'R',V_y: 'R',V_a: 'R',V_b: 'R',V_f: 'R' > 'R' > 'R' > 'R' > 'R'] :
                ( ( V_f
                  = ( ^ [V_x_dot_0: 'R',V_y_dot_0: 'R',V_a_dot_0: 'R',V_b_dot_0: 'R'] :
                        ( '+/2' @ ( '*/2' @ V_a_dot_0 @ V_x_dot_0 ) @ ( '*/2' @ V_b_dot_0 @ V_y_dot_0 ) ) ) )
                & ( 'PLamApp/2' @ ( 'LamApp/2' @ V_C1 @ V_x ) @ V_y )
                & ( 'PLamApp/2' @ ( 'LamApp/2' @ V_C2 @ V_a ) @ V_b )
                & ( V_v
                  = ( 'LamApp/2' @ ( 'LamApp/2' @ ( 'LamApp/2' @ ( 'LamApp/2' @ V_f @ V_x ) @ V_y ) @ V_a ) @ V_b ) ) ) )
          @ V_max ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_min: 'R'] :
      ? [V_C1: 'R' > 'R' > $o,V_C2: 'R' > 'R' > $o] :
        ( ( V_C1
          = ( ^ [V_x_dot_1: 'R',V_y_dot_1: 'R'] :
                ( 1
                = ( '+/2' @ ( '^/2' @ V_x_dot_1 @ 2 ) @ ( '^/2' @ V_y_dot_1 @ 2 ) ) ) ) )
        & ( V_C2
          = ( ^ [V_a_dot_1: 'R',V_b_dot_1: 'R'] :
                ( 2
                = ( '+/2' @ ( '^/2' @ V_a_dot_1 @ 2 ) @ ( '^/2' @ V_b_dot_1 @ 2 ) ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_v: 'R'] :
              ? [V_x: 'R',V_y: 'R',V_a: 'R',V_b: 'R',V_f: 'R' > 'R' > 'R' > 'R' > 'R'] :
                ( ( V_f
                  = ( ^ [V_x_dot_0: 'R',V_y_dot_0: 'R',V_a_dot_0: 'R',V_b_dot_0: 'R'] :
                        ( '+/2' @ ( '*/2' @ V_a_dot_0 @ V_x_dot_0 ) @ ( '*/2' @ V_b_dot_0 @ V_y_dot_0 ) ) ) )
                & ( 'PLamApp/2' @ ( 'LamApp/2' @ V_C1 @ V_x ) @ V_y )
                & ( 'PLamApp/2' @ ( 'LamApp/2' @ V_C2 @ V_a ) @ V_b )
                & ( V_v
                  = ( 'LamApp/2' @ ( 'LamApp/2' @ ( 'LamApp/2' @ ( 'LamApp/2' @ V_f @ V_x ) @ V_y ) @ V_a ) @ V_b ) ) ) )
          @ V_min ) ) )).

thf(p1_answer,answer,(
    ^ [V_max_dot_0: 'R'] :
      ( V_max_dot_0
      = ( 'sqrt/1' @ 2 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_min_dot_0: 'R'] :
      ( V_min_dot_0
      = ( '-/1' @ ( 'sqrt/1' @ 2 ) ) ) ),
    answer_to(p2_question,[])).
