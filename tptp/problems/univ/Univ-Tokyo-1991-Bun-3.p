%% DOMAIN:    Functions and their Graphs
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 1991, Humanities Course, Problem 3
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-15
%%
%% <PROBLEM-TEXT>
%% Draw five circles with the radius $r$ and the centers at the vertices
%% $A$, $B$, $C$, $D$, and the common point $E$ of the diagonals of the
%% rectangle whose two side lengths are $1$ and $a$. When the radius $r$
%% is made maximum provided that any two circles have no common regions
%% on the inside, let $S(a)$ be the area cut out of the rectangle by the
%% five circles. Draw a rough graph of the function $\frac{S(a)}{a}$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  155 (   7 equality;  56 variable)
%            Maximal formula depth :   36 (  26 average)
%            Number of connectives :  139 (   0   ~;   2   |;  13   &; 124   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   37 (   0   :)
%            Number of variables   :   14 (   0 sgn;   0   !;   6   ?;   8   ^)
%                                         (  14   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Draw/1'
    @ ^ [V_G: '2d.Shape'] :
        ( V_G
        = ( '2d.set-of-cfun/1'
          @ ^ [V_a: 'R',V_S: 'R'] :
            ? [V_A: '2d.Point',V_B: '2d.Point',V_C: '2d.Point',V_D: '2d.Point',V_E: '2d.Point',V_r: 'R'] :
              ( ( '</2' @ 0 @ V_a )
              & ( '2d.is-rectangle/4' @ V_A @ V_B @ V_C @ V_D )
              & ( ( '2d.distance/2' @ V_A @ V_B )
                = 1 )
              & ( ( '2d.distance/2' @ V_A @ V_C )
                = V_a )
              & ( '2d.intersect/3' @ ( '2d.line/2' @ V_A @ V_C ) @ ( '2d.line/2' @ V_B @ V_D ) @ V_E )
              & ( '</2' @ 0 @ V_r )
              & ( 'maximum/2'
                @ ( 'set-by-def/1'
                  @ ^ [V_r0: 'R'] :
                      ( ( '</2' @ 0 @ V_r0 )
                      & ( 'combinatorial-all/2'
                        @ ^ [V_P: '2d.Point',V_Q: '2d.Point'] :
                            ( '2d.is-empty/1' @ ( '2d.intersection/2' @ ( '2d.inner-part-of/1' @ ( '2d.circle/2' @ V_P @ V_r0 ) ) @ ( '2d.inner-part-of/1' @ ( '2d.circle/2' @ V_Q @ V_r0 ) ) ) )
                        @ ( 'cons/2' @ V_A @ ( 'cons/2' @ V_B @ ( 'cons/2' @ V_C @ ( 'cons/2' @ V_D @ ( 'cons/2' @ V_E @ 'nil/0' ) ) ) ) ) ) ) )
                @ V_r )
              & ( V_S
                = ( '*/2' @ ( '//2' @ 1 @ V_a ) @ ( '2d.area-of/1' @ ( '2d.shape-of-cpfun/1' @ ( '2d.char-fun-of/1' @ ( '2d.intersection/2' @ ( '2d.with-boundary/1' @ ( '2d.square/4' @ V_A @ V_B @ V_C @ V_D ) ) @ ( '2d.union/1' @ ( 'cons/2' @ ( '2d.with-boundary/1' @ ( '2d.circle/2' @ V_A @ V_r ) ) @ ( 'cons/2' @ ( '2d.with-boundary/1' @ ( '2d.circle/2' @ V_B @ V_r ) ) @ ( 'cons/2' @ ( '2d.with-boundary/1' @ ( '2d.circle/2' @ V_C @ V_r ) ) @ ( 'cons/2' @ ( '2d.with-boundary/1' @ ( '2d.circle/2' @ V_D @ V_r ) ) @ ( 'cons/2' @ ( '2d.with-boundary/1' @ ( '2d.circle/2' @ V_E @ V_r ) ) @ 'nil/0' ) ) ) ) ) ) ) ) ) ) ) ) ) ) ) )).

thf(p_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_a_dot_0: 'R',V_S_dot_0: 'R'] :
        ( ( ( '</2' @ 0 @ V_a_dot_0 )
          & ( '<=/2' @ V_a_dot_0 @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 3 ) )
          & ( V_S_dot_0
            = ( '//2' @ ( '*/2' @ 'Pi/0' @ V_a_dot_0 ) @ 2 ) ) )
        | ( ( '<=/2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 3 ) @ V_a_dot_0 )
          & ( '<=/2' @ V_a_dot_0 @ ( 'sqrt/1' @ 3 ) )
          & ( V_S_dot_0
            = ( '//2' @ ( '*/2' @ 'Pi/0' @ ( '+/2' @ 1 @ ( '^/2' @ V_a_dot_0 @ 2 ) ) ) @ ( '*/2' @ 8 @ V_a_dot_0 ) ) ) )
        | ( ( '<=/2' @ ( 'sqrt/1' @ 3 ) @ V_a_dot_0 )
          & ( V_S_dot_0
            = ( '//2' @ 'Pi/0' @ ( '*/2' @ 2 @ V_a_dot_0 ) ) ) ) ) ),
    answer_to(p_question,[])).