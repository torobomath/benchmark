%% DOMAIN:    Integration and its Applications
%% THEORY:    PA+trans
%% LEVEL:     5
%% SOURCE:    Chart System Math III+C Yellow Book, Problem 09CY3E265
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-12-30

% Syntax   : Number of formulae    :    4 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :  114 (   9 equality;  33 variable)
%            Maximal formula depth :   20 (  13 average)
%            Number of connectives :   92 (   0   ~;   0   |;  10   &;  82   @)
%                                         (   0 <=>;   0  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    2 (   2   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   30 (   0   :)
%            Number of variables   :   17 (   1 sgn;   0   !;   4   ?;   9   ^)
%                                         (  13   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p2_qustion,question,
    ( 'Find/1'
    @ ^ [V_lim: 'R'] :
      ? [V_Cn: 'Z' > '2d.Shape',V_Sn: 'Z' > 'R',V_Tn: 'seq.Seq'] :
        ( ( V_Cn
          = ( ^ [V_n_dot_1: 'Z'] :
                ( '2d.shape-of-cpfun/1'
                @ ^ [V_P: '2d.Point'] :
                    ( ( ( '2d.y-coord/1' @ V_P )
                      = ( '*/2' @ ( '2d.x-coord/1' @ V_P ) @ ( 'sin/1' @ ( '2d.x-coord/1' @ V_P ) ) ) )
                    & ( '<=/2' @ ( '*/2' @ ( '-/2' @ ( 'int->real/1' @ V_n_dot_1 ) @ 1 ) @ 'Pi/0' ) @ V_x )
                    & ( '<=/2' @ V_x @ ( '*/2' @ ( 'int->real/1' @ V_n_dot_1 ) @ 'Pi/0' ) )
                    & ( 'int.>/2' @ V_n_dot_1 @ 0 ) ) ) ) )
        & ( V_Sn
          = ( ^ [V_n_dot_0: 'Z'] :
                ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ ( 'LamApp/2' @ V_Cn @ V_n_dot_0 ) @ ( 'cons/2' @ '2d.x-axis/0' @ 'nil/0' ) ) ) ) ) )
        & ( V_Tn
          = ( 'seq.seq/1'
            @ ^ [V_n: 'Z'] :
                ( '*/2' @ ( 'LamApp/2' @ V_Sn @ V_n ) @ ( 'LamApp/2' @ V_Sn @ ( 'int.+/2' @ V_n @ 1 ) ) ) ) )
        & ( 'seq.is-infinite-sum-of/2' @ V_lim @ V_Tn ) ) )).

thf(p1_qustion,question,
    ( 'Find/1'
    @ ^ [V_Sn: 'R'] :
      ? [V_C: '2d.Shape'] :
        ( ( 'int.>/2' @ V_n @ 0 )
        & ( V_C
          = ( '2d.shape-of-cpfun/1'
            @ ^ [V_P: '2d.Point'] :
                ( ( ( '2d.y-coord/1' @ V_P )
                  = ( '*/2' @ ( '2d.x-coord/1' @ V_P ) @ ( 'sin/1' @ ( '2d.x-coord/1' @ V_P ) ) ) )
                & ( '<=/2' @ ( '*/2' @ ( '-/2' @ ( 'int->real/1' @ V_n ) @ 1 ) @ 'Pi/0' ) @ V_x )
                & ( '<=/2' @ V_x @ ( '*/2' @ ( 'int->real/1' @ V_n ) @ 'Pi/0' ) ) ) ) )
        & ( V_Sn
          = ( '2d.area-of/1' @ ( '2d.shape-enclosed-by/1' @ ( 'cons/2' @ V_C @ ( 'cons/2' @ '2d.x-axis/0' @ 'nil/0' ) ) ) ) ) ) )).

thf(p2_answer,answer,(
    ^ [V_lim_dot_0: 'R'] :
      ( V_lim_dot_0
      = ( '//2' @ 1 @ ( '*/2' @ 2 @ ( '^/2' @ 'Pi/0' @ 2 ) ) ) ) ),
    answer_to(p2_question,[])).

thf(p1_answer,answer,(
    ^ [V_Sn_dot_0: 'R'] :
      ( V_Sn_dot_0
      = ( '*/2' @ 'Pi/0' @ ( '-/2' @ ( '*/2' @ 2 @ ( 'int->real/1' @ V_n ) ) @ 1 ) ) ) ),
    answer_to(p1_question,[])).
