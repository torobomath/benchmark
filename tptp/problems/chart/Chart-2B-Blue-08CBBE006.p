%% DOMAIN:    Vectors
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Blue Book, Problem 08CBBE006
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-26

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   74 (   8 equality;  37 variable)
%            Maximal formula depth :   21 (  18 average)
%            Number of connectives :   56 (   0   ~;   0   |;  10   &;  44   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :;   0   =)
%            Number of variables   :   16 (   0 sgn;  13   !;   3   ?;   0   ^)
%                                         (  16   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    3 (   2 pred;    0 func;    1 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ! [V_a: '2d.Vector',V_b: '2d.Vector',V_c: '2d.Vector',V_l: $real,V_m: $real,V_n: $real] :
      ( ( ( V_l
          = ( '2d.outer-prod/2' @ V_a @ V_b ) )
        & ( V_m
          = ( '2d.outer-prod/2' @ V_b @ V_c ) )
        & ( V_n
          = ( '2d.outer-prod/2' @ V_c @ V_a ) ) )
     => ( '2d.zero-vector/0'
        = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_l @ V_c ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ V_m @ V_a ) @ ( '2d.sv*/2' @ V_n @ V_b ) ) ) ) ) )).

thf(p2,conjecture,(
    ! [V_a: '2d.Vector',V_b: '2d.Vector',V_c: '2d.Vector',V_d: '2d.Vector',V_l: $real,V_m: $real,V_n: $real] :
      ( ( ( $less @ 0.0 @ V_l )
        & ( $less @ 0.0 @ V_m )
        & ( $less @ 0.0 @ V_n )
        & ( V_l
          = ( '2d.outer-prod/2' @ V_a @ V_b ) )
        & ( V_m
          = ( '2d.outer-prod/2' @ V_b @ V_c ) )
        & ( V_n
          = ( '2d.outer-prod/2' @ V_c @ V_a ) ) )
     => ? [V_r: $real,V_s: $real,V_t: $real] :
          ( ( $lesseq @ 0.0 @ V_r )
          & ( $lesseq @ 0.0 @ V_s )
          & ( $lesseq @ 0.0 @ V_t )
          & ( V_d
            = ( '2d.v+/2' @ ( '2d.sv*/2' @ V_r @ V_a ) @ ( '2d.v+/2' @ ( '2d.sv*/2' @ V_s @ V_b ) @ ( '2d.sv*/2' @ V_t @ V_c ) ) ) ) ) ) )).

