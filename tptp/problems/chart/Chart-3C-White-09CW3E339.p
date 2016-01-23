%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math III+C White Book, Problem 09CW3E339
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   84 (   6 equality;  17 variable)
%            Maximal formula depth :   19 (  13 average)
%            Number of connectives :   68 (   0   ~;   0   |;   5   &;  63   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    1 (   1   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   24 (   0   :)
%            Number of variables   :    9 (   0 sgn;   0   !;   2   ?;   7   ^)
%                                         (   9   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_f: 'R' > 'R'] :
        ( ( V_f
          = ( ^ [V_x: 'R'] :
                ( '*/2' @ V_x @ ( '//2' @ ( '^/2' @ V_x @ 2 ) @ ( 'sqrt/1' @ ( '^/2' @ ( '+/2' @ ( '^/2' @ V_x @ 4 ) @ 2 ) @ 3 ) ) ) ) ) )
        & ( V_S
          = ( 'integral/3' @ V_f @ 0 @ 1 ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_V: 'R'] :
      ? [V_C1: '2d.Shape'] :
        ( ( V_C1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '>=/2' @ V_y @ ( '//2' @ ( '^/2' @ V_x @ 2 ) @ ( 'sqrt/1' @ ( '^/2' @ ( '+/2' @ ( '^/2' @ V_x @ 4 ) @ 2 ) @ 3 ) ) ) )
                & ( '>=/2' @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 9 ) @ V_y )
                & ( '<=/2' @ 0 @ V_x )
                & ( '<=/2' @ V_x @ 1 ) ) ) )
        & ( V_V
          = ( '3d.volume-of/1' @ ( '3d.solid-of-revolution/2' @ ( '3d.import-2d-shape/1' @ V_C1 ) @ '3d.y-axis/0' ) ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '-/2' @ ( '//2' @ ( 'sqrt/1' @ 2 ) @ 4 ) @ ( '//2' @ ( 'sqrt/1' @ 3 ) @ 6 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_V_dot_0: 'R'] :
      ( V_V_dot_0
      = ( '-/2' @ ( '//2' @ ( '*/2' @ 4 @ ( 'sqrt/1' @ 3 ) ) @ 9 ) @ ( '//2' @ ( 'sqrt/1' @ 2 ) @ 2 ) ) ) ),
    answer_to(p2_question,[])).
