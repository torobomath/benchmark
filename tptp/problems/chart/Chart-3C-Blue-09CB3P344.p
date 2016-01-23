%% DOMAIN:    Integration and its Applications
%% THEORY:    PA+trans
%% LEVEL:     4
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P344
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    1 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   38 (   5 equality;  18 variable)
%            Maximal formula depth :   16 (  16 average)
%            Number of connectives :   27 (   0   ~;   0   |;   5   &;  20   @)
%                                         (   0 <=>;   2  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :    9 (   0   :)
%            Number of variables   :    8 (   1 sgn;   2   !;   3   ?;   2   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1,conjecture,(
    ? [V_f1: 'R' > 'R',V_f2: 'R' > 'R'] :
      ( ( V_f1
        = ( ^ [V_x_dot_1: 'R'] :
              ( 'exp/1' @ V_x_dot_1 ) ) )
      & ( V_f2
        = ( ^ [V_x_dot_0: 'R'] :
              ( '-/2' @ ( 'exp/1' @ ( '*/2' @ V_n @ V_x_dot_0 ) ) @ 1 ) ) )
      & ! [V_n_dot_0: 'R'] :
          ( ( '<=/2' @ 2 @ V_n_dot_0 )
         => ? [V_x: 'R'] :
              ( ( '<=/2' @ 0 @ V_x )
              & ( ( 'LamApp/2' @ V_f1 @ V_x )
                = ( 'LamApp/2' @ V_f2 @ V_x ) )
              & ! [V_x0: 'R'] :
                  ( ( ( '<=/2' @ 0 @ V_x0 )
                    & ( ( 'LamApp/2' @ V_f1 @ V_x0 )
                      = ( 'LamApp/2' @ V_f2 @ V_x0 ) ) )
                 => ( V_x = V_x0 ) ) ) ) ) )).
