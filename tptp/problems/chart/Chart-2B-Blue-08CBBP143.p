%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBP143
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :   11 (   0 unit;   7 type;   0 defn)
%            Number of atoms       :  237 (  22 equality;  72 variable)
%            Maximal formula depth :   49 (  10 average)
%            Number of connectives :  191 (   0   ~;   0   |;  40   &; 151   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   41 (   7   :;   0   =)
%            Number of variables   :   30 (   0 sgn;   0   !;  25   ?;   5   ^)
%                                         (  30   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :   11 (   1 pred;    3 func;    7 numbers)

include('axioms.ax').

thf('A/0_type',type,(
    'A/0': '3d.Point' )).

thf('B/0_type',type,(
    'B/0': '3d.Point' )).

thf('C/0_type',type,(
    'C/0': '3d.Point' )).

thf('O/0_type',type,(
    'O/0': '3d.Point' )).

thf('l/0_type',type,(
    'l/0': $real )).

thf('m/0_type',type,(
    'm/0': $real )).

thf('n/0_type',type,(
    'n/0': $real )).

thf(p1_qustion,question,
    ( 'find/1' @ $real
    @ ^ [V_S: $real] :
      ? [V_A: '3d.Point',V_B: '3d.Point',V_C: '3d.Point',V_O: '3d.Point',V_P: '3d.Point',V_Q: '3d.Shape',V_plane: '3d.Shape'] :
        ( ( $less @ 0.0 @ 'l/0' )
        & ( $less @ 0.0 @ 'm/0' )
        & ( $less @ 0.0 @ 'n/0' )
        & ( V_O = '3d.origin/0' )
        & ( V_P
          = ( '3d.point/3' @ 'l/0' @ 'm/0' @ 'n/0' ) )
        & ( V_Q
          = ( '3d.sphere/2' @ V_O @ 1.0 ) )
        & ( V_plane
          = ( '3d.plane2/2' @ V_P @ ( '3d.vec/2' @ V_O @ V_P ) ) )
        & ( '3d.on/2' @ V_P @ V_Q )
        & ( '3d.intersect/3' @ V_plane @ '3d.x-axis/0' @ V_A )
        & ( '3d.intersect/3' @ V_plane @ '3d.y-axis/0' @ V_B )
        & ( '3d.intersect/3' @ V_plane @ '3d.z-axis/0' @ V_C )
        & ( V_S
          = ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_A @ V_B @ V_C ) ) ) ) )).

thf(p2_qustion,question,
    ( 'find/1' @ ( 'ListOf' @ $real )
    @ ^ [V_answer: ( 'ListOf' @ $real )] :
      ? [V_l: $real,V_m: $real,V_n: $real,V_min: $real,V_P: '3d.Point',V_Q: '3d.Shape',V_plane: '3d.Shape'] :
        ( ( 'O/0' = '3d.origin/0' )
        & ( V_P
          = ( '3d.point/3' @ V_l @ V_m @ V_n ) )
        & ( V_Q
          = ( '3d.sphere/2' @ 'O/0' @ 1.0 ) )
        & ( V_plane
          = ( '3d.plane2/2' @ V_P @ ( '3d.vec/2' @ 'O/0' @ V_P ) ) )
        & ( $less @ 0.0 @ V_l )
        & ( $less @ 0.0 @ V_m )
        & ( ( $quotient @ 1.0 @ 2.0 )
          = V_n )
        & ( '3d.on/2' @ V_P @ V_Q )
        & ( '3d.intersect/3' @ V_plane @ '3d.x-axis/0' @ 'A/0' )
        & ( '3d.intersect/3' @ V_plane @ '3d.y-axis/0' @ 'B/0' )
        & ( '3d.intersect/3' @ V_plane @ '3d.z-axis/0' @ 'C/0' )
        & ( V_min
          = ( '3d.area-of/1' @ ( '3d.triangle/3' @ 'A/0' @ 'B/0' @ 'C/0' ) ) )
        & ( 'minimum/2'
          @ ( 'set-by-def/1' @ $real
            @ ^ [V_v: $real] :
              ? [V_plane0: '3d.Shape',V_P0: '3d.Point',V_l0: $real,V_m0: $real,V_n0: $real,V_A0: '3d.Point',V_B0: '3d.Point',V_C0: '3d.Point'] :
                ( ( $less @ 0.0 @ V_l0 )
                & ( $less @ 0.0 @ V_m0 )
                & ( ( $quotient @ 1.0 @ 2.0 )
                  = V_n0 )
                & ( V_P0
                  = ( '3d.point/3' @ V_l0 @ V_m0 @ V_n0 ) )
                & ( '3d.on/2' @ V_P0 @ V_Q )
                & ( V_plane0
                  = ( '3d.plane2/2' @ V_P0 @ ( '3d.vec/2' @ 'O/0' @ V_P0 ) ) )
                & ( '3d.intersect/3' @ V_plane0 @ '3d.x-axis/0' @ V_A0 )
                & ( '3d.intersect/3' @ V_plane0 @ '3d.y-axis/0' @ V_B0 )
                & ( '3d.intersect/3' @ V_plane0 @ '3d.z-axis/0' @ V_C0 )
                & ( V_v
                  = ( '3d.area-of/1' @ ( '3d.triangle/3' @ V_A0 @ V_B0 @ V_C0 ) ) ) ) )
          @ V_min )
        & ( V_answer
          = ( 'cons/2' @ $real @ V_l @ ( 'cons/2' @ $real @ V_m @ ( 'cons/2' @ $real @ V_min @ ( 'nil/0' @ $real ) ) ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: $real] :
      ( ( V_S_dot_0
        = ( $quotient @ 1.0 @ ( $product @ ( $product @ ( $product @ 2.0 @ 'l/0' ) @ 'm/0' ) @ 'n/0' ) ) )
      & ( 1.0
        = ( $sum @ ( $sum @ ( '^/2' @ 'l/0' @ 2.0 ) @ ( '^/2' @ 'm/0' @ 2.0 ) ) @ ( '^/2' @ 'n/0' @ 2.0 ) ) )
      & ( $less @ 0.0 @ 'l/0' )
      & ( $less @ 0.0 @ 'm/0' )
      & ( $less @ 0.0 @ 'n/0' ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_answer_dot_0: ( 'ListOf' @ $real )] :
    ? [V_l_dot_0: $real,V_m_dot_0: $real,V_min_dot_0: $real] :
      ( ( V_answer_dot_0
        = ( 'cons/2' @ $real @ V_l_dot_0 @ ( 'cons/2' @ $real @ V_m_dot_0 @ ( 'cons/2' @ $real @ V_min_dot_0 @ ( 'nil/0' @ $real ) ) ) ) )
      & ( V_l_dot_0
        = ( $quotient @ ( 'sqrt/1' @ 6.0 ) @ 4.0 ) )
      & ( V_m_dot_0
        = ( $quotient @ ( 'sqrt/1' @ 6.0 ) @ 4.0 ) )
      & ( V_min_dot_0
        = ( $quotient @ 8.0 @ 3.0 ) ) ) ),
    answer_to(p2_question,[])).

