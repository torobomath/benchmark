%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1987, Humanities Course, Problem 4
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-15
%%
%% <PROBLEM-TEXT>
%% Let $max(x, y, z)$ be the maximum number, and $min(x, y, z)$ the
%% minimum number, among three real numbers: $x$, $y$, and $z$. Let $R$
%% be the set of all the points whose coordinates are $x$, $y$, and $z$
%% that satisfy the following conditions:
%%
%% $x\ge 0$, $y\ge 0$, $z\ge 0$,
%%
%% $max(x, y, z)\le a$, and
%%
%% $x + y + z - min(x, y, z)\le a + b$.
%%
%% Find the volume of $R$, where $a$ and $b$ are real numbers, and
%% $a > b > 0$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    4 (   0 unit;   2 type;   0 defn)
%            Number of atoms       :  109 (   6 equality;  22 variable)
%            Maximal formula depth :   32 (  13 average)
%            Number of connectives :   95 (   0   ~;   0   |;  12   &;  83   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (   2   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   0   !;   4   ?;   3   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   3 pred;    4 func;    4 numbers)

include('axioms.ax').

thf('a/0_type',type,(
    'a/0': $real )).

thf('b/0_type',type,(
    'b/0': $real )).

thf(p_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_V: $real] :
        ( ( $greater @ 'a/0' @ 'b/0' )
        & ( $greater @ 'b/0' @ 0.0 )
        & ? [V_R: '3d.Shape'] :
            ( ( V_R
              = ( '3d.shape-of-cpfun/1'
                @ ^ [V_p: '3d.Point'] :
                  ? [V_x: $real,V_y: $real,V_z: $real] :
                    ( ( V_x
                      = ( '3d.x-coord/1' @ V_p ) )
                    & ( V_y
                      = ( '3d.y-coord/1' @ V_p ) )
                    & ( V_z
                      = ( '3d.z-coord/1' @ V_p ) )
                    & ( $greatereq @ V_x @ 0.0 )
                    & ( $greatereq @ V_y @ 0.0 )
                    & ( $greatereq @ V_z @ 0.0 )
                    & ( $lesseq @ ( 'list-max/1' @ ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'cons/2' @ $real @ V_z @ ( 'nil/0' @ $real ) ) ) ) ) @ 'a/0' )
                    & ( $lesseq @ ( $sum @ V_x @ ( $sum @ V_y @ ( $sum @ V_z @ ( $uminus @ ( 'list-min/1' @ ( 'cons/2' @ $real @ V_x @ ( 'cons/2' @ $real @ V_y @ ( 'cons/2' @ $real @ V_z @ ( 'nil/0' @ $real ) ) ) ) ) ) ) ) ) @ ( $sum @ 'a/0' @ 'b/0' ) ) ) ) )
            & ( V_V
              = ( '3d.volume-of/1' @ V_R ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_V_dot_0: $real] :
      ( ( $greater @ 'a/0' @ 'b/0' )
      & ( $greater @ 'b/0' @ 0.0 )
      & ( V_V_dot_0
        = ( $quotient @ ( $sum @ ( '^/2' @ 'a/0' @ 3.0 ) @ ( $sum @ ( $product @ 3.0 @ ( $product @ ( '^/2' @ 'a/0' @ 2.0 ) @ 'b/0' ) ) @ ( $sum @ ( $product @ 3.0 @ ( $product @ 'a/0' @ ( '^/2' @ 'b/0' @ 2.0 ) ) ) @ ( $uminus @ ( $product @ 3.0 @ ( '^/2' @ 'b/0' @ 3.0 ) ) ) ) ) ) @ 4.0 ) ) ) ),
    answer_to(p_question,[])).

