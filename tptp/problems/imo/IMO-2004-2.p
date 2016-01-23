%% DOMAIN:    Algebra, misc
%% THEORY:    RCF+PA
%% SOURCE:    International Mathematical Olympiad, 2004, Problem 2
%% SCORE:     7
%% AUTHOR:    Jumma Kudo
%% GENERATED: 2014-10-31
%%
%% <PROBLEM-TEXT>
%% Find all polynomials f with real coeffcients such that for all
%% reals a,b,c such that ab + bc + ca = 0 we have the following relations
%% f (a - b) + f (b - c) + f (c - a) = 2f (a + b + c).
%% </PROBLEM-TEXT>

% Syntax   : Number of formulae    :    2 (   0 unit;   0 type;   0 defn)
%            Number of atoms       :   55 (   4 equality;  24 variable)
%            Maximal formula depth :   15 (  12 average)
%            Number of connectives :   46 (   0   ~;   0   |;   1   &;  44   @)
%                                         (   0 <=>;   1  =>;   0  <=;   0 <~>)
%                                         (   0  ~|;   0  ~&;   0  !!;   0  ??)
%            Number of type conns  :    0 (   0   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   13 (   0   :)
%            Number of variables   :    8 (   0 sgn;   3   !;   3   ?;   2   ^)
%                                         (   8   :;   0  !>;   0  ?*)
%                                         (   0  @-;   0  @+)

include('axioms.ax').
thf(find_directive_type, type, (! [V: $tType]: ('find/1': (V > $o) > $o))).
thf(draw_directive_type, type, (! [V: $tType]: ('draw/1': (V > $o) > $o))).

thf(p_qustion,question,
    ( 'Find/1'
    @ ^ [V_P: 'R2R'] :
        ( ? [V_as: 'ListOf' @ 'R'] :
            ( V_P
            = ( 'poly-fun/1' @ V_as ) )
        & ! [V_a: 'R',V_b: 'R',V_c: 'R'] :
            ( ( ( '+/2' @ ( '*/2' @ V_a @ V_b ) @ ( '+/2' @ ( '*/2' @ V_b @ V_c ) @ ( '*/2' @ V_c @ V_a ) ) )
              = 0 )
           => ( ( '+/2' @ ( 'funapp/2' @ V_P @ ( '-/2' @ V_a @ V_b ) ) @ ( '+/2' @ ( 'funapp/2' @ V_P @ ( '-/2' @ V_b @ V_c ) ) @ ( 'funapp/2' @ V_P @ ( '-/2' @ V_c @ V_a ) ) ) )
              = ( '*/2' @ 2 @ ( 'funapp/2' @ V_P @ ( '+/2' @ V_a @ ( '+/2' @ V_b @ V_c ) ) ) ) ) ) ) )).

thf(p_answer,answer,(
    ^ [V_P_dot_0: 'R2R'] :
    ? [V_a_dot_0: 'R',V_b_dot_0: 'R'] :
      ( V_P_dot_0
      = ( 'poly-fun/1' @ ( 'cons/2' @ V_a_dot_0 @ ( 'cons/2' @ 0 @ ( 'cons/2' @ V_b_dot_0 @ 'nil/0' ) ) ) ) ) ),
    answer_to(p_question,[])).
