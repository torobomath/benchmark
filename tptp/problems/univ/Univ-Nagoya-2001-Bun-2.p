%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    Nagoya University, 2001, Humanities Course, Problem 2
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2014-08-06
%%
%% <PROBLEM-TEXT>
%% Let $a$, $b$, and $c$ be constants, where $a > 0$.
%%
%% (1) Prove that there exists only one tangent to the curve
%% $y = - a x^3 + b x + c$ at the point $(0, t)$ ( $t$ is a real
%% number).
%%
%% (2) Find the range of $t$ such that the tangent described in (1) has
%% a positive inclination.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    7 (   0 unit;   4 type;   0 defn)
%            Number of atoms       :  133 (   1 equality;  24 variable)
%            Maximal formula depth :   22 (   9 average)
%            Number of connectives :  128 (   0   ~;   0   |;  13   &; 113   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   4   :;   0   =)
%            Number of variables   :    9 (   0 sgn;   4   !;   3   ?;   2   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   10 (   2 pred;    5 func;    3 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf('c/0_type',type,(
    'c/0': $real )).

thf('t/0_type',type,(
    't/0': $real )).

thf(p1,conjecture,(
    ! [V_a: $real,V_b: $real,V_c: $real] :
      ( ( $less @ 0.0 @ V_a )
     => ? [V_l: '2d.Shape'] :
          ( ( '2d.line-type/1' @ V_l )
          & ( '2d.tangent/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_c @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $uminus @ V_a ) @ ( 'nil/0' @ $real ) ) ) ) ) ) ) @ V_l )
          & ( '2d.on/2' @ ( '2d.point/2' @ 0.0 @ 't/0' ) @ V_l )
          & ! [V_m: '2d.Shape'] :
              ( ( ( '2d.tangent/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ V_c @ ( 'cons/2' @ $real @ V_b @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $uminus @ V_a ) @ ( 'nil/0' @ $real ) ) ) ) ) ) ) @ V_m )
                & ( '2d.line-type/1' @ V_m )
                & ( '2d.on/2' @ ( '2d.point/2' @ 0.0 @ 't/0' ) @ V_m ) )
             => ( V_l = V_m ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_t: $real] :
      ? [V_l: '2d.Shape'] :
        ( ( '2d.line-type/1' @ V_l )
        & ( '2d.tangent/2' @ ( '2d.graph-of/1' @ ( 'poly-fun/1' @ ( 'cons/2' @ $real @ 'c/0' @ ( 'cons/2' @ $real @ 'b/0' @ ( 'cons/2' @ $real @ 0.0 @ ( 'cons/2' @ $real @ ( $uminus @ 'a/0' ) @ ( 'nil/0' @ $real ) ) ) ) ) ) ) @ V_l )
        & ( '2d.on/2' @ ( '2d.point/2' @ 0.0 @ V_t ) @ V_l )
        & ( $less @ 0.0 @ 'a/0' )
        & ? [V_s: $real] :
            ( ( $less @ 0.0 @ V_s )
            & ( '2d.is-slope-of/2' @ V_s @ V_l ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_t_dot_0: $real] :
      ( ( $greater @ 'b/0' @ 0.0 )
      & ( $less @ 0.0 @ 'a/0' )
      & ( $less @ ( $difference @ 'c/0' @ ( $product @ ( $quotient @ ( $product @ 2.0 @ 'b/0' ) @ 3.0 ) @ ( 'sqrt/1' @ ( $quotient @ 'b/0' @ ( $product @ 3.0 @ 'a/0' ) ) ) ) ) @ V_t_dot_0 )
      & ( $less @ V_t_dot_0 @ ( $sum @ 'c/0' @ ( $product @ ( $quotient @ ( $product @ 2.0 @ 'b/0' ) @ 3.0 ) @ ( 'sqrt/1' @ ( $quotient @ 'b/0' @ ( $product @ 3.0 @ 'a/0' ) ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

