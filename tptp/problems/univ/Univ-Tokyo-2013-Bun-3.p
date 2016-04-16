%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2013, Humanities Course, Problem 3
%% AUTHOR:    Takuya Matsuzaki
%% GENERATED: 2013-11-11
%%
%% <PROBLEM-TEXT>
%% Let $a$ and $b$ be constant real numbers. When the real numbers $x$
%% and $y$ satisfy both $x^2+y^2\le 25$ and $2 x+y\le 5$, find the
%% minimum value of $z=x^2+y^2-2 a x-2 b y$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  213 (   6 equality;  15 variable)
%            Maximal formula depth :   20 (  11 average)
%            Number of connectives :  199 (   0   ~;   5   |;  13   &; 181   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   26 (   2   :;   0   =)
%            Number of variables   :    5 (   0 sgn;   0   !;   2   ?;   3   ^)
%                                         (   5   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   18 (   2 pred;    5 func;   11 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_m: $real] :
        ( 'minimum/2'
        @ ( 'set-by-def/1' @ $real
          @ ^ [V_z: $real] :
            ? [V_x: $real,V_y: $real] :
              ( ( $lesseq @ ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( '^/2' @ V_y @ 2.0 ) ) @ 25.0 )
              & ( $lesseq @ ( $sum @ ( $product @ 2.0 @ V_x ) @ V_y ) @ 5.0 )
              & ( V_z
                = ( $sum @ ( '^/2' @ V_x @ 2.0 ) @ ( $sum @ ( '^/2' @ V_y @ 2.0 ) @ ( $sum @ ( $uminus @ ( $product @ 2.0 @ ( $product @ 'a/0' @ V_x ) ) ) @ ( $uminus @ ( $product @ 2.0 @ ( $product @ 'b/0' @ V_y ) ) ) ) ) ) ) ) )
        @ V_m ) )).

thf(p_answer,answer,(
    ^ [V_m_dot_0: $real] :
      ( ( ( $lesseq @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) @ 25.0 )
        & ( $lesseq @ 'b/0' @ ( $difference @ 5.0 @ ( $product @ 2.0 @ 'a/0' ) ) )
        & ( V_m_dot_0
          = ( $uminus @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) ) )
      | ( ( $greatereq @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) @ 25.0 )
        & ( ( $lesseq @ 'a/0' @ 0.0 )
          | ( $lesseq @ 'b/0' @ ( $product @ ( $uminus @ ( $quotient @ 3.0 @ 4.0 ) ) @ 'a/0' ) ) )
        & ( V_m_dot_0
          = ( $difference @ 25.0 @ ( $product @ 10.0 @ ( 'sqrt/1' @ ( $sum @ ( '^/2' @ 'a/0' @ 2.0 ) @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) ) ) ) )
      | ( ( $greatereq @ 'b/0' @ ( $difference @ 5.0 @ ( $product @ 2.0 @ 'a/0' ) ) )
        & ( $lesseq @ 'b/0' @ ( $sum @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ 'a/0' ) @ 5.0 ) )
        & ( $greatereq @ 'b/0' @ ( $difference @ 5.0 @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ 'a/0' ) ) )
        & ( V_m_dot_0
          = ( $product @ ( $quotient @ 1.0 @ 5.0 ) @ ( $sum @ ( $uminus @ ( '^/2' @ 'a/0' @ 2.0 ) ) @ ( $sum @ ( $uminus @ ( $product @ 4.0 @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) @ ( $sum @ ( $product @ 4.0 @ ( $product @ 'a/0' @ 'b/0' ) ) @ ( $sum @ ( $uminus @ ( $product @ 20.0 @ 'a/0' ) ) @ ( $sum @ ( $uminus @ ( $product @ 10.0 @ 'b/0' ) ) @ 25.0 ) ) ) ) ) ) ) )
      | ( ( $greatereq @ 'a/0' @ 0.0 )
        & ( $greatereq @ 'b/0' @ ( $sum @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ 'a/0' ) @ 5.0 ) )
        & ( V_m_dot_0
          = ( $difference @ 25.0 @ ( $product @ 10.0 @ 'b/0' ) ) ) )
      | ( ( $greatereq @ 'b/0' @ ( $product @ ( $uminus @ ( $quotient @ 3.0 @ 4.0 ) ) @ 'a/0' ) )
        & ( $lesseq @ 'b/0' @ ( $difference @ ( $product @ ( $quotient @ 1.0 @ 2.0 ) @ 'a/0' ) @ 5.0 ) )
        & ( V_m_dot_0
          = ( $sum @ 25.0 @ ( $sum @ ( $uminus @ ( $product @ 8.0 @ 'a/0' ) ) @ ( $product @ 6.0 @ 'b/0' ) ) ) ) ) ) ),
    answer_to(p_question,[])).

