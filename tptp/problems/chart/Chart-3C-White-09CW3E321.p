%% DOMAIN:    Integration and its Applications
%% THEORY:    RCF
%% LEVEL:     3
%% SOURCE:    Chart System Math III+C White Book, Problem 09CW3E321
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    6 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   81 (   6 equality;  17 variable)
%            Maximal formula depth :   14 (   9 average)
%            Number of connectives :   63 (   0   ~;   0   |;   3   &;  60   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   21 (   0   :)
%            Number of variables   :   10 (   0 sgn;   0   !;   3   ?;   7   ^)
%                                         (  10   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_1_qustion,question,
    ( 'Find/1'
    @ ^ [V_x: 'R'] :
      ? [V_y: 'R'] :
        ( ( '^/2' @ V_y @ 2 )
        = ( '*/2' @ ( '^/2' @ V_x @ 2 ) @ ( '-/2' @ 3 @ ( '^/2' @ V_x @ 2 ) ) ) ) )).

thf(p1_2_qustion,question,
    ( 'Find/1'
    @ ^ [V_y: 'R'] :
      ? [V_x: 'R'] :
        ( ( '^/2' @ V_y @ 2 )
        = ( '*/2' @ ( '^/2' @ V_x @ 2 ) @ ( '-/2' @ 3 @ ( '^/2' @ V_x @ 2 ) ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_S: 'R'] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_p: '2d.Point'] :
                ( ( '^/2' @ ( '2d.y-coord/1' @ V_p ) @ 2 )
                = ( '*/2' @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2 ) @ ( '-/2' @ 3 @ ( '^/2' @ ( '2d.x-coord/1' @ V_p ) @ 2 ) ) ) ) ) )
        & ( V_S
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C @ 'nil/0' ) ) ) ) ) )).

thf(p1_1_answer,answer,(
    ^ [V_x_dot_0: 'R'] :
      ( ( '<=/2' @ ( '-/1' @ ( 'sqrt/1' @ 3 ) ) @ V_x_dot_0 )
      & ( '<=/2' @ V_x_dot_0 @ ( 'sqrt/1' @ 3 ) ) ) ),
    answer_to(p1_1_question,[])).

thf(p1_2_answer,answer,(
    ^ [V_y_dot_0: 'R'] :
      ( ( '<=/2' @ ( '-/1' @ ( '//2' @ 3 @ 2 ) ) @ V_y_dot_0 )
      & ( '<=/2' @ V_y_dot_0 @ ( '//2' @ 3 @ 2 ) ) ) ),
    answer_to(p1_2_question,[])).

thf(p2_answer,answer,(
    ^ [V_S_dot_0: 'R'] :
      ( V_S_dot_0
      = ( '*/2' @ 4 @ ( 'sqrt/1' @ 3 ) ) ) ),
    answer_to(p2_question,[])).
