%% DOMAIN:    Exponential and Logarithm Function
%% THEORY:    PA
%% LEVEL:     4
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2E074
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-08

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  127 (  10 equality;  39 variable)
%            Maximal formula depth :   33 (  22 average)
%            Number of connectives :  110 (   3   ~;   2   |;  18   &;  87   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   20 (   0   :;   0   =)
%            Number of variables   :    8 (   0 sgn;   0   !;   6   ?;   2   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   12 (   3 pred;    2 func;    7 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $int )
    @ ^ [V_answer: ( 'ListOf' @ $int )] :
      ? [V_a: $int,V_b: $int,V_c: $int,V_x: $real,V_y: $real,V_z: $real] :
        ( ( $is_int @ V_a )
        & ( $less @ 0 @ V_a )
        & ( $is_int @ V_b )
        & ( $lesseq @ V_a @ V_b )
        & ( $is_int @ V_c )
        & ( $lesseq @ V_b @ V_c )
        & ( 'real-number/1' @ V_x )
        & ( $less @ 0.0 @ V_x )
        & ( V_x
         != ( $to_real @ 1 ) )
        & ( 'real-number/1' @ V_y )
        & ( $less @ 0.0 @ V_y )
        & ( V_y
         != ( $to_real @ 1 ) )
        & ( 'real-number/1' @ V_z )
        & ( $less @ 0.0 @ V_z )
        & ( V_z
         != ( $to_real @ 1 ) )
        & ( ( '^/2' @ V_x @ ( $to_real @ V_a ) )
          = ( $product @ V_x @ ( $product @ V_y @ V_z ) ) )
        & ( ( '^/2' @ V_y @ ( $to_real @ V_b ) )
          = ( $product @ V_x @ ( $product @ V_y @ V_z ) ) )
        & ( ( '^/2' @ V_z @ ( $to_real @ V_c ) )
          = ( $product @ V_x @ ( $product @ V_y @ V_z ) ) )
        & ( V_answer
          = ( 'cons/2' @ $int @ V_a @ ( 'cons/2' @ $int @ V_b @ ( 'cons/2' @ $int @ V_c @ ( 'nil/0' @ $int ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $int )] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 6 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 2 @ ( 'cons/2' @ $int @ 4 @ ( 'cons/2' @ $int @ 4 @ ( 'nil/0' @ $int ) ) ) ) )
      | ( V_answer_dot_0
        = ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 3 @ ( 'cons/2' @ $int @ 3 @ ( 'nil/0' @ $int ) ) ) ) ) ) ),
    answer_to(p_question,[])).

