%% DOMAIN:    Vectors
%% THEORY:    RCF
%% SOURCE:    Osaka University, 2003, Humanities Course, Problem 1
%% AUTHOR:    Tomoya Ishii
%% GENERATED: 2014-04-30
%%
%% <PROBLEM-TEXT>
%% For the planar vectors $\vec{p} =(p_1, p_2)$ and
%% $\vec{q} =(q_1, q_2)$, define
%% $\{\vec{p}, \vec{q}\} = p_1 q_2 - p_2 q_1$.
%%
%% (1) For the planar vectors $\vec{a}$, $\vec{b}$, and $\vec{c}$,
%% define $\{\vec{a}, \vec{b}\} = l$, $\{\vec{b}, \vec{c}\} = m$, and
%% $\{\vec{c}, \vec{a}\} = n$, then prove that
%% $l\vec{c} + m\vec{a} + n\vec{b} =\vec{0}$ is true.
%%
%% (2) Let $l$, $m$, and $n$ be all positive in (1). Then, prove that an
%% arbitrary planar vector $\vec{d}$ can be represented as
%% $\vec{d} = r\vec{a} + s\vec{b} + t\vec{c}$ using real numbers $r$,
%% $s$, and $t$, which are equal to or larger than $0$.
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  126 (  10 equality;  53 variable)
%            Maximal formula depth :   26 (  24 average)
%            Number of connectives :  104 (   0   ~;   0   |;  13   &;  90   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    4 (   4   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   17 (   0   :;   0   =)
%            Number of variables   :   22 (   0 sgn;  10   !;   8   ?;   4   ^)
%                                         (  22   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    5 (   2 pred;    2 func;    1 numbers)

include('axioms.ax').

thf(p1,conjecture,(
    ? [V_func: ( '2d.Point' > '2d.Point' > $real )] :
      ( ( V_func
        = ( ^ [V_p: '2d.Point',V_q: '2d.Point'] :
              ( $difference @ ( $product @ ( '2d.x-coord/1' @ V_p ) @ ( '2d.y-coord/1' @ V_q ) ) @ ( $product @ ( '2d.y-coord/1' @ V_p ) @ ( '2d.x-coord/1' @ V_q ) ) ) ) )
      & ! [V_a: '2d.Point',V_b: '2d.Point',V_c: '2d.Point'] :
        ? [V_l: $real,V_m: $real,V_n: $real] :
          ( ( ( V_func @ V_a @ V_b )
            = V_l )
          & ( ( V_func @ V_b @ V_c )
            = V_m )
          & ( ( V_func @ V_c @ V_a )
            = V_n )
          & ( ( '2d.v-sum/1' @ ( 'cons/2' @ '2d.Vector' @ ( '2d.sv*/2' @ V_l @ ( '2d.vec/2' @ '2d.origin/0' @ V_c ) ) @ ( 'cons/2' @ '2d.Vector' @ ( '2d.sv*/2' @ V_m @ ( '2d.vec/2' @ '2d.origin/0' @ V_a ) ) @ ( 'cons/2' @ '2d.Vector' @ ( '2d.sv*/2' @ V_n @ ( '2d.vec/2' @ '2d.origin/0' @ V_b ) ) @ ( 'nil/0' @ '2d.Vector' ) ) ) ) )
            = '2d.zero-vector/0' ) ) ) )).

thf(p2,conjecture,(
    ? [V_func: ( '2d.Point' > '2d.Point' > $real )] :
      ( ( V_func
        = ( ^ [V_p: '2d.Point',V_q: '2d.Point'] :
              ( $difference @ ( $product @ ( '2d.x-coord/1' @ V_p ) @ ( '2d.y-coord/1' @ V_q ) ) @ ( $product @ ( '2d.y-coord/1' @ V_p ) @ ( '2d.x-coord/1' @ V_q ) ) ) ) )
      & ! [V_a: '2d.Point',V_b: '2d.Point',V_c: '2d.Point',V_l: $real,V_m: $real,V_n: $real] :
          ( ( ( ( V_func @ V_a @ V_b )
              = V_l )
            & ( ( V_func @ V_b @ V_c )
              = V_m )
            & ( ( V_func @ V_c @ V_a )
              = V_n )
            & ( $less @ 0.0 @ V_l )
            & ( $less @ 0.0 @ V_m )
            & ( $less @ 0.0 @ V_n ) )
         => ! [V_d: '2d.Vector'] :
            ? [V_r: $real,V_s: $real,V_t: $real] :
              ( ( $lesseq @ 0.0 @ V_r )
              & ( $lesseq @ 0.0 @ V_s )
              & ( $lesseq @ 0.0 @ V_t )
              & ( V_d
                = ( '2d.v-sum/1' @ ( 'cons/2' @ '2d.Vector' @ ( '2d.sv*/2' @ V_r @ ( '2d.vec/2' @ '2d.origin/0' @ V_c ) ) @ ( 'cons/2' @ '2d.Vector' @ ( '2d.sv*/2' @ V_s @ ( '2d.vec/2' @ '2d.origin/0' @ V_a ) ) @ ( 'cons/2' @ '2d.Vector' @ ( '2d.sv*/2' @ V_t @ ( '2d.vec/2' @ '2d.origin/0' @ V_b ) ) @ ( 'nil/0' @ '2d.Vector' ) ) ) ) ) ) ) ) ) )).

