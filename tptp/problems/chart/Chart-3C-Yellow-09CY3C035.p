%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     1
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3C035
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   56 (   6 equality;  17 variable)
%            Maximal formula depth :   14 (  10 average)
%            Number of connectives :   40 (   0   ~;   0   |;   7   &;  33   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   2   ?;   8   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_C1: '2d.Shape'] :
        ( ( V_C1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ V_y @ ( 'sqrt/1' @ V_x ) )
                & ( '<=/2' @ 0 @ V_y )
                & ( '<=/2' @ 1 @ V_x )
                & ( '<=/2' @ V_x @ 2 ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ V_C1 ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_C1: '2d.Shape'] :
        ( ( V_C1
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '>=/2' @ V_y @ ( 'sqrt/1' @ V_x ) )
                & ( '<=/2' @ V_y @ 2 )
                & ( '>=/2' @ V_x @ 0 ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ V_C1 ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '*/2' @ ( '//2' @ 2 @ 3 ) @ ( '-/2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 2 ) ) @ 1 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '//2' @ 8 @ 3 ) ) ),
    answer_to(p2_question,[])).
