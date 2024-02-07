<img style="float: right;" src="files/Floris.jpg" alt="Floris van Doorn" width="357" align="right">

# Floris van Doorn

```
e-mail: fpvdoorn@gmail.com
office: 1.035
```
<!-- ```
address:
Universität Bonn
Mathematisches Institut
Endenicher Allee 60
D-53115 Bonn
Germany
``` -->
<!-- office phone: +49-228-73-2951 -->

I am a professor at the [mathematical institute](https://www.math.uni-bonn.de/) of the [university of Bonn](https://www.uni-bonn.de) since October 2023. I am working on formalized mathematics in the [Lean Theorem Prover](https://leanprover.github.io/). I am a maintainer of its mathematical library [mathlib](https://leanprover-community.github.io/), and my latest project was the [sphere eversion project](https://leanprover-community.github.io/sphere-eversion/). In this project, we formalized an important result in differential topology, namely Gromov's h-principle for first-order differential relations using a technique called *convex integration*.

To try Lean, I recommend the online book [Mathematics in Lean](https://leanprover-community.github.io/mathematics_in_lean/). Or check out [these other ways of learning Lean](https://leanprover-community.github.io/learn.html).

<!-- To try Lean, I recommend the <a href="https://www.ma.imperial.ac.uk/~buzzard/xena/natural_number_game/">Natural Number Game</a> by Kevin Buzzard and Mohammad Pedramfar. -->

Until September 2023, I was a postdoc at the [mathematics department](https://www.imo.universite-paris-saclay.fr/en/) of the [University of Paris-Saclay](https://www.universite-paris-saclay.fr/en), working with [Patrick Massot](https://www.imo.universite-paris-saclay.fr/~pmassot/en/). Before that, I was a postdoc at the [mathematics department](http://www.mathematics.pitt.edu/) of the University of Pittsburgh, working with [Tom Hales](https://sites.google.com/site/thalespitt/) on the [Formal Abstracts](https://formalabstracts.github.io/) and [Flypitch](https://flypitch.github.io/) projects. I did my PhD at [Carnegie Mellon University](https://www.cmu.edu/index.html) under the supervision of [Jeremy Avigad](http://www.andrew.cmu.edu/user/avigad/) and [Steve Awodey](https://www.andrew.cmu.edu/user/awodey/). My **dissertation** is titled *["On the Formalization of Higher Inductive Types and Synthetic Homotopy Theory"](papers/dissertation.pdf)*. [Full CV (pdf)](files/cv.pdf).


<!-- <p>
I previously studied at the <a href="https://www.uu.nl/en"><a href="files/cv.pdf">Full CV (pdf)</a>.Utrecht University</a> in the Netherlands
where I received a B.Sc. in Mathematics, a B.Sc. in Physics and a M.Sc. in Mathematics. My master
thesis is <i><a href="papers/thesis.pdf">Explicit convertibility proofs in Pure Type Systems</a></i>
supervised by <a href="https://www.cs.ru.nl/~freek/">Freek Wiedijk</a> at
the <a href="http://www.ru.nl/">Radboud University Nijmegen</a>. I was also trainer for the Dutch
Mathematical Olympiad. <a href="files/cv.pdf">Full CV (pdf)</a>.
</p> -->

<!-- ## News -->

* *Summer 24*: I'm teaching a seminar [Collaborative Formalization in Analysis (pdf)](/files/seminar24notes.pdf)
* *January 2024*: I will be giving a [Lean tutorial in Rome](https://www.mat.uniroma2.it/butterley/formalisation/).
* *November 2023*: I offered a [postdoc position](/postdoc)!
* *Winter 23/24*: I'm teaching [Formalized Mathematics in Lean](https://github.com/fpvandoorn/LeanCourse23/)


<!-- * *October 2023*: I started my professor position in Bonn! -->

## Research

I formalize mathematical results and develop new tools for the [Lean](https://leanprover.github.io/) Theorem prover. I am a contributor and maintainer of [mathlib](https://leanprover-community.github.io/). I have formalized results from many areas of mathematics, including measure theory, set theory, model theory, and combinatorics. Together with [Jesse Michael Han](https://jesse-michael-han.github.io/), I formalized the independence of the continuum hypothesis in the [Flypitch project](https://flypitch.github.io/), which was one of the few remaining unformalized problems on [Freek Wiedijk's list](https://www.cs.ru.nl/~freek/100/). The proof required formalizing an internal model of set theory in Lean and formalizing a notion of forcing. We used Boolean-valued forcing for our proof.

I also formalized another problem on Wiedijk's list, proving that it is impossible to partition a cube into finitely many smaller cubes. Recently, I have formalized quite some measure theory, including the Haar measure and Fubini's theorem for the Bochner integral. I have furthermore worked on various tactics, tools, and programs to aid formalization in Lean.

I am interested in [Homotopy Type Theory](https://homotopytypetheory.org/) (HoTT), which is a connection between homotopy theory and type theory, where one interprets the basic concepts in the logic of type theory in a geometric way. Using this interpretation, you can define many concepts of algebraic topology, like homotopy and (co)homology groups synthetically into the type theory. Since the homotopy theoretic definitions are very close to the logical foundations, it is feasible to formalize many of these results in a proof assistant, without being much more effort than proving these results on paper. I have formalized a lot of Homotopy Type Theory in [the HoTT library for Lean 2](https://github.com/leanprover/lean2/blob/master/hott/hott.md) and in the [Spectral Sequence project](https://github.com/cmu-phil/Spectral), where I was the main author of both. My main interest in this field is *synthetic homotopy theory*, which is the study of types as spaces in algebraic topology. My main contribution was to give a synthetic definition of the (cohomological) Serre and Atiyah-Hirzebruch Spectral sequences in Lean.

I have also studied the research question of which higher inductive types can be constructed from ordinary inductive types and one simple higher inductive type, the homotopy pushout.

## Publications

- Patrick Massot, Floris van Doorn, Oliver Nash. *["Formalising the *h*-principle and sphere eversion"](papers/sphere_eversion.pdf)*, CPP 2023: Certified Programs and Proofs. ([ACM](https://dl.acm.org/doi/10.1145/3573105.3575688), [arXiv](https://arxiv.org/abs/2210.07746), [website](https://leanprover-community.github.io/sphere-eversion/), [slides](talks/sphere_eversion_CPP.pdf))
- Jeremy Avigad, Floris van Doorn. *["Progress on a Perimeter Surveillance Problem"](papers/perimeter.pdf)*, ICAS 2021: International Conference on Autonomous Systems. ([arXiv](https://arxiv.org/abs/2008.04262), [proceedings](https://2021.ieee-icas.org/wp-content/uploads/sites/53/2021/08/ICAS2021_Proceedings-compressed.pdf))
- Floris van Doorn. *["Formalized Haar Measure"](papers/haar.pdf)*, ITP 2021: Interactive Theorem Proving. ([arXiv](https://arxiv.org/abs/2102.07636), Formalization is part of [mathlib](https://github.com/leanprover-community/mathlib/))
- Floris van Doorn, Gabriel Ebner, and Robert Y. Lewis. *["Maintaining a Library of Formal Mathematics"](papers/maintenance.pdf)*, CICM 2020: 13th Conference on Intelligent Computer Mathematics. ([arXiv](https://arxiv.org/abs/2004.03673))
- Kristina Sojakova, Floris van Doorn, Egbert Rijke. *["Sequential Colimits in Homotopy Type Theory"](papers/sequential_colimits_homotopy.pdf)*, LICS 2020: Thirty-Fifth Annual ACM/IEEE Symposium on Logic in Computer Science. ([Formalization (Github)](https://github.com/cmu-phil/Spectral/tree/master/colimit))
- The mathlib Community. *["The Lean Mathematical Library"](https://leanprover-community.github.io/papers/mathlib-paper.pdf)*, CPP 2020: Certified Programs and Proofs. ([arXiv](https://arxiv.org/abs/1910.09336), [Website](https://leanprover-community.github.io/), [Formalization (Github)](https://github.com/leanprover-community/mathlib/))
- Jesse Michael Han, Floris van Doorn. *["A Formal Proof of the Independence of the Continuum Hypothesis"](papers/flypitch-cpp-2020.pdf)*, CPP 2020: Certified Programs and Proofs. ([arXiv](https://arxiv.org/abs/2102.02901), [Website](https://flypitch.github.io/), [Formalization (Github)](https://github.com/flypitch/flypitch))
- Jesse Michael Han, Floris van Doorn. *["A Formalization of Forcing and the Unprovability of the Continuum Hypothesis"](papers/flypitch-itp-2019.pdf)*, ITP 2019: Interactive Theorem Proving. ([arXiv](https://arxiv.org/abs/1904.10570), [Website](https://flypitch.github.io/), [Formalization (Github)](https://github.com/flypitch/flypitch))
- Ulrik Buchholtz, Floris van Doorn, Egbert Rijke. *["Higher Groups in Homotopy Type Theory"](papers/higher-groups.pdf)*, Logic in Computer Science (LICS) 2018. ([arXiv](https://arxiv.org/abs/1802.04315), [slides](talks/lics18slides.pdf), [Formalization (Github)](https://github.com/cmu-phil/Spectral/blob/master/higher_groups.hlean))
- Floris van Doorn, Jakob von Raumer, Ulrik Buchholtz. *["Homotopy Type Theory in Lean"](papers/leanhott.pdf)*, 8th International Conference on Interactive Theorem Proving (ITP), 2017. ([arXiv](https://arxiv.org/abs/1704.06781), [slides](talks/HoTTLeanITP.pdf), [Lean-HoTT library (Github)](https://github.com/leanprover/lean2/blob/master/hott/hott.md), [Spectral repository (Github)](https://github.com/cmu-phil/Spectral))
- Floris van Doorn. *["Constructing the Propositional Truncation using Non-recursive HITs"](papers/proptrunc.pdf)*, Certified Proofs and Programs (CPP), 2016. ([arXiv](https://arxiv.org/abs/1512.02274), [slides](talks/CPP2016.pdf), [Lean source (Github)](https://github.com/fpvandoorn/leansnippets/blob/master/cpp.hlean))
- Leonardo de Moura, Soonho Kong, Jeremy Avigad, Floris van Doorn, Jakob von Raumer. *["The Lean Theorem Prover (System Description)"](papers/lean_description.pdf)*, International Conference on Automated Deduction (CADE-25), 2015.
- Cody Roux and Floris van Doorn. *["The Structural Theory of Pure Type Systems"](papers/struct_pts.pdf)*, Types and Lambda Calculi and Applications (TLCA), 2014. ([slides](talks/TLCA2014.pdf))
- Floris van Doorn, Herman Geuvers, Freek Wiedijk. *["Explicit Convertibility Proofs in Pure Type Systems"](papers/explicitPTS.pdf)*, Logical Frameworks and Meta-Languages: Theory and Practice (LFMTP), 2013. ([slides](talks/LFMTP2013.pdf), [Coq formalization](ptsf/index.html))


## Selected Talks

Talks corresponding to one of my papers are listed under *Publications*.

<!-- Future: CIRM, Hausdorff trimester -->
- *The internals of Lean*, Computer-verified proofs: 48 hours in Rome, January 2024. ([slides](talks/LeanInternals.pdf), [workshop repository](https://github.com/fpvandoorn/LeanInRome/))
- *Mathematics in Lean*, Hausdorff School, Bonn, Germany, September 2023. ([slides](talks/math_in_lean.pdf), [school repository](https://github.com/fpvandoorn/HausdorffSchoolLean/))
- *The Independence of the Continuum Hypothesis in Lean*, Lean for the Curious Mathematician Colloquium, Düsseldorf, Germany, September 2023. ([slides](talks/independenceCH.pdf))
<!-- not included: Lorentz Center, Leiden -->
- *Formalizing sphere eversion using Lean's mathematical library*, special session on Machine-checked mathematics, CALCO 2023 & MFPS XXXIX, Bloomington, Indiana, USA. ([slides](talks/sphere_eversion_specialsession.pdf))
- *Tutorial on interactive theorem proving in Lean*, Logic Colloquium, Milan. ([slides](talks/LC23.pdf), [repository](https://github.com/fpvandoorn/LogicColloquiumTutorial/))
- *What can we learn from formalizations in homotopy type theory?*, May 2023. [Formalization of Cohomology Theories](http://www.birs.ca/events/2023/5-day-workshops/23w5124), Banff International Research Station. ([slides](talks/birs23.pdf))
- *Lessons Learned from Formalizing Local Convex Integration*, May 2022. [Lean in Lyon](https://www.univ-st-etienne.fr/fr/icj/actualites-icj/actualites-2021-2022/lean-in-lyon.html). ([slides](talks/sphere_eversion22.pdf))
- *Formalizing mathematics in Lean*, November 2021. [Laboratoire Méthodes Formelles](https://lmf.cnrs.fr/Seminar/). ([slides](talks/LMF21lean.pdf))
- *Automating Concept Equivalence in Dependent Type Theory*, September 2021. [6th Conference on Artificial Intelligence and Theorem Proving (AITP)](http://aitp-conference.org/2021/), online. ([slides](talks/AITP21crypto.pdf), [video](http://grid01.ciirc.cvut.cz/~mptp/zoomaitp/2021-09-07a/zoom_1.mp4) starts around 2:19:00).
- *Structures and Classes*, July 2020. [Lean for the curious mathematician](https://leanprover-community.github.io/lftcm2020/), online. ([video 1](https://www.youtube.com/watch?v=xYenPIeX6MY), [video 2](https://www.youtube.com/watch?v=1W_fyjaaY0M))
- *Tactics in Lean*, February 2020. [HCM Workshop: Mathematical Language and Practical Type Theory](https://www.hcm.uni-bonn.de/events/eventpages/2020/mathematical-language-practical-type-theory-2020/). ([slides](talks/TacticsLeanBonn2020.pdf))
- *Lean Tactics*, January 2020. [Formal Methods in Mathematics / Lean Together](https://www.andrew.cmu.edu/user/avigad/meetings/fomm2020/), Pittsburgh.
- *A Formal Abstract of the Classification of Finite Simple Groups*, June 2019. Vietnam — USA Joint Mathematical meeting 2019. ([slides](talks/JMM2019formalabstracts.pdf))
- *Towards Spectral Sequences for Homology*, November 2018. Homotopy Type Theory Electronic Seminar Talks, online. ([slides](talks/HoTTEST2018.pdf), [video](https://www.youtube.com/watch?v=Q3zaqeKhUKg))
- *Formal Abstracts*, August 2018. Dagstuhl seminar: Formalization of Mathematics in Type Theory. ([slides](talks/formalabstracts2018.pdf))
- *Spectral Sequences in Homotopy Type Theory*, June 2018. [Workshop: Types, Homotopy Type theory, and Verification](http://www.him.uni-bonn.de/types-sets-constructions/description/), Hausdorff Research Institute for Mathematics, Bonn. ([slides](talks/Bonn2018spectralsequences.pdf))
- *Formalized Spectral Sequences in Homotopy Type Theory*, September 2017. Algebra, Combinatorics, and Geometry seminar, University of Pittsburgh. ([slides talk 1](talks/17Pitt_hottintro.pdf), [slides talk 2](talks/17Pitt_SSS.pdf))
- *Homotopy Type Theory in Lean*, July 2017. [Computer-aided mathematical proof](https://www.newton.ac.uk/event/bprw01), Cambridge. ([slides](talks/LeanBigProof.pdf), [video](https://www.newton.ac.uk/seminar/20170711113012301))
- *The Lean HoTT Library*, July 2017. [Big Proof](https://www.newton.ac.uk/event/bpr), Cambridge. ([slides](talks/LeanComparisonBigProof.pdf), [video](https://www.newton.ac.uk/seminar/20170707113012002))
- *Eilenberg-MacLane Spaces in Homotopy Type Theory*, March 2017, [ASL 2017 North American meeting](http://asl2017.boisestate.edu/). ([slides](talks/boise.pdf))
- *Homotopy Type Theory in Lean*, June 2016, [HoTT/UF Workshop](http://hott-uf.gforge.inria.fr/) colocated with [FSCD](http://fscd2016.dcc.fc.up.pt/). ([slides](talks/Porto2016lean.pdf))
- *Reducing Higher Inductive Types to Quotients*, May 2016, [HoTT Workshop in Toronto](http://www.fields.utoronto.ca/activities/15-16/homotopy-type). ([slides](talks/Toronto2016hits.pdf), [video](http://www.fields.utoronto.ca/talks/reducing-hits-quotients))
- *The Lean Theorem Prover and Homotopy Type Theory*, May 2016 (with Jeremy Avigad), [HoTT Workshop in Toronto](http://www.fields.utoronto.ca/activities/15-16/homotopy-type). ([slides](talks/Toronto2016lean.pdf), [video](http://www.fields.utoronto.ca/talks/homotopy-type-theory-lean))
- *Eilenberg-MacLane Spaces in Homotopy Type Theory*, March 2016, [ASL 2017 North American meeting](http://asl2017.boisestate.edu/). ([slides](talks/boise.pdf))

## Unpublished Work
<!-- TODO: fix layout -->

- *Designing a general library for convolutions*, Floris van Doorn. Preprint ([arXiv](https://arxiv.org/abs/2210.07693))
- *On the Formalization of Higher Inductive Types and Synthetic Homotopy Theory*, Floris van Doorn. Dissertation. Committee: Jeremy Avigad, Steve Awodey, Ulrik Buchholtz, and Mike Shulman.
- *Logic and Proof*, Jeremy Avigad, Robert Y. Lewis, Floris van Doorn. Lecture notes for the course Logic and Mathematical Inquiry ([Interactive version](http://avigad.github.io/logic_and_proof/logic_and_proof.pdf))
- *The Lean Theorem Prover*, Floris van Doorn. Blog post of the [HoTT Blog](http://homotopytypetheory.org/blog/), December 2015. ([Link](http://homotopytypetheory.org/2015/12/02/the-proof-assistant-lean/))
- *Constructing the Propositional Truncation using Nonrecursive HITs*, Floris van Doorn. Blog post of the [HoTT Blog](http://homotopytypetheory.org/blog/), July 2015. ([Link](http://homotopytypetheory.org/2015/07/28/constructing-the-propositional-truncation-using-nonrecursive-hits/))
- Short notes on the *Applications of the Serre Spectral Sequence*, November 2015.
- *Propositional Calculus in Coq*, Floris van Doorn. ([arXiv:1503.08744](https://arxiv.org/abs/1503.08744)), May 2014.
- *Explicit Convertibility Proofs in Pure Type Systems*, Floris van Doorn. Master thesis. Advisor: [Freek Wiedijk](https://www.cs.ru.nl/~freek/)

## Past Teaching

### University of Pittsburgh

- Spring 2021: Abstract Algebra (Math 1250).
- Spring 2020: Topics in Geometry (Math 1290).
- Spring 2019: Calculus I ([Math 0220](http://calculus.math.pitt.edu/syllabi/0220syllabus.html)).

### Carnegie Mellon University

- Fall 2016: TA for Differential and Integral Calculus (21-120) with [Russ Walker](http://www.math.cmu.edu/~rw1k/).
- Fall 2015: TA for Logic and Mathematical Inquiry (80-211) with [Jeremy Avigad](http://www.andrew.cmu.edu/user/avigad/). Also co-author of the [lecture notes](http://avigad.github.io/logic_and_proof/) together with Jeremy Avigad and Rob Lewis.
- Spring 2015: TA for Game Theory (80-405/80-705) with [Adam Bjorndahl](http://www.andrew.cmu.edu/user/abjorn/Site/Home.html).
- Fall 2014: TA for Formal Logic ([80-310/80-610](http://www.andrew.cmu.edu/course/80-310-610/index.html)) with [Steve Awodey](http://www.andrew.cmu.edu/user/awodey/).

### Utrecht University

- Spring 2012: TA for Discrete Mathematics with [Han Hoogeveen](http://www.staff.science.uu.nl/~hooge109/).
- Fall 2011: TA for Foundations of Mathematics with [Jaap van Oosten](http://www.staff.science.uu.nl/~ooste110/).
