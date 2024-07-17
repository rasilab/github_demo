
---
title: Response to Reviewers
header-includes:
  - \usepackage[font=footnotesize,labelfont=bf]{caption}
  - \captionsetup{labelformat=empty}
  - \usepackage{xr}
  - \externaldocument[ms-]{../maintext/maintext_diff}
  - \usepackage{etoolbox}
  - \AtBeginEnvironment{quote}{\par\singlespacing\color{gray}}

---

## Summary of changes

<!--Write a summary of the key changes here. Borrow as much language and structure from L27-L39 here as possible \url{https://github.com/rasilab/tybottorffdocs/blob/f4264cc/manuscripts/first_paper/reviewcommons_response/response_letter.md?plain=1}} -->

We thank all four reviewers for their constructive feedback on our manuscript.
We have now performed additional experiments, analyses, and rewriting of our manuscript to address all their concerns.
We believe that these changes significantly improve the rigor of our conclusions and the clarity of our discussion.
We highlight the key changes below, which is followed by a detailed point-by-point response.

1. We used a pooled assay to measure the mRNA-destabilizing effects of dipeptide-encoding reporters in different yeast knockout strains to assess the contribution of these factors. These experiments confirm a primary role for Hel2 and a secondary role of Syh1 in mediating mRNA decay of most dipeptides identified in our study. We found that *cue2Δ* and *xrn1Δ* partly rescued the mRNA effects.

2. We measured the mRNA-destabilizing effect of reporters with overlapping stop codons and destabilizing (FK)~8~ dipeptide repeats in a *upf1Δ* background. We find Upf1 dependence only when the stop codon is within the first 10-11 codons of the (FK)~8~-encoding region, thus reinforcing our original conclusion that stop codons present beyond this region do not trigger NMD.

3. We clarified our description of the computational frameshifting analyses, revised our discussion of the effects of glucose deprivation on NMD, and provide a comparison of our results with those of Gamble et al., 2016.

## Referee: 1

### Comments for the Authors

\done{This manuscript by Chen and co-workers systemically examines the effects of codon pairs on mRNA stability in yeast. The authors take a sequencing approach, quantifying reporter mRNA from a library with 8 repeats of each codon pair, e.g. (FK)8. Their results nicely recapitulate what we know about non-optimal codons triggering decay and specific nascent peptide sequences (such as poly-Lys) that promote decay. They also reveal new peptide sequences that destabilize mRNAs as they are translated. The authors show that most of the peptide effects are the result of ribosome quality control (RQC) pathways downstream of Hel2, presumably through stalling, collisions, and targeted decay pathways. Overall, this is a powerful approach that offers a systematic view of the relative strength of many things known to pause ribosomes and induce decay, including codons, amino acid motifs, and nonsense mediated decay. The paper is well argued and the data are clearly presented; it is a pleasure to read.}

We thank the reviewer for recognizing the strength of our approach and the clarity of our presentation. 

### Major points

\done{1.1. In several places the authors make claims about decay mechanisms that could be validated using the reporter of interest and a yeast knockout strain. Re-screening the library isn’t necessary; but they should validate with the YFP assay used in Figure 2C the role of specific factors on specific reporters. For example, for codon effects (e.g. ATA Leu), is Not5 involved? What targets the peptide repeats for decay downstream of Hel2? Is it cleavage by Cue2?  What about an Xrn1 knockout? And the Hel2 Synh1 double knockout? (most relevant to Figure 4). Finally, for the non-sense mediated decay pathways (Figure 5), is the effect lost in a Upf1 knockout. This would be especially interesting for the FK8 stop codon mutations (e.g. comparing stop at codon 10 (lots of NMD) vs stop at codon 11 (no NMD)) .}

We performed two experiments to address the above comment.
We used a pooled sequencing assay for mRNA levels instead of the fluorescence-based readout since it is easier to test a larger number of reporters and/or strains in this format.

For our first experiment, we chose a small pool of codon pairs that reduced mRNA levels in our initial screen along with negative control codon pairs.
We integrated reporters encoding these codon pairs into *hel2∆*, *syh1∆*, *hel2∆syh1∆*, *xrn1∆*, *cue2∆*, and *Δnot5* backgrounds (see below, Fig. [S4](#figure-s4)A in manuscript).
These results are described in the manuscript:

> To further assess the involvement of other RNA decay factors in mediating the effects of these pairs, we integrated a small pool of select codon pairs into *hel2∆*, *syh1∆*, *hel2∆syh1∆*, *xrn1∆*, and *cue2∆* cells.
> Codon pairs in this small pool included many of the pairs that reduced mRNA levels in our initial screen along with negative control pairs.
> Consistent with the results of the full library, mRNA levels for none of the destabilized dipeptides were rescued in *syh1Δ* cells, while they were rescued in *hel2Δ* cells (Fig. [S4](#figure-s4)A).
> mRNA levels for destabilized dipeptides in the *hel2Δsyh1Δ* double deletion strain were higher than in any of the single deletion strains, consistent with the known mutually compensatory roles of these two factors.
> *cue2Δ* and *xrn1Δ* cells also had varying but generally higher mRNA levels for destabilizing reporters than wild-type cells, consistent with previous work[@Dorazio2019].
> mRNA destabilization by RI/IR pairs were not rescued by either *HEL2* or *SYH1* deletion in the full library, and were also not rescued by any of the other decay factors tested in the small library.
> Together, these results reveal that Hel2-mediated RQC regulates most but not all mRNA-destabilizing effects of dipeptide repeats identified in our original screen, and suggest that Syh1 and Hel2 can act compensatorily to regulate these dipeptides.

The *not5∆* strain had a severe growth defect so we could not reliably measure mRNA levels of reporters in this strain.
Further, as noted in previous work [@Veltri2022] (see Author response section of this earlier study), *not5∆* does not rescue steady state mRNA or protein levels of reporters with non-optimal codons even though it inhibits the decay of mRNAs with non-optimal codons in transcriptional shutoff experiments [@Buschauer2020].
This complicating yet poorly understood factor prevented the analysis of reporters with non-optimal codons using pooled genetic approaches in Veltri et al., 2022, and was also the reason we did not test our original codon pair or endogenous fragment libraries in the *not5∆* background.

![
**Figure R1**: (Supplementary Fig. 4A in manuscript)
](./svg/revision_dicodon.svg){width=2.7in}

For our second experiment, we integrated the (FK)~8~ mutational scan library in *upf1Δ* cells to evaluate the stop codon effect that we observed in wild-type cells (Fig. [5](#figure-5)C).
While the coverage in this experiment was low, we could readily discern the effect of *upf1Δ* on mRNA levels of stop codon-containing variants versus all other missense variants, aggregated by position (see below, Fig. [S5](#figure-s5)A in manuscript).
*upf1Δ* cells had higher mRNA levels for stop codon-containing variants in the first 10 positions of the (FK)~8~ dipeptide, consistent with the idea that NMD is the primary decay process for these variants.
After position 11, *upf1Δ* had no effect on mRNA levels of stop codon-containing variants.
These results are described in the manuscript:

> First, mRNA levels of stop codon-containing variants decrease only when stop codons are present until position 11 of the (FK)~8~ repeat.
> This suggests that nonsense-mediated mRNA decay does not occur on mRNAs undergoing extended ribosome stalling.
> Indeed, low coverage deep mutational scanning confirmed that deletion of *UPF1*, the primary effector of NMD, does not rescue reporter mRNA levels when stop codons occur beyond position 11 of the (FK)~8~ repeat (Fig. [S5](#figure-s5)A).

![
**Figure R2**: (Supplementary Figure 5A in manuscript)
](./svg/upf1.svg){width=3.5in}

### Minor points (mostly for clarity)

\done{1.2. Figure 1C/E and page 6 lines 16-35: the correlation of the effects in the authors’ new data with CSC is striking but there is little correlation with AASC. The authors should highlight the fact that these stability coefficients were derived from the codons or encoded amino acids associated with decay rates of the RNA in general, and not from codons or amino acids in clusters as they set up their assay here. This suggests that the codon effects observed in 1C arise from the codon itself, not its clustering, but that the amino acids effects from Arg, Trp, and Lys seen in 1E arise not from the encoded amino acid but by its interactions in the nascent peptide in the cluster of those repeated residues.}

We have included the following lines in the manuscript:

> Further, AASC values are derived from endogenous mRNAs where amino acids are typically not clustered as they are in our codon pair reporter assay. 
> Thus, the low correlation of our results with AASC (Fig. [1](#figure-1)F) suggests that clustering of amino acids rather than the identity of the amino acid itself drives the observed mRNA effects in our assay.
> Conversely, the higher correlation between our results and CSC (Fig. [1](#figure-1)D) suggests that the codon effects in our assay are driven by the identity of the codon itself.

\done{1.3. Figure 2B: In addition to the pairs discussed in the text, there is also a box of hydrophobic / aromatic pairs of residues (MLIV x FYW) with low stability that the authors don’t comment on in the text. They should also comment on the Gly-Gly codon effect shown in 2A.}

We had previously referred to these codon pairs in our discussion of cell toxicity, but we realize that we had not explicitly referred to them in our discussion of codon pair effects on mRNA. We have now added the following clarification in the text:

> Several hydrophobic and aromatic pairs (MLIV x FYW) as well as glycine pairs had low mRNA levels (Fig. [2](#figure-2)A).
> As noted earlier, many of these pairs also had low read counts in genomic DNA, suggesting that their mRNA effects might arise indirectly from cell growth inhibition rather than due to changes in mRNA stability [@Lin2018].

\done{1.4. Figure 2A vs 2B: There are some interesting differences between the results for codons and amino acids that the authors could address. For example, the black box for KR x KR is all red, meaning all of them are destabilized, but for the box for aromatic / charged (KR x FYW) the strong effects are for AGA and AGG for Arg and AAA and AAG for Lys. How fascinating. Please comment.}

The enhanced effect of the purine-containing codons in the KR x FYW box is indeed interesting, and could arise due to nucleotide-specific interactions at the decoding center of the ribosome, as has been observed in other endogenous stalling sequences [@Chandrasekaran2019;@Matsuo2020].
We have added the following to our manuscript:

> Interestingly, within the tyrosine-lysine and tyrosine-arginine groups, the strongest mRNA-reducing effects are for the purine-containing codons (AAA, AAG, AGA, and AGG), possibly due to nucleotide-specific interactions at the decoding center of the ribosome as has been observed in other stalling sequences [@Chandrasekaran2019;@Matsuo2020].

\done{1.5. Figure 3A: I would like to see a little more explanation of “computational frameshifting” in the text, I failed to see what they were doing the first time I read it. I think they are comparing the number of reads for a given codon pair A with a related codon pair B that has the same DNA sequence (only moved over one nt), thereby testing the relevance of the sequence itself and not its coding potential.}

The reviewer correctly understood our analysis, and we have added the following sentence to clarify our analysis:

> We compared the mRNA level of the insert with a codon pair in the +0 frame against the mRNA levels of the insert where the sequence is shifted over by one, two, or three nucleotides (+1, +2, +3 frame respectively).

\done{1.6. Page 7 line 36-37: Why does NMD go up in glucose deprivation? The authors argue that P-bodies are enhanced, and that is where NMD occurs, but I don’t find this particularly compelling. It is hard to tie molecular mechanisms to what is essentially an imaging phenomenon, one with particularly controversial functions.}

We agree with the reviewer that our original argument is not compelling, and revised our discussion based on Reviewer 2's specific suggestion. 
See 2.1. below.

\done{1.7. Figure 5C: The effects of the stop codon mutations are particularly striking. In both the wild-type cells and the hel2 knockout, mutating the (FK)8 sequence to a stop codon at any of the first ten positions makes the mRNA quite unstable, but surprisingly, stop codon mutations at or after position 11 have little or no effect. The authors offer two competing explanations for this: one for the wild-type strain and one for the hel2 knockout strain. This seems strange —the data look the same in both strains, why offer two explanations? The key question is, why is there no NMD when the stop codon is at position 11 or 12 in either strain. The Upf1 knockout could be helpful here with reporters.}

We thank the reviewer for pointing out this conflicting logic.
The *Δupf1* experiments (see 1.1. above) provide clear evidence that NMD does not occur when stop codons occur beyond position 11 of the (FK)~8~ repeat.
We have clarified this text as follows:

> Since *hel2∆* cells also exhibit the same pattern of stop codon effects as wild-type cells (Fig. [S5](#figure-s5)B), the observed lack of NMD is not simply due to kinetic competition between RQC and NMD, but rather a consequence of ribosome stalling driven by the first 10 codons of the (FK)~8~-encoding region.

\done{1.8. Figure 5D: I’ve really struggled with this panel. How does this representation help or improve on what I see in Figure 5C? The text reads that 10, 9 and 12 have the least difference between the wild-type and the hel2 knockout, meaning that they are the most important for triggering RQC. At first glance, this logic seems backwards! What makes it complicated is that each site has a variant that may or may not inactivate the stalling sequence. At position 10, essentially any mutation inactivates the stalling sequence (Figure 5C) which is I suppose what they are saying, but looking at Figure 5D, where there is no change, it requires a double negative in my thinking to make sense of what is already clear in Figure 5C. To sum up: if this panel is helpful, please clarify why in the text, and if not, please remove.}

We agree with the reviewer that various aspects of the panel are redundant with the heatmap, so we have moved it from the main section to Supplementary Figure 5.
We believe this supplementary figure is helpful for summarizing the differences between the *hel2∆* and wild-type heat maps, and provides information that is not obvious from each individual heatmap. 
For example, mRNA level distributions for positions at the termini of (FK)~8~ are shifted downward in both wild-type and *hel2∆* cells indicating that Hel2-mediated RQC reaches saturation for longer stalls.

\done{1.9. Fig. 6: Why test Hel2’s effects on codons? Why not Not5? Presumably the codon effects could go through a different pathway than the peptide effects (which are RQC).}

Please see our response to 1.1. above that addresses this point.

## Referee: 2

### Comments for the Authors
\done{In this manuscript the authors study the effect of codon pairs on mRNA stability in an innovative high throughput manner. The findings are interesting and well supported by the data and should be suitable for publication in NAR after minor revisions.}

We thank the reviewer for recognizing the innovation of our approach.

### Major concerns.

\done{2.1. The authors contribute that NMD may be less inhibited when glucose is depleted because P=bodies are induced, which are the sites of NMD. This explanation is only one of several possible explanations, and in my opinion, not the most likely explanation. NMD requires only one round of translation and should continue under conditions were translation is only partially repressed, such as glucose deprivation. On the other hand, the mRNA degradation that is dependent on Hel2 and collided ribosome requires high rate of translation initiation, because only those conditions allow for ribosomes to collide. The authors should provide a more complete explanation of the differential effects on NMD and codon-pair dependent degradation.}

We thank the reviewer for providing this compelling alternative explanation.
We agree that this is the more cohesive explanation and have added a supplementary figure and the following lines to the results section:

> Intriguingly, stop codon-containing inserts had lower mRNA levels during glucose deprivation even though nonsense-mediated mRNA decay of these inserts also requires translation.
> This might be because NMD is triggered following just one or few rounds of translation[@Hoek2019], while a high rate of translation initiation is necessary for collision-driven mRNA decay[@Park2019].
> Thus, the inhibition of translation during glucose deprivation will have a greater effect on the rate of collision-dependent decay than on NMD, leading to relatively lower mRNA levels of stop codon-containing inserts during glucose deprivation (Fig. [S4](#figure-s4)B).

![
**Figure R3**: (Supplementary Figure 4B in manuscript)
](./svg/stop_glucose.svg){width=2.84in}

We have also edited the corresponding discussion:

> A likely explanation is that NMD, which requires only a few rounds of translation, experiences a less drastic inhibition during glucose depletion than collision-driven mRNA decay, a decay process requiring high translation initiation rate.

\done{2.2. One of the main conclusions is that codon pair have a largely additive effect which explains the stability of endogenous mRNAs. This additive effect appear in conflict with their deep mutational scanning of FK repeats, where they find specific effects of codons in specific positions instead of additive effects. The explanation for these apparently conflicting findings (highlighted in the 2nd and 3rd to the last sentence of the abstract) is not clear to me and requires more discussion.}

Our codon pair library captures the effect of both codon identity and amino acid identity on mRNA stability.
As noted in our response to Reviewer 1 (1.2. above), the differential correlation with CSC and AASC suggest that the codon-driven effects are additive while the amino acid-driven effects require clustering of specific amino acids in the nascent peptide. 
Since such amino acid clusters are unlikely to occur in randomly chosen endogenous mRNA fragments, the additive effects of codons are more relevant to our endogenous fragment library than the sequence-specific effects of amino acids. 
This observation is also consistent with the lack of appreciable effect of *HEL2* deletion on the endogenous fragment library. 
We have clarified this point in the manuscript:

> We next integrated the endogenous fragment library into *hel2∆* cells and tested how Hel2-dependent RQC affects the relationship between CSC values calculated from the codon pair and the endogenous fragment libraries.
> We found that *hel2∆* cells still exhibited a significant correlation (r=0.49, p<1e-4) between the two libraries, though to a lesser extent than in wild-type cells (Fig. [6](#figure-6)D).
> This is consistent with the differences in mRNA stability of endogenous sequences arising from the additive effects of codons rather than from RQC occurring at specific amino acid sequences.


## Referee: 3

### Comments for the Authors

\done{In this study, the Subramaniam group used a massively parallel reporter assay to investigate the role of tandem codon pairs on mRNA stability in yeast. The authors identified several codon pairs that destabilize mRNAs, including known ones such as the inhibitory CGA pair. They then went on to assess whether translation is responsible for the observed destabilization of mRNAs harboring these codon pairs. In particular, reading-frame analysis as well as translation inhibition suggest that indeed these reporters are destabilized because of their effect on translation. To examine whether mRNA decay of these reporters is mediated by ribosome-quality control, the authors deleted the key RQC factor Hel2 and found it to stabilize most of the motifs-containing reporters suggesting that they induce ribosome collision. The authors then concluded that several factors including the charge and bulkiness of the amino acids contribute to mRNA stability in yeast.}

\done{3.1. Overall, the paper was well presented and clearly written. The experiments appear of high quality and properly interpreted. But while I recognize the power of massively parallel reporter assays, it was not clear to me how this paper differs from other studies that used different reporter system to identify several of the motifs identified here. For example, the Grayhack and Fields groups used their own reporter system to identify several codon pairs, including the famous CGA-CGA one. I recognize that the authors here examined mRNA levels and used tandem codon pairs, whereas previous studies assessed protein production without using tandem repeats. However, in both cases the same pairs (such as Arg-Ile, Arg-Pro..etc.). It would have been nice if the authors compared their findings to these previous ones and make their case that their approach was more encompassing. Moreover, and as important, the authors did not attempt to examine the basis for the inhibition of the translation by the identified motifs. In the study by Grayhack and Fields, for example, it was found that wobble pairing is an important determinant for the inhibitory effect of several codon pairs. At the end, I was a little surprised that the authors appear to neglect a large body of work that used similar strategy to identify codon motifs that inhibit translation. In my opinion, they missed a great opportunity to compare and contrast their results to others, assuming that they identified novel sequences that were not known earlier.  }

We thank the reviewer for recognizing the clarity of our presentation and the power of the assay.
As mentioned by the reviewer, the Grayhack and Fields groups[@Gamble2016] used a randomized 12nt library to identify codon pairs impacting protein levels, while we use a 48nt codon pair repeat to identify sequence features impacting mRNA levels.
Gamble et al. identified a role for codon pair order in translation inhibition, which we cannot study in our tandem repeat design.
Conversely, we identify sequences triggering ribosome-associated mRNA quality control, which was not the focus of Gamble et al.
Nevertheless, we agree with the reviewer that a comparison of our results with those of Gamble et al. would be useful for the reader, and hence we have included a supplementary figure as well as the following in our discussion.

> Gamble et al., 2016, found that several codon pairs for Arg with Ile and Leu are likely destabilized due to codon rarity and the requirement of some of these codons to be wobble decoded[@Gamble2016].
> Of the 17 codon pairs that inhibited translation in Gamble et al., 2016, we were able to reliably measure mRNA levels of 13 codon pairs, of which 12 are in the lowest quartile of mRNA levels in our assay (Fig. [S6](#figure-s6)A).
> This is consistent with ribosome stalling at these codon pairs triggering mRNA decay when the codon pairs occur in a cluster[@Brule2017].

![
**Figure R3**: (Supplementary Figure 6 in manuscript)
](../maintext/svg/supp_fig6.svg){width=3.94in}

## Referee: 4

### Comments for the Authors

\done{"Translation drives mRNA quality control" is a major theme in post-transcriptional regulation research over the last couple of decades, highlighted by the discovery of ribosome quality control that senses collided ribosome pairs (i.e. disomes). The current manuscript addresses the question of which amino acid sequences trigger co-translational mRNA decay, using budding yeast as a model system. The manuscript presents an elegant series of massively parallel reporter assays to dissect the sequence determinants of co-translational mRNA decay at the level of codons and amino acids. The manuscript identifies "mRNA-destabilizing dipeptide motifs including combinations of bulky and positively charged residues, as well as proline-glycine and proline-aspartic acid dipeptide repeats".  The large-scale analysis of 1000s of sequence determinants of translation-couple RNA decay here complements the growing evidence from structural biology about mechanisms of stalling of ribosomes on individual sequences. Thus, this manuscript is an important contribution to the field.}

\done{The manuscript is well written and technically excellent, to the extent that it will be used as a model for future studies. The library design and methodology seem thorough and generally correct, and the authors used several different methods to confirm that observed effects are related to translation. The major assay is to quantify RNA abundance compared to DNA abundance in the library. The design is clever and thorough, including all codon pairs in eight-fold repeats to generate strong effects, and incorporating internal replication from swapping the order of codon pairs. Another layer of internal replication comes from multiple random barcodes associated with each codon pair. Key results from the library are replicated in individual constructs. Careful analysis of read frame is used to separate translation-dependent effects from other effects that depend on sequence composition. The experiment is taken in different directions, where growing in glucose deprivation relieves translation stalls and deletion of the RQC factor Hel2 relieves RQC-associated mRNA decay. After the codon pair assay, one other massively parallel reporter quantifies mutations to (FK)8 and then another massively parallel reporter assay uses stretches from native budding yeast mRNAs that are sample from a range of expression values. The experimental methods are described in detail, to the point where they could be used as a resource for similar experiments. Limitations of the assay are clearly discussed, for example the absence of many GC-rich codon pairs encoding hydrophobic amino acids. The data sharing is exemplary. The code used to analyse the data seems well documented and is organised in a way that should make it easy to replicate the analysis, although we did not try to run it.}

\done{If anything, this manuscript undersells itself, by saying "we use a massively parallel reporter assay" when they use several. The new knowledge gained here will be of use to researchers trying to investigate ribosome quality control and mRNA decay from multiple angles, for example in scoring RNA decay from native sequences or in designing sequences to stall ribosomes. The work presented here complements the authors' previous related work in mammalian cells. The results quantify with known stalling sequences more precisely while also expanding what's known. As the discussion emphasizes, there is more to co-translational RNA decay than "optimal codons". The manuscript summarizes its relation to previous literature well, saying "our deep mutational scanning results with a simple (FK)8 repeat recapitulate and generalize the biochemical requirements for ribosome stalling and quality control observed with endogenous stall sequences." Then, "The results ... suggest that a wider diversity of mRNA sequences impact mRNA stability than previously appreciated." It's thorough and thoughtful work.}

We thank the reviewer for recognizing the robustness of our assay and analyses, and for recognizing the applicability of these methods for future studies.

### Minor comments.

\done{4.1. While the paragraph "Deep mutational scanning identifies critical residues mediating mRNA destabilization by dipeptide motifs" partially explores how the length of repeats and surrounding codons impact the mRNA stability, it doesn't exhaust it. An experiment verifying some of the findings in a few different dipeptide repeats would be helpful for understanding the general biological relevance of identified motifs. Or, the authors could discuss these limitations of their assay.}

We have added the following to our discussion of our deep mutational scanning results:

> Nevertheless, our mutational scanning results with the single (FK)~8~ repeat are insufficient to decipher the mRNA-destabilizing effects of other dipeptides such as (PG)~8~ and (PD)~8~ identified in our assay or endogenous stalling sequences with critical role for proline rather than positively charged amino acids[@Tanner2009;@Cao1995;@Bottorff2022].


\done{4.2. A supplementary figure summarising the impact of barcodes on mRNA levels for individual codon pairs or a supplementary table showing the numbers would be helpful. This is already shown in figure 3C for several amino acid pairs, but not for codon pairs. And from this figure we see that the variance can already be quite big, e.g. for "AL" - so it would be interesting to see how it impacts the whole library.}

We have included a supplementary file that includes a table of all codon pairs measured in this study in wild-type, *hel2∆*, and *syh1∆* cells and their resultant median-normalized mRNA levels (log2, arb. units) and standard deviations across barcodes.
We feel a comprehensive table rather than a summary figure makes our data more immediately and conveniently accessible to readers who want to find a specific codon pair of interest.

[**Supplementary file**](./svg/supplementary_table.csv)

\done{4.3. In figure 3 a panel (or a supplementary figure) summarising how all three methods used for verifying that the destabilisation requires translation are in agreement would be helpful.}

We thank the reviewer for the suggestion.
We have added a supplementary figure to summarize the effects of the three conditions on all the dipeptides that we reliably identified as destabilizing in our assay.
We have also added the following to the results:

> Overall, for the set of 19 dipeptides that we reliably identified as destabilizing in our assay, we found that 15 of them showed rescued mRNA levels with all three methods (Fig. [S3](#figure-s3)A).
> Thus, our computational and experimental frameshifting assays, along with our glucose depletion experiment, establish the translation dependence of the mRNA effects of most of the destabilizing dipeptide repeats identified in our original screen.

![
**Figure R4**: (Supplementary Figure 3A in manuscript)
](./svg/summary_translation.svg){width=3.5in}


\done{4.4. In the data analysis repository, more explicit description of the contents of each folder in a README file would help for navigation and re-use.}

We thank the reviewer for the suggestion.
We have added the following table to our repository's README and included descriptive links to the subfolders for each of the analyses  .


| Figure panels        | Experiment                                                                                           | Script                                                                                    |
| -------------------- | ---------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| 1B, 1C, 1D, 1E, 1F   | Barcode seq of wild-type cells with codon pair library                                               | \url{barcodeseq/wt_mrna_grna/scripts/plot_aggregate_effects.ipynb}                   |
| 2A, 2B, S1D          | Barcode seq of wild-type cells with codon pair library                                               | \url{analysis/barcodeseq/wt_mrna_grna/scripts/plot_dipeptide_effects.ipynb}                   |
| 2C, 2D               | Flow cytometry of wild-type cells with individual codon pair inserts                                 | \url{analysis/flow_cytometry/scripts/plot_figure2_flow.ipynb}                                 |
| 3A                   | Barcode seq of wild-type cells with codon pair library computationally frameshifted                  | \url{analysis/barcodeseq/wt_hel2_no_glucose_mrna_grna/scripts/plot_translation_effects.ipynb} |
| 3B, 3C, S4B          | Barcode seq of wild-type cells with codon pair library during glucose depletion                      | \url{analysis/barcodeseq/wt_hel2_no_glucose_mrna_grna/scripts/plot_translation_effects.ipynb} |
| 3E, 3F               | Barcode seq of wild-type cells with -1 frameshifted codon pair library                               | \url{analysis/barcodeseq/wt_hel2_no_glucose_mrna_grna/scripts/plot_translation_effects.ipynb} |
| 4C, 4D, 4E, S3C, S6A | Barcode seq of *hel2∆* and *syh1∆* cells with codon pair library                                     | \url{analysis/barcodeseq/hel2_syh1_mrna_grna/scripts/plot_hel2_syh1_dipeptide_effects.ipynb}  |
| 5B, 5C, S5C          | Deep mutational scan of (FK)~8~ in wild-type and *hel2∆* cells                                       | \url{analysis/barcodeseq/wt_hel2_fk8_dms/scripts/plot_variant_effects.ipynb}                  |
| 6B, 6C, 6D           | Barcode seq of wild-type and *hel2∆* cells with endogenous fragments library                         | \url{analysis/barcodeseq/endo_frag_mrna_grna/scripts/plot_endogenous_frags.ipynb}             |
| S1A                  | Barcode seq of wild-type cells with codon pair library                                               | \url{analysis/barcodeseq/wt_mrna_grna/scripts/plot_supp_alignment_stats.ipynb}                |
| S1B, S1C, S1E        | Barcode seq of wild-type cells with codon pair library                                               | \url{analysis/barcodeseq/wt_mrna_grna/scripts/plot_supplemental_missing_data.ipynb}           |
| S2A, S2B             | Barcode seq of wild-type with codon pair or mini-pool libraries                                      | \url{analysis/barcodeseq/wt_mrna_grna/scripts/plot_supp_alignment_stats.ipynb}                |
| S2C, S2D, S2E        | Flow cytometry of wild-type and *hel2∆* cells with individual codon pair inserts                     | \url{analysis/barcodeseq/hel2_syh1_mrna_grna/scripts/plot_supp_aln_qc.ipynb}                  |
| S3A, S3B             | Summary of wild-type cells with codon pair library during all translation-related conditions         | \url{analysis/barcodeseq/wt_hel2_no_glucose_mrna_grna/scripts/plot_translation_effects.ipynb} |
| S4A                  | Wild-type, *hel2∆*, *syh1∆*, *hel2∆/syh1∆*, *cue2∆*, and *xrn1∆* cells with revision codon pair pool | \url{analysis/barcodeseq/small_8xdicodon_rqcdel_mrna_grna/scripts/plot_dicodon_effects.ipynb} |
| S5A, S5B             | Wild-type, *hel2∆*, and *upf1∆* cells with (FK)~8~ DMS library                                       | \url{analysis/barcodeseq/upf1_fk8_dms/scripts/plot_variant_effects_wt_hel2_upf1_reps.ipynb}   |


# References