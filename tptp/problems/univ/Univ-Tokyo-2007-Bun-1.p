%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2007, Humanities Course, Problem 1
%% AUTHOR:    Ukyo Suzuki
%% GENERATED: 2013-11-29
%%
%% <PROBLEM-TEXT>
%% Let $D$ be the region defined by the simultaneous inequalities
%% $y(y - |x^2 - 5| + 4)\le 0, y+x^2-2 x-3\le 0$.
%%
%% (1) Draw $D$.
%%
%% (2) Find the area of $D$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  140 (   3 equality;  25 variable)
%            Maximal formula depth :   21 (  16 average)
%            Number of connectives :  130 (   0   ~;   1   |;   8   &; 121   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   0   :;   0   =)
%            Number of variables   :    6 (   0 sgn;   0   !;   0   ?;   6   ^)
%                                         (   6   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   15 (   1 pred;    5 func;    9 numbers)

include('axioms.ax').

thf(p1_qustion,question,
    ( 'draw/1' @ '2d.Shape'
    @ ^ [V_x: '2d.Shape'] :
        ( V_x
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_p: '2d.Point'] :
              ( ( $lesseq @ ( $product @ ( '2d.y-coord/1' @ V_p ) @ ( $sum @ ( '2d.y-coord/1' @ V_p ) @ ( $sum @ ( $uminus @ ( 'abs/1' @ ( $difference @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2.0 ) @ 5.0 ) ) ) @ 4.0 ) ) ) @ 0.0 )
              & ( $lesseq @ ( $sum @ ( '2d.y-coord/1' @ V_p ) @ ( $sum @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2.0 ) @ ( $sum @ ( $uminus @ ( $product @ 2.0 @ ( '2d.x-coord/1' @ V_p ) ) ) @ -3.0 ) ) ) @ 0.0 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_x: $real] :
        ( V_x
        = ( '2d.area-of/1'
          @ ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( $lesseq @ ( $product @ ( '2d.y-coord/1' @ V_p ) @ ( $sum @ ( '2d.y-coord/1' @ V_p ) @ ( $sum @ ( $uminus @ ( 'abs/1' @ ( $difference @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2.0 ) @ 5.0 ) ) ) @ 4.0 ) ) ) @ 0.0 )
                & ( $lesseq @ ( $sum @ ( '2d.y-coord/1' @ V_p ) @ ( $sum @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2.0 ) @ ( $sum @ ( $uminus @ ( $product @ 2.0 @ ( '2d.x-coord/1' @ V_p ) ) ) @ -3.0 ) ) ) @ 0.0 ) ) ) ) ) )).

thf(p1_answer,answer,
    ( '2d.shape-of-cpfun/1'
    @ ^ [V_p_dot_0: '2d.Point'] :
        ( ( ( $lesseq @ 0.0 @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
          & ( $lesseq @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( $difference @ ( 'abs/1' @ ( $difference @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2.0 ) @ 5.0 ) ) @ 4.0 ) )
          & ( $lesseq @ -1.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
          & ( $lesseq @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 1.0 ) )
        | ( ( $lesseq @ ( $difference @ ( 'abs/1' @ ( $difference @ ( '^/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 2.0 ) @ 5.0 ) ) @ 4.0 ) @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
          & ( $lesseq @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ 0.0 )
          & ( $lesseq @ 1.0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
          & ( $lesseq @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 3.0 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_x_dot_0: $real] :
      ( V_x_dot_0
      = ( $difference @ 20.0 @ ( $product @ ( $quotient @ 20.0 @ 3.0 ) @ ( 'sqrt/1' @ 5.0 ) ) ) ) ),
    answer_to(p2_question,[])).

