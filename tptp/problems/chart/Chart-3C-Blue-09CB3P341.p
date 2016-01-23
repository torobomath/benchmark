%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     4
%% SOURCE:    Chart System Math III+C Blue Book, Problem 09CB3P341
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   62 (   8 equality;  21 variable)
%            Maximal formula depth :   14 (  11 average)
%            Number of connectives :   42 (   0   ~;   0   |;   6   &;  36   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :   11 (   0 sgn;   0   !;   3   ?;   8   ^)
%                                         (  11   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Draw/1'
    @ ^ [V_f: '2d.Shape'] :
        ( V_f
        = ( '2d.set-of-cfun/1'
          @ ^ [V_x: 'R',V_y: 'R'] :
              ( ( V_y
                = ( '*/2' @ ( 'abs/1' @ ( '-/2' @ V_x @ 3 ) ) @ ( 'sqrt/1' @ V_x ) ) )
              & ( '<=/2' @ 0 @ V_x ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_alpha: 'R'] :
      ? [V_f: 'R' > 'R',V_S1: 'R',V_S2: 'R'] :
        ( ( V_f
          = ( ^ [V_x: 'R'] :
                ( '*/2' @ ( 'abs/1' @ ( '-/2' @ V_x @ 3 ) ) @ ( 'sqrt/1' @ V_x ) ) ) )
        & ( V_S1
          = ( 'integral/3' @ V_f @ 0 @ 3 ) )
        & ( V_S2
          = ( 'integral/3' @ V_f @ 3 @ V_alpha ) )
        & ( V_S1 = V_S2 ) ) )).

thf(p1_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
        ( ( ( '^/2' @ V_y_dot_0 @ 2 )
          = ( '*/2' @ ( '^/2' @ ( '-/2' @ V_x_dot_0 @ 3 ) @ 2 ) @ V_x_dot_0 ) )
        & ( '<=/2' @ 0 @ V_y_dot_0 )
        & ( '<=/2' @ 0 @ V_x_dot_0 ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_alpha_dot_0: 'R'] : ( V_alpha_dot_0 = 5 ) ),
    answer_to(p2_question,[])).
