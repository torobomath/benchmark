%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Yellow Book, Problem 08CYBE053
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-29

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  109 (  14 equality;  50 variable)
%            Maximal formula depth :   26 (  15 average)
%            Number of connectives :   77 (   0   ~;   0   |;  10   &;  67   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :   16 (  16   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :;   0   =)
%            Number of variables   :   36 (   0 sgn;   0   !;  14   ?;  22   ^)
%                                         (  36   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   0 pred;    3 func;    2 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_max: $real] :
      ? [V_C1: ( $real > $real > $o ),V_C2: ( $real > $real > $o )] :
        ( ( V_C1
          = ( ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
                ( 1.0
                = ( $sum @ ( '^/2' @ V_x_dot_1 @ 2.0 ) @ ( '^/2' @ V_y_dot_1 @ 2.0 ) ) ) ) )
        & ( V_C2
          = ( ^ [V_a_dot_1: $real,V_b_dot_1: $real] :
                ( 2.0
                = ( $sum @ ( '^/2' @ V_a_dot_1 @ 2.0 ) @ ( '^/2' @ V_b_dot_1 @ 2.0 ) ) ) ) )
        & ( 'maximum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_v: $real] :
              ? [V_x: $real,V_y: $real,V_a: $real,V_b: $real,V_f: ( $real > $real > $real > $real > $real )] :
                ( ( V_f
                  = ( ^ [V_x_dot_0: $real,V_y_dot_0: $real,V_a_dot_0: $real,V_b_dot_0: $real] :
                        ( $sum @ ( $product @ V_a_dot_0 @ V_x_dot_0 ) @ ( $product @ V_b_dot_0 @ V_y_dot_0 ) ) ) )
                & ( V_C1 @ V_x @ V_y )
                & ( V_C2 @ V_a @ V_b )
                & ( V_v
                  = ( V_f @ V_x @ V_y @ V_a @ V_b ) ) ) )
          @ V_max ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_min: $real] :
      ? [V_C1: ( $real > $real > $o ),V_C2: ( $real > $real > $o )] :
        ( ( V_C1
          = ( ^ [V_x_dot_1: $real,V_y_dot_1: $real] :
                ( 1.0
                = ( $sum @ ( '^/2' @ V_x_dot_1 @ 2.0 ) @ ( '^/2' @ V_y_dot_1 @ 2.0 ) ) ) ) )
        & ( V_C2
          = ( ^ [V_a_dot_1: $real,V_b_dot_1: $real] :
                ( 2.0
                = ( $sum @ ( '^/2' @ V_a_dot_1 @ 2.0 ) @ ( '^/2' @ V_b_dot_1 @ 2.0 ) ) ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_v: $real] :
              ? [V_x: $real,V_y: $real,V_a: $real,V_b: $real,V_f: ( $real > $real > $real > $real > $real )] :
                ( ( V_f
                  = ( ^ [V_x_dot_0: $real,V_y_dot_0: $real,V_a_dot_0: $real,V_b_dot_0: $real] :
                        ( $sum @ ( $product @ V_a_dot_0 @ V_x_dot_0 ) @ ( $product @ V_b_dot_0 @ V_y_dot_0 ) ) ) )
                & ( V_C1 @ V_x @ V_y )
                & ( V_C2 @ V_a @ V_b )
                & ( V_v
                  = ( V_f @ V_x @ V_y @ V_a @ V_b ) ) ) )
          @ V_min ) ) )).

thf(p1_answer,answer,(
    ^ [V_max_dot_0: $real] :
      ( V_max_dot_0
      = ( 'sqrt/1' @ 2.0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_min_dot_0: $real] :
      ( V_min_dot_0
      = ( $uminus @ ( 'sqrt/1' @ 2.0 ) ) ) ),
    answer_to(p2_question,[])).

