%% DOMAIN:    Integration and its Applications
%% THEORY:    trans
%% LEVEL:     2
%% SOURCE:    Chart System Math III+C Red Book, Problem 09CR3P266
%% AUTHOR:    Munehiro Kobayashi
%% GENERATED: 2015-01-01

% Syntax   : Number of formulae    :   12 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  227 (  26 equality;  62 variable)
%            Maximal formula depth :   18 (  12 average)
%            Number of connectives :  163 (   0   ~;   0   |;  21   &; 142   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   29 (   0   :)
%            Number of variables   :   34 (   0 sgn;   0   !;   8   ?;  24   ^)
%                                         (  32   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_l: 'R'] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
              ? [V_t: 'R'] :
                ( ( '<=/2' @ 0 @ V_t )
                & ( '<=/2' @ V_t @ ( '//2' @ 'Pi/0' @ 4 ) )
                & ( V_x
                  = ( 'cos/1' @ ( '*/2' @ 2 @ V_t ) ) )
                & ( V_y
                  = ( '+/2' @ ( '*/2' @ 2 @ V_t ) @ ( 'sin/1' @ ( '*/2' @ 2 @ V_t ) ) ) ) ) ) )
        & ( V_l
          = ( '2d.length-of/1' @ V_C ) ) ) )).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_l: 'R'] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
              ? [V_theta: 'R'] :
                ( ( '<=/2' @ ( '//2' @ 'Pi/0' @ 3 ) @ V_theta )
                & ( '<=/2' @ V_theta @ ( '//2' @ 'Pi/0' @ 2 ) )
                & ( V_x
                  = ( '*/2' @ ( '+/2' @ 1 @ ( 'cos/1' @ V_theta ) ) @ ( 'cos/1' @ V_theta ) ) )
                & ( V_y
                  = ( '*/2' @ ( '+/2' @ 1 @ ( 'cos/1' @ V_theta ) ) @ ( 'sin/1' @ V_theta ) ) ) ) ) )
        & ( V_l
          = ( '2d.length-of/1' @ V_C ) ) ) )).

thf(p3_qustion,question,
    ( 'Find/1'
    @ ^ [V_l: 'R'] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ ( '//2' @ 5 @ 3 ) @ V_x )
                & ( '<=/2' @ V_x @ ( '//2' @ 8 @ 3 ) )
                & ( V_y
                  = ( '*/2' @ 2 @ ( 'sqrt/1' @ ( '^/2' @ V_x @ 3 ) ) ) ) ) ) )
        & ( V_l
          = ( '2d.length-of/1' @ V_C ) ) ) )).

thf(p4_qustion,question,
    ( 'Find/1'
    @ ^ [V_l: 'R'] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ ( '-/1' @ V_a ) @ V_x )
                & ( '<=/2' @ V_x @ V_a )
                & ( V_y
                  = ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( '+/2' @ ( 'exp/1' @ V_x ) @ ( 'exp/1' @ ( '-/1' @ V_x ) ) ) ) ) ) ) )
        & ( '</2' @ 0 @ V_a )
        & ( V_l
          = ( '2d.length-of/1' @ V_C ) ) ) )).

thf(p5_qustion,question,
    ( 'Find/1'
    @ ^ [V_l: 'R'] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ 1 @ V_x )
                & ( '<=/2' @ V_x @ ( 'sqrt/1' @ 3 ) )
                & ( V_y
                  = ( 'ln/1' @ V_x ) ) ) ) )
        & ( V_l
          = ( '2d.length-of/1' @ V_C ) ) ) )).

thf(p6_qustion,question,
    ( 'Find/1'
    @ ^ [V_l: 'R'] :
      ? [V_C: '2d.Shape'] :
        ( ( V_C
          = ( '2d.set-of-cfun/1'
            @ ^ [V_x: 'R',V_y: 'R'] :
                ( ( '<=/2' @ 0 @ V_x )
                & ( '<=/2' @ V_x @ 1 )
                & ( ( '*/2' @ 3 @ ( '^/2' @ V_y @ 2 ) )
                  = ( '*/2' @ V_x @ ( '^/2' @ ( '-/2' @ V_x @ 1 ) @ 2 ) ) ) ) ) )
        & ( V_l
          = ( '2d.length-of/1' @ V_C ) ) ) )).

thf(p1_answer,answer,(
    ^ [V_l_dot_0: 'R'] :
      ( V_l_dot_0
      = ( '*/2' @ 2 @ ( 'sqrt/1' @ 2 ) ) ) ),
    answer_to(p1_question,[])).

thf(p2_answer,answer,(
    ^ [V_l_dot_0: 'R'] :
      ( V_l_dot_0
      = ( '+/2' @ ( '*/2' @ 2 @ ( 'sqrt/1' @ 2 ) ) @ -2 ) ) ),
    answer_to(p2_question,[])).

thf(p3_answer,answer,(
    ^ [V_l_dot_0: 'R'] :
      ( V_l_dot_0
      = ( '//2' @ 122 @ 27 ) ) ),
    answer_to(p3_question,[])).

thf(p4_answer,answer,(
    ^ [V_l_dot_0: 'R'] :
      ( V_l_dot_0
      = ( '+/2' @ ( 'exp/1' @ V_a ) @ ( '-/1' @ ( 'exp/1' @ ( '-/1' @ V_a ) ) ) ) ) ),
    answer_to(p4_question,[])).

thf(p5_answer,answer,(
    ^ [V_l_dot_0: 'R'] :
      ( V_l_dot_0
      = ( '+/2' @ ( '+/2' @ 2 @ ( '-/1' @ ( 'sqrt/1' @ 2 ) ) ) @ ( '*/2' @ ( '//2' @ 1 @ 2 ) @ ( 'ln/1' @ ( '//2' @ ( '^/2' @ ( '+/2' @ ( 'sqrt/1' @ 2 ) @ 1 ) @ 2 ) @ 3 ) ) ) ) ) ),
    answer_to(p5_question,[])).

thf(p6_answer,answer,(
    ^ [V_l_dot_0: 'R'] :
      ( V_l_dot_0
      = ( '//2' @ ( '*/2' @ 4 @ ( 'sqrt/1' @ 3 ) ) @ 3 ) ) ),
    answer_to(p6_question,[])).
