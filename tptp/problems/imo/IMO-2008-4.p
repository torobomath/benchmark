%% DOMAIN:    Algebra, functional equations
%% THEORY:    ZF
%% SOURCE:    International Mathematical Olympiad, 2008, Problem 4
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-22
%%
%% <PROBLEM-TEXT>
%% Find all functions f : (0, infinity) -> (0, infinity) (so, f is a function
%% from the positive real numbers to the positive real numbers) such that
%% (f(w)^2 + f(x)^2) / (f(y^2) + f(z^2)) = (w^2 + x^2)/(y^2 + z^2)
%% for all positive real numbers w, x, y, z, satisfying wx = yz.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   91 (   5 equality;  32 variable)
%            Maximal formula depth :   18 (  14 average)
%            Number of connectives :   78 (   0   ~;   1   |;   6   &;  68   @)
%                                         (   0 <=>;   3  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    3 (   3   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   14 (   0   :;   0   =)
%            Number of variables   :   12 (   2 sgn;   6   !;   0   ?;   6   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    9 (   3 pred;    3 func;    3 numbers)

include('axioms.ax').

thf(p_qustion,question,
    ( 'find/1' @ ( $real > $real )
    @ ^ [V_f: ( $real > $real )] :
        ( ! [V_x_dot_1: $real] :
            ( ( $lesseq @ V_x_dot_1 @ 0.0 )
           => ( ( V_f @ V_x_dot_1 )
              = 0.0 ) )
        & ! [V_x_dot_0: $real] :
            ( ( $less @ 0.0 @ V_x_dot_0 )
           => ( $less @ 0.0 @ ( V_f @ V_x_dot_0 ) ) )
        & ! [V_w: $real,V_x: $real,V_y: $real,V_z: $real] :
            ( ( ( ( $product @ V_w @ V_x )
                = ( $product @ V_y @ V_z ) )
              & ( $greater @ V_x @ 0.0 )
              & ( $greater @ V_y @ 0.0 )
              & ( $greater @ V_w @ 0.0 )
              & ( $greater @ V_z @ 0.0 ) )
           => ( ( $quotient @ ( $sum @ ( '^/2' @ ( V_f @ V_w ) @ 2.0 ) @ ( '^/2' @ ( V_f @ V_x ) @ 2.0 ) ) @ ( $sum @ ( V_f @ ( '^/2' @ V_y @ 2.0 ) ) @ ( V_f @ ( '^/2' @ V_z @ 2.0 ) ) ) )
              = ( $quotient @ ( $sum @ ( '^/2' @ V_w @ 2.0 ) @ ( '^/2' @ V_x @ 2.0 ) ) @ ( $sum @ ( '^/2' @ V_y @ 2.0 ) @ ( '^/2' @ V_z @ 2.0 ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_f_dot_0: ( $real > $real )] :
      ( ( V_f_dot_0
        = ( ^ [V_x_dot_3: $real] :
              ( 'if/3' @ $real
              @ ^ [V___dot_0: 'Unit'] :
                  ( $less @ V_x_dot_3 @ 0.0 )
              @ 0.0
              @ V_x_dot_3 ) ) )
      | ( V_f_dot_0
        = ( ^ [V_x_dot_2: $real] :
              ( 'if/3' @ $real
              @ ^ [V__: 'Unit'] :
                  ( $less @ V_x_dot_2 @ 0.0 )
              @ 0.0
              @ ( $quotient @ 1.0 @ V_x_dot_2 ) ) ) ) ) ),
    answer_to(p_question,[])).

