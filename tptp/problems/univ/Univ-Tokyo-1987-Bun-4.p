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

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  100 (   6 equality;  37 variable)
%            Maximal formula depth :   31 (  23 average)
%            Number of connectives :   86 (   0   ~;   0   |;  12   &;  74   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   11 (   0 sgn;   0   !;   4   ?;   3   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
        ( ( '>/2' @ V_a @ V_b )
        & ( '>/2' @ V_b @ 0 )
        & ? [V_R: '3d.Shape'] :
            ( ( V_R
              = ( '3d.shape-of-cpfun/1'
                @ ^ [V_p: '3d.Point'] :
                  ? [V_x: 'R',V_y: 'R',V_z: 'R'] :
                    ( ( V_x
                      = ( '3d.x-coord/1' @ V_p ) )
                    & ( V_y
                      = ( '3d.y-coord/1' @ V_p ) )
                    & ( V_z
                      = ( '3d.z-coord/1' @ V_p ) )
                    & ( '>=/2' @ V_x @ 0 )
                    & ( '>=/2' @ V_y @ 0 )
                    & ( '>=/2' @ V_z @ 0 )
                    & ( '<=/2' @ ( 'list-max/1' @ ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) ) @ V_a )
                    & ( '<=/2' @ ( '+/2' @ V_x @ ( '+/2' @ V_y @ ( '+/2' @ V_z @ ( '-/1' @ ( 'list-min/1' @ ( 'cons/2' @ V_x @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_z @ 'nil/0' ) ) ) ) ) ) ) ) @ ( '+/2' @ V_a @ V_b ) ) ) ) )
            & ( V_V
              = ( '3d.volume-of/1' @ V_R ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( ( '>/2' @ V_a @ V_b )
      & ( '>/2' @ V_b @ 0 )
      & ( V_V_dot_0
        = ( '//2' @ ( '+/2' @ ( '^/2' @ V_a @ 3 ) @ ( '+/2' @ ( '*/2' @ 3 @ ( '*/2' @ ( '^/2' @ V_a @ 2 ) @ V_b ) ) @ ( '+/2' @ ( '*/2' @ 3 @ ( '*/2' @ V_a @ ( '^/2' @ V_b @ 2 ) ) ) @ ( '-/1' @ ( '*/2' @ 3 @ ( '^/2' @ V_b @ 3 ) ) ) ) ) ) @ 4 ) ) ) ),
    answer_to(p_question,[])).
