%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% SOURCE:    The University of Tokyo, 2011, Science Course, Problem 6
%% AUTHOR:    Yiyang Zhan
%% GENERATED: 2014-03-12
%%
%% <PROBLEM-TEXT>
%% (1) Let $x$ and $y$ be real numbers, and assume that $x>0$. Find the
%% difference between the maximum and minimum values of the quadratic
%% function of $f(t)=x t^2+y t$ with the variable $t$in the range of
%% $0\le t\le 1$
%%
%% (2) Let $S$ be the region on the coordinate plane consisting of all
%% the points $(x, y, z)$ that satisfy the following conditions: $x>0$
%% is true, and there exists the real number $z$ that satisfies
%% $0\le x t^2+y t+z\le 1$ for all the real numbers $t$ in the range of
%% $0\le t\le 1$. Draw the outline of $S$.
%%
%% (3) Let $V$ be the region in the coordinate space consisting of all
%% the points $(x, y, z)$ that satisfy the following conditions:
%% $0\le x\le 1$ is true, and $0\le x t^2+y t+z\le 1$ is true for all
%% the real numbers $t$ in the range of $0\le t\le 1$. Find the volume
%% of $V$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  322 (  10 equality; 104 variable)
%            Maximal formula depth :   20 (  16 average)
%            Number of connectives :  296 (   0   ~;   6   |;  35   &; 253   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   37 (   0   :)
%            Number of variables   :   23 (   1 sgn;   2   !;   6   ?;  11   ^)
%                                         (  19   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
      ? [V_m: 'R',V_M: 'R'] :
        ( ? [V_f: 'R2R',V_t0: 'R',V_t1: 'R'] :
            ( ( '</2' @ 0 @ V_x )
            & ( V_f
              = ( 'poly-fun/1' @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_y @ ( 'cons/2' @ V_x @ 'nil/0' ) ) ) ) )
            & ( 'func-min/4' @ V_f
              @ ( 'set-by-def/1'
                @ ^ [V_t_dot_0: 'R'] :
                    ( ( '<=/2' @ 0 @ V_t_dot_0 )
                    & ( '<=/2' @ V_t_dot_0 @ 1 ) ) )
              @ V_t0
              @ V_m )
            & ( 'func-max/4' @ V_f
              @ ( 'set-by-def/1'
                @ ^ [V_t: 'R'] :
                    ( ( '<=/2' @ 0 @ V_t )
                    & ( '<=/2' @ V_t @ 1 ) ) )
              @ V_t1
              @ V_M ) )
        & ( V_a
          = ( '-/2' @ V_M @ V_m ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: '2d.Shape'] :
        ( V_S
        = ( '2d.shape-of-cpfun/1'
          @ ^ [V_p: '2d.Point'] :
              ( ( '</2' @ 0 @ ( '2d.x-coord/1' @ V_p ) )
              & ? [V_z: 'R'] :
                ! [V_t: 'R'] :
                  ( ( ( '<=/2' @ 0 @ V_t )
                    & ( '<=/2' @ V_t @ 1 ) )
                 => ( ( '<=/2' @ 0 @ ( '+/2' @ ( '*/2' @ ( '2d.x-coord/1' @ V_p ) @ ( '^/2' @ V_t @ 2 ) ) @ ( '+/2' @ ( '*/2' @ ( '2d.y-coord/1' @ V_p ) @ V_t ) @ V_z ) ) )
                    & ( '<=/2' @ ( '+/2' @ ( '*/2' @ ( '2d.x-coord/1' @ V_p ) @ ( '^/2' @ V_t @ 2 ) ) @ ( '+/2' @ ( '*/2' @ ( '2d.y-coord/1' @ V_p ) @ V_t ) @ V_z ) ) @ 1 ) ) ) ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_a: 'R'] :
        ( V_a
        = ( '3d.volume-of/1'
          @ ( '3d.shape-of-cpfun/1'
            @ ^ [V_p: '3d.Point'] :
                ( ( '<=/2' @ 0 @ ( '3d.x-coord/1' @ V_p ) )
                & ( '<=/2' @ ( '3d.x-coord/1' @ V_p ) @ 1 )
                & ! [V_t: 'R'] :
                    ( ( ( '<=/2' @ 0 @ V_t )
                      & ( '<=/2' @ V_t @ 1 ) )
                   => ( ( '<=/2' @ 0 @ ( '+/2' @ ( '*/2' @ ( '3d.x-coord/1' @ V_p ) @ ( '^/2' @ V_t @ 2 ) ) @ ( '+/2' @ ( '*/2' @ ( '3d.y-coord/1' @ V_p ) @ V_t ) @ ( '3d.z-coord/1' @ V_p ) ) ) )
                      & ( '<=/2' @ ( '+/2' @ ( '*/2' @ ( '3d.x-coord/1' @ V_p ) @ ( '^/2' @ V_t @ 2 ) ) @ ( '+/2' @ ( '*/2' @ ( '3d.y-coord/1' @ V_p ) @ V_t ) @ ( '3d.z-coord/1' @ V_p ) ) ) @ 1 ) ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( ( ( '</2' @ 0 @ V_x )
        & ( '</2' @ 0 @ V_y )
        & ( V_a_dot_0
          = ( '+/2' @ V_x @ V_y ) ) )
      | ( ( '</2' @ 0 @ V_x )
        & ( '</2' @ ( '-/1' @ V_x ) @ V_y )
        & ( '<=/2' @ V_y @ 0 )
        & ( V_a_dot_0
          = ( '+/2' @ V_x @ ( '+/2' @ V_y @ ( '//2' @ ( '^/2' @ V_y @ 2 ) @ ( '*/2' @ 4 @ V_x ) ) ) ) ) )
      | ( ( '</2' @ 0 @ V_x )
        & ( '</2' @ ( '*/2' @ -2 @ V_x ) @ V_y )
        & ( '<=/2' @ V_y @ ( '-/1' @ V_x ) )
        & ( V_a_dot_0
          = ( '//2' @ ( '^/2' @ V_y @ 2 ) @ ( '*/2' @ 4 @ V_x ) ) ) )
      | ( ( '</2' @ 0 @ V_x )
        & ( '<=/2' @ V_y @ ( '*/2' @ -2 @ V_x ) )
        & ( V_a_dot_0
          = ( '-/2' @ 0 @ ( '+/2' @ V_x @ V_y ) ) ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: '2d.Shape'] :
      ( V_S_dot_0
      = ( '2d.shape-of-cpfun/1'
        @ ^ [V_p_dot_0: '2d.Point'] :
            ( ( ( '</2' @ 0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( '>=/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ 0 )
              & ( '<=/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( '-/2' @ 1 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) )
            | ( ( '</2' @ 0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '-/1' @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ 0 )
              & ( '<=/2' @ ( '-/1' @ ( '+/2' @ ( '*/2' @ 2 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ ( '*/2' @ 2 @ ( 'sqrt/1' @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) ) ) @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( '-/2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) @ ( '*/2' @ 2 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) ) )
            | ( ( '</2' @ 0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '*/2' @ -2 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( '-/1' @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) )
              & ( '<=/2' @ ( '*/2' @ -2 @ ( 'sqrt/1' @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) @ ( '2d.y-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( '*/2' @ 2 @ ( 'sqrt/1' @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) ) ) )
            | ( ( '</2' @ 0 @ ( '2d.x-coord/1' @ V_p_dot_0 ) )
              & ( '<=/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( '*/2' @ -2 @ ( '2d.x-coord/1' @ V_p_dot_0 ) ) )
              & ( '>=/2' @ ( '2d.y-coord/1' @ V_p_dot_0 ) @ ( '-/1' @ ( '+/2' @ ( '2d.x-coord/1' @ V_p_dot_0 ) @ 1 ) ) ) ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_a_dot_0: 'R'] :
      ( V_a_dot_0
      = ( '//2' @ 17 @ 18 ) ) ),
    answer_to(p3_question,[])).
