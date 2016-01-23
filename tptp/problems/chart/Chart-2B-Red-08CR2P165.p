%% DOMAIN:    Geometric Figures and Equations
%% THEORY:    RCF
%% LEVEL:     5
%% SOURCE:    Chart System Math II+B Red Book, Problem 08CR2P165
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2014-12-27

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  116 (   3 equality;  30 variable)
%            Maximal formula depth :   17 (  17 average)
%            Number of connectives :  108 (   0   ~;   4   |;  12   &;  92   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   19 (   0   :)
%            Number of variables   :    7 (   0 sgn;   0   !;   2   ?;   5   ^)
%                                         (   7   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Draw/1'
    @ ^ [V_D: '2d.Point'] :
      ? [V_Ca: '2d.Shape',V_a: 'R'] :
        ( ( V_Ca
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '+/2' @ ( '^/2' @ V_a @ 2 ) @ 1 )
                = ( '+/2' @ ( '^/2' @ ( '-/2' @ V_x @ V_a ) @ 2 ) @ ( '^/2' @ ( '-/2' @ V_y @ V_a ) @ 2 ) ) ) ) )
        & ( '<=/2' @ 0 @ V_a )
        & ( '2d.on/2' @ V_D @ V_Ca ) ) )).

thf(p_answer,answer,
    ( '2d.set-of-cfun/1'
    @ ^ [V_x_dot_0: 'R',V_y_dot_0: 'R'] :
        ( ( ( '<=/2' @ -1 @ V_x_dot_0 )
          & ( '<=/2' @ V_x_dot_0 @ ( '//2' @ -1 @ ( 'sqrt/1' @ 2 ) ) )
          & ( '<=/2' @ ( '-/1' @ ( 'sqrt/1' @ ( '-/2' @ 1 @ ( '^/2' @ V_x_dot_0 @ 2 ) ) ) ) @ V_y_dot_0 )
          & ( '<=/2' @ V_y_dot_0 @ ( 'sqrt/1' @ ( '-/2' @ 1 @ ( '^/2' @ V_x_dot_0 @ 2 ) ) ) ) )
        | ( ( '</2' @ ( '//2' @ -1 @ ( 'sqrt/1' @ 2 ) ) @ V_x_dot_0 )
          & ( '</2' @ V_x_dot_0 @ 0 )
          & ( '<=/2' @ ( '-/1' @ ( 'sqrt/1' @ ( '-/2' @ 1 @ ( '^/2' @ V_x_dot_0 @ 2 ) ) ) ) @ V_y_dot_0 )
          & ( '<=/2' @ V_y_dot_0 @ ( '//2' @ -1 @ ( '*/2' @ 2 @ V_x_dot_0 ) ) ) )
        | ( ( V_x_dot_0 = 0 )
          & ( '<=/2' @ -1 @ V_y_dot_0 ) )
        | ( ( '</2' @ 0 @ V_x_dot_0 )
          & ( '<=/2' @ V_x_dot_0 @ ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) )
          & ( '<=/2' @ ( '-/1' @ ( 'sqrt/1' @ ( '-/2' @ 1 @ ( '^/2' @ V_x_dot_0 @ 2 ) ) ) ) @ V_y_dot_0 ) )
        | ( ( '<=/2' @ ( '//2' @ 1 @ ( 'sqrt/1' @ 2 ) ) @ V_x_dot_0 )
          & ( '<=/2' @ ( '//2' @ -1 @ ( '*/2' @ 2 @ V_x_dot_0 ) ) @ V_y_dot_0 ) ) ) ),
    answer_to(p_question,[])).
