%% DOMAIN:    Integration and its Applications
%% THEORY:    PA+trans
%% LEVEL:     4
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P344
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    2 (   0 unit;   1 type;   0 defn)
%            Number of atoms       :   34 (   5 equality;  17 variable)
%            Maximal formula depth :   15 (   8 average)
%            Number of connectives :   23 (   0   ~;   0   |;   5   &;  16   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   1   :;   0   =)
%            Number of variables   :    7 (   0 sgn;   2   !;   3   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)
%            Arithmetic symbols    :    6 (   1 pred;    2 func;    3 numbers)

include('axioms.ax').

thf('n/0_type',type,(
    'n/0': $real )).

thf(p1,conjecture,(
    ? [V_f1: ( $real > $real ),V_f2: ( $real > $real )] :
      ( ( V_f1
        = ( ^ [V_x_dot_1: $real] :
              ( 'exp/1' @ V_x_dot_1 ) ) )
      & ( V_f2
        = ( ^ [V_x_dot_0: $real] :
              ( $difference @ ( 'exp/1' @ ( $product @ 'n/0' @ V_x_dot_0 ) ) @ 1.0 ) ) )
      & ! [V_n_dot_0: $real] :
          ( ( $lesseq @ 2.0 @ V_n_dot_0 )
         => ? [V_x: $real] :
              ( ( $lesseq @ 0.0 @ V_x )
              & ( ( V_f1 @ V_x )
                = ( V_f2 @ V_x ) )
              & ! [V_x0: $real] :
                  ( ( ( $lesseq @ 0.0 @ V_x0 )
                    & ( ( V_f1 @ V_x0 )
                      = ( V_f2 @ V_x0 ) ) )
                 => ( V_x = V_x0 ) ) ) ) ) )).

