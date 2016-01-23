%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP143
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  225 (  22 equality;  97 variable)
%            Maximal formula depth :   49 (  24 average)
%            Number of connectives :  179 (   0   ~;   0   |;  40   &; 139   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   34 (   0   :)
%            Number of variables   :   40 (   0 sgn;   0   !;  22   ?;   5   ^)
%                                         (  27   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_O: '3d.Point',V_P: '3d.Point',V_Q: '3d.Shape',V_plane: '3d.Shape'] :
        ( ( '</2' @ 0 @ V_l )
        & ( '</2' @ 0 @ V_m )
        & ( '</2' @ 0 @ V_n )
        & ( V_O = '3d.origin/0' )
        & ( V_P
          = ( '3d.point/3' @ V_l @ V_m @ V_n ) )
        & ( V_Q
          = ( '3d.sphere/2' @ V_O @ 1 ) )
        & ( V_plane
          = ( '3d.plane2/2' @ V_P @ ( '3d.vec/2' @ V_O @ V_P ) ) )
        & ( '3d.on/2' @ V_P @ V_Q )
        & ( '3d.intersect/3' @ V_plane @ '3d.x-axis/0' @ V_A )
        & ( '3d.intersect/3' @ V_plane @ '3d.y-axis/0' @ V_B )
        & ( '3d.intersect/3' @ V_plane @ '3d.z-axis/0' @ V_C )
        & ( V_S
          = ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_answer: 'ListOf' @ 'R'] :
      ? [V_l_dot_0: 'R',V_m_dot_0: 'R',V_n: 'R',V_min_dot_0: 'R',V_P: '3d.Point',V_Q: '3d.Shape',V_plane: '3d.Shape'] :
        ( ( V_O = '3d.origin/0' )
        & ( V_P
          = ( '3d.point/3' @ V_l_dot_0 @ V_m_dot_0 @ V_n ) )
        & ( V_Q
          = ( '3d.sphere/2' @ V_O @ 1 ) )
        & ( V_plane
          = ( '3d.plane2/2' @ V_P @ ( '3d.vec/2' @ V_O @ V_P ) ) )
        & ( '</2' @ 0 @ V_l_dot_0 )
        & ( '</2' @ 0 @ V_m_dot_0 )
        & ( ( '//2' @ 1 @ 2 )
          = V_n )
        & ( '3d.on/2' @ V_P @ V_Q )
        & ( '3d.intersect/3' @ V_plane @ '3d.x-axis/0' @ V_A )
        & ( '3d.intersect/3' @ V_plane @ '3d.y-axis/0' @ V_B )
        & ( '3d.intersect/3' @ V_plane @ '3d.z-axis/0' @ V_C )
        & ( V_min_dot_0
          = ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1'
            @ ^ [V_v: 'R'] :
              ? [V_plane0: '3d.Shape',V_P0: '3d.Point',V_l0: 'R',V_m0: 'R',V_n0: 'R',V_A0: '3d.Point',V_B0: '3d.Point',V_C0: '3d.Point'] :
                ( ( '</2' @ 0 @ V_l0 )
                & ( '</2' @ 0 @ V_m0 )
                & ( ( '//2' @ 1 @ 2 )
                  = V_n0 )
                & ( V_P0
                  = ( '3d.point/3' @ V_l0 @ V_m0 @ V_n0 ) )
                & ( '3d.on/2' @ V_P0 @ V_Q )
                & ( V_plane0
                  = ( '3d.plane2/2' @ V_P0 @ ( '3d.vec/2' @ V_O @ V_P0 ) ) )
                & ( '3d.intersect/3' @ V_plane0 @ '3d.x-axis/0' @ V_A0 )
                & ( '3d.intersect/3' @ V_plane0 @ '3d.y-axis/0' @ V_B0 )
                & ( '3d.intersect/3' @ V_plane0 @ '3d.z-axis/0' @ V_C0 )
                & ( V_v
                  = ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_A0 @ V_B0 @ V_C0 ) ) ) ) )
          @ V_min_dot_0 )
        & ( V_answer
          = ( 'cons/2' @ V_l_dot_0 @ ( 'cons/2' @ V_m_dot_0 @ ( 'cons/2' @ V_min_dot_0 @ 'nil/0' ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( ( V_S_dot_0
        = ( '//2' @ 1 @ ( '*/2' @ ( '*/2' @ ( '*/2' @ 2 @ V_l ) @ V_m ) @ V_n ) ) )
      & ( 1
        = ( '+/2' @ ( '+/2' @ ( '^/2' @ V_l @ 2 ) @ ( '^/2' @ V_m @ 2 ) ) @ ( '^/2' @ V_n @ 2 ) ) )
      & ( '</2' @ 0 @ V_l )
      & ( '</2' @ 0 @ V_m )
      & ( '</2' @ 0 @ V_n ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: 'ListOf' @ 'R'] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ V_l @ ( 'cons/2' @ V_m @ ( 'cons/2' @ V_min @ 'nil/0' ) ) ) )
      & ( V_l
        = ( '//2' @ ( 'sqrt/1' @ 6 ) @ 4 ) )
      & ( V_m
        = ( '//2' @ ( 'sqrt/1' @ 6 ) @ 4 ) )
      & ( V_min
        = ( '//2' @ 8 @ 3 ) ) ) ),
    answer_to(p2_question,[])).
