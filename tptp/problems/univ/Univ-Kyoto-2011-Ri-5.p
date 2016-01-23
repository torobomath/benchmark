%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Kyoto University, 2011, Science Course, Problem 5
%% AUTHOR:    Takehiro Naito
%% GENERATED: 2014-07-31
%%
%% <PROBLEM-TEXT>
%% Prove that the spherical surface $S$ with the center at the origin
%% $O$ and the radius $\sqrt{6}$ has common points with the plane
%% ${\alpha}$ containing the points $(4, 0, 0)$, $(0, 4, 0)$, and
%% $(0, 0, 4)$ in the $xyz$ space, and find the range of the possible
%% value of the product $x y z$ when the point $(x, y, z)$ moves across
%% the set of all the common points.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    3 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   87 (   1 equality;  24 variable)
%            Maximal formula depth :   17 (  13 average)
%            Number of connectives :   82 (   0   ~;   0   |;   2   &;  78   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   25 (   0   :)
%            Number of variables   :   12 (   0 sgn;   8   !;   2   ?;   2   ^)
%                                         (  12   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ! [V_s: 'R',V_t: 'R',V_u: 'R',V_v: 'R'] :
      ( ( '3d.determine/2' @ ( 'cons/2' @ ( '3d.point/3' @ 4 @ 0 @ 0 ) @ ( 'cons/2' @ ( '3d.point/3' @ 0 @ 4 @ 0 ) @ ( 'cons/2' @ ( '3d.point/3' @ 0 @ 0 @ 4 ) @ 'nil/0' ) ) ) @ ( '3d.plane/4' @ V_s @ V_t @ V_u @ V_v ) )
     => ? [V_p: '3d.Point'] :
          ( '3d.on/2' @ V_p @ ( '3d.intersection/2' @ ( '3d.sphere/2' @ '3d.origin/0' @ ( 'sqrt/1' @ 6 ) ) @ ( '3d.plane/4' @ V_s @ V_t @ V_u @ V_v ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ! [V_s: 'R',V_t: 'R',V_u: 'R',V_v: 'R'] :
        ( ( '3d.determine/2' @ ( 'cons/2' @ ( '3d.point/3' @ 4 @ 0 @ 0 ) @ ( 'cons/2' @ ( '3d.point/3' @ 0 @ 4 @ 0 ) @ ( 'cons/2' @ ( '3d.point/3' @ 0 @ 0 @ 4 ) @ 'nil/0' ) ) ) @ ( '3d.plane/4' @ V_s @ V_t @ V_u @ V_v ) )
       => ? [V_p: '3d.Point'] :
            ( ( '3d.on/2' @ V_p @ ( '3d.intersection/2' @ ( '3d.sphere/2' @ '3d.origin/0' @ ( 'sqrt/1' @ 6 ) ) @ ( '3d.plane/4' @ V_s @ V_t @ V_u @ V_v ) ) )
            & ( V_V
              = ( '*/2' @ ( '3d.x-coord/1' @ V_p ) @ ( '*/2' @ ( '3d.y-coord/1' @ V_p ) @ ( '3d.z-coord/1' @ V_p ) ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( ( '<=/2' @ ( '//2' @ 50 @ 27 ) @ V_V_dot_0 )
      & ( '<=/2' @ V_V_dot_0 @ 2 ) ) ),
    answer_to(p2_question,[])).
