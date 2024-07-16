## title
Thank you for the introduction and thank you everyone for being here today both in this room and on the zoom call. Today I will be talking about using massively parallel reporter assays to identify sequences that trigger ribosome-associated RNA quality control in yeast.
## central dogma
First I want to introduce a very fundamental cellular process that most people here, scientist or not, have probably heard of, and it's called the Central Dogma of molecular biology. This is the process wherein your genetic code, or DNA, is converted into a transcript or message called messenger RNA through a process called transcription, and then that messenger RNA is used to produce protein in a process is called RNA translation. 
Proteins are the macromolecules that carry out almost all of the functions of a cell, so it's vital for the cell to make sure that the correct protein is produced at the right time and in the right amounts, and because of that, every step of the central dogma is tightly regulated to control this expression.
In our lab, we're particularly interested in the last step of the central dogma, mRNA translation, and how this step is regulated to affect protein output.
## translation + decay -> protein
There are two predominant processes that affect the amount of protein produced from an mRNA transcript, and that's translation of the mRNA into protein but also the decay of that mRNA.
Every mRNA transcript must eventually be degraded at some point, this is the normal life cycle of an mRNA molecule, so how long-lived this transcript is or how quickly it's degraded also affects how much protein gets produced from it.
## mrna translation
Here is a very simplifed schematic of an mRNA molecule being translated into protein by a ribosome: the ribosome scans the mRNA molecule until it finds the start codon at the beginning of the coding sequence, then moves along the coding sequence incorporating aminoacyl tRNAs (e.g. amino acids) as it elongates the nascent peptide, and finally when it reaches the stop codon it releases the completed peptide and then the ribosome is recycled.
## regulation by UTRs
The regulation of mRNA translation is often credited to the 5' and 3' UTRs of an mRNA molecule. The 5'UTR contains various features that mediate translation initiation which controls the rate of translation, while the 3'UTR mediates mRNA decay through deadenylation of the polyA tail, which is the signal for bulk mRNA decay.
## CDS also regulates
However, the coding sequence itself can also regulate protein levels by modulating either the mRNA decay rate or translation initiation rate.
## ribo collisions
How this happens mechanistically is that ribosomes can either slow down or get stuck and collide on difficult-to-translate sequences as it translates through the CDS. 
These slowed down or collided translating ribosomes are essentially signals that trigger the need for mRNA decay or inhibition of translation initiation on the aberrant transcript, and this can occur through multiple different pathways.
## RQC
One pathway I'll highlight today is largely regulated by an E3 ubiquitin ligase called Hel2 (ZNF598 in humans). Hel2 is recruited to collided ribosomes and ubiquitinates the collision interface between small ribosomal subunits. 
There is also some evidence that another factor called Syh1 can play a role, but it's mechanism and function are both not well defined.
Another pathway that mediates RNA decay is initiated when Not5, which is a subunit of the Ccr4-Not deadenylase complex, senses slowed down ribosomes that haven't necessarily collided yet.
## degradation of everything
In either case, the sensing of these slowed or collided ribosomes recruits more regulatory factors to the site that ultimately degrade the stall-inducing mRNA and incomplete nascent peptide.
## RQC and COMD
The decay pathway initiated by Hel2 (and perhaps Syh1) is known as ribosome-associated quality control (RQC), and the pathway initiated by Not5 is known as codon optimality mediated decay (COMD).
## known RQC sequences
As far as what sequences cause ribosome slowdown and collisions that then trigger quality control and RNA decay, we know that nonoptimal codons, which are codons where the cognate tRNA is in low abundance in the cell, trigger Not5-driven codon optimality mediated decay.
Other sequences like polytryptophans, polybasic sequences and rare codons trigger Hel2-driven RQC. 
Polytryptophans are thought to sterically block the restriction site in the ribosome exit tunnel, polybasic sequences like polylysines and polyarginines are thought to have inhibitory electrostatic interactions with the negatively-charged ribosomal exit tunnel, and rare codons (CGA/CGG) require inefficient I-A wobble base pairing during decoding and that stalls the ribosome a lot. 
The major question we've been interested in is what other mRNA sequences beyond these trigger quality control in yeast?
## screen
In order to better understand the full diversity of mRNA sequences that trigger RNA decay in yeast, we employed a codon pair screen as shown here. We used a reporter comprised of a common gene PGK1 followed by a codon pair insert, which is one pair of codons repeated 8 times, and we repeat it 8 times just to ensure that we can see or measure the effect of that pair. This repeat insert is followed by a 24nt barcode and then the rest of the CDS is YFP. 
Our library is comprised of all 4096 possible codon pairs. Each codon pair repeat insert is represented by at least 20 unique barcodes, and we establish that linkage by deep-sequencing the plasmid library first. We integrate this plasmid library into the yeast genome, then deep-sequence the barcodes in both mRNA and gDNA. Normalizing these barcode counts to each other yields a metric for how destabilizing each codon pair insert is, or in other words, how does each codon pair affect mRNA levels.
## full data
The full data we get from the screen is shown here, where the codon in the first position of the pair is on the x axis and the codon in the second position of the pair is on the y axis, and the resultant mRNA level of each pair is color-coded. The codons are grouped by the amino acids they encode.
Deeper red is lower mRNA level and deeper blue is higher mRNA level with respect to the median, so they are all relative measurements.
This is a lot of data to go through, but I hope that at this level you can appreciate that there are some noticeable patterns with respect to stability of codon groups. 
First I'm going to show some checks and validation experiments that we did before getting into some of the interesting new sequences that we found.
## comparison with published methods
The first thing we wanted to do was to compare our assay's derived metrics for mRNA stability with previously published methods and with the sequences in yeast that are already known cause RNA decay.
These are the aggregate effects of each codon on mRNA level, that's just the average of the mRNA levels whether the codon is in the first position or the second position of the insert. 
It's not important to actually see what each codon is at this point, but what we wanted to confirm was that the codon's effects are consistent between positions, and we do see that across the board there are no codons that have divergent effects based on whether they're in the first or second position of the repeat insert.
Then if we zoom in to the most destabilizing codons on average in our screen, we can see that our results agree really well with the known sequences that cause RNA decay that I mentioned before: the rare codons CGA/CGG are most destabilizing on average, Tryptophans, Lysines and arginine codons are all destabilizing, and then some really nonoptimal codons ATA and GTA, along with Stop codons that trigger NMD, all of this is consistent with the literature.
## CSC 
We also see that there is good agreement between our assay's aggregate mRNA level measurements per codon with published metrics for codon stability.
Here I'm showing a comparison between our average codon mRNA levels against codon stability coefficients which are derived from transcriptome half life measurements, and we find that we have pretty good codon stability agreement.
## comparison aa
Similarly, if we look at the aggregate effects on mRNA stability averaged at the amino acid level, we also see that the most destabilized amino acids on average in our assay agree with what's known to cause mRNA decay in yeast, which is that arginines, tryptophans, and lysines, are the most destabilizing on average. And we also again see Stop codons due to NMD.
## most destabilized dipeptides
After confirming that our effects corroborate previous studies in yeast, we decided to look more closely at the most destabilized pairs.
Plotted on the left is the average mRNA level for each amino acid pair, with the amino acid in the first position on the x axis and the amino acid in the second position of the pair on the y axis, and the resultant mRNA level coded in color.
We pulled out on the right, the dipeptides with the lowest mRNA levels in our assay compared to the median value (zero).
We can see that many of these dipeptides are what we would expect to see (polylysines, polyarginines, polybasic sequences, and polytryptophan) because these are all known to cause RQC in yeast.
The rest are all dipeptides that have not been previously identified to have an effect on mRNA levels in yeast (KW, RW, FK, PG, PD pairs). 
Overall, our assay pulls out all the known stalling sequences as well as a set of novel destabilizing sequences.
## translation dependent
We were next interested in determining if the mRNA effects we observe for these pairs are actually dependent on translation and not transcription or underlying nucleotide sequence.
One way we assayed for this was by doing a glucose depletion experiment.
Glucose deprivation is known to shut off translation initation, and we find that when we do this the mRNA levels are restored for the known RQC substrates (polybasic sequences, polytryptophans), and for most of the novel destabilizing dipeptides.
## frameshift
To confirm that the effects we observe are not due to underlying sequence content, we also did a frameshifted screen.
The frameshifted screen is identical to the original, except that we delete two bases from the coding sequence upstream of the insert, and that shifts the insert out of frame while keeping all the sequences identical, and then we measured mRNA levels as before.
We find that for the set of destabilized dipeptides, shifting the insert out of frame restores mRNA levels, meaning the effects we observe are not due to underlying features of the nucleotide sequence.
## conclusions so far
## known sequences and regulatory pathways
Coming back to this slide describing the known sequences that trigger the need for quality control and then the quality control pathways that respond to them, we now know from our screen that there are actually a lot more sequences that may be under this type of surveillance than we previously understood. 
So our next question was - which of these regulatory pathways regulates the RNA decay of these novel destabilizing sequences?
## hel2-del full lib
We put the same 4096 codon pair library into Hel2-deleted and Syh1-deleted yeast and performed large-scale deep-sequencing as before.
Not5-deleted yeast cells turn out to have a major growth defect so we weren't able to do this large-scale screen on them, but we're doing some small-scale Not5 related revision experiments that I won't go into for this talk.
We measure the mRNA levels of each codon pair exactly as before, and any sequences that are regulated by either Hel2 or Syh1 should see their mRNA levels restored or increased when that factor is deleted.
## average dipeptide mRNA levels
Here are the mRNA levels for all dipeptides in the screen with the deletion strain on the y axis compared against the WT cells on the x axis. You can see that dipeptide mRNA levels for syh1-deleted cells correlate really well with those in WT cells, and there are no dipeptides that exist off-residual.
Whereas in hel2-deleted cells, there is still very good correlation between dipeptide levels and the majority of values agree with each other, but there is a set of dipeptides that are off-residual so that means they are restored in hel2-deleted cells.
## most rescued
Here again are the mRNA levels of the most destabilized dipeptides in WT cells overlayed with their mRNA levels in deletion cells. The set of dipeptides that were off-residual in Hel2-deleted cells are the top 14 dipeptides here, and it appears the RI/RL/AL dipeptides are not regulated by Hel2.
## known sequences
The dipeptides that are destabilized through Hel2 include the known targets, which are the polybasic sequences and polytryptophan.
That leaves WK, FK, RW, PD, and PG repeats that are destabilizing in WT cells and regulated by Hel2.
## posbulky
We became interested in this particular pattern that a number of those dipeptides have, which is that they are comprised of positively charged residues with large and bulky residues.
## human cells
One of the reasons why we were so interested in this pattern is because a former member of the lab, Phil Burke, had done an analogous codon pair screen in human cells, and one of the main things he found was that combinations of bulky and positively charged dipeptides were destabilizing in human cells.
He went on in his paper to describe that there may be a structural reason for this related to peptide folding.
We were interested in seeing if we could build on this understanding.
## conclusions so far
Just to summarize what we've found so far:
We first found that the putative RQC factor Syh1 on its own does not appear to regulate the destabilization of any dipeptide sequences in our screen. 
We found a set of novel destabilizing sequences that are regulated by Hel2 and a subset, RI/RL, that are not regulated by either Hel2 or Syh1.
## conclusions so far
We know from Phil's paper that positively charged and bulky dipeptides are also destabilizing in human cells.
## how
Our next question was - how do positively charged and bulky sequences stall ribosomes to trigger the Hel2-driven quality control that we've been observing?
## DMS design
So to understand what the mechanism of stalling is for positively charged and bulky dipeptide repeats, we decided to do a deep mutational scan of the FK repeat dipeptide.
The library is comprised of all the single-codon variants at each of the 16 total positions of the FK dipeptide repeat, so each location is mutated to all possible codons, and I'm just showing what that looks like for the variants at the first three positions out of 16 here. 
Conceptually, any mutation that relieves the stall or removes the stalling capacity of FK8 will result in increased mRNA levels at that position.
We integrated this library into WT and Hel2-del yeast and deep-sequenced the libaries as before.
## DMS results 
These are our results from the deep mutational scan. The location of the mutation is noted on the x axis, so the FK dipeptide repeated 8x is 16 locations. The amino acid that each location is mutated to is shown on the y axis, and the original FK dipeptide (or the WT) is marked by these black x. 
The WT strain is on the left and hel2-deleted strain is on the right.
Basically a deeper red means that the mutation destabilizing, while white means it relieves the stall. 
On the hel2-deleted side, the information we can get from this heat map is basically just that hel2 deletion restores mRNA levels compared to WT cells at every location.
Now I'm going to walk through some of the main conclusions we make from this experiment in terms of how FK repeats stall ribosomes in WT cells.
## first 6
The first observation is that mRNA levels for nearly all mutations from positions 1 to 6 are as low as the wild-type sequence, with the exception being proline.
In these first 6 positions, we see that proline is the only mutation that consistently rescues mRNA levels, which makes sense because proline is known to limit the conformational flexibility of nascent peptides.
## 10 residues schematics
We believe that this is consistent with 10 residues of FK being the minimum sequence to stall ribosomes, which I'm demonstrating in this schematic here.
If the mutation occurs in any of the first 6 positions, there will always be 10 residues that are unperturbed and able to trigger stalling.
## NMD
Another thing we noticed was that mRNA levels increase sharply when stop codons are present at positions 11 through 16.
## nmd schematic
Since translation of premature stop codons will trigger mRNA decay through the RQC-independent NMD pathway, these results further suggest that a minimum of 10 residues of the FK dipeptide needs to be translated in order to trigger Hel2-driven RQC over NMD when the (FK)8 variants contain a stop codon.
So that is being demonstrated here, where if the nonsense mutation (stop codon) is anywhere in the first 10 locations, then you would signal NMD first.
Whereas if the nonsense mutation/stop codon is anywhere after the first 10 residues, then you would signal RQC first.
## posbulky 12/14
We notice that at these internal sites, we can see various observations that involve charge and bulkiness.
First, location 12 (and to a lesser extent location 14) within (FK)8 are the sole positions that require positively charged Arg or Lys to trigger Hel2-dependent RQC.
## posbulky wt is pos
Next, if we look at some of these internal locations where the original amino acid is positively charged mutation to the bulkiest Trp residue can still trigger RQC, while mutations to other aromatic amino acids (Phe and Tyr) are insufficient.
## posbulky wt is bulky
Conversely, at some locations where the original amino acid is bulky mutating to the bulkier Trp or to positively charged Arg or Lys maintains RQC.
## posbulky 7
Finally, at position 7, where the original amino acid is Phe, mutations to other aromatic amino acids (Trp or Tyr) or to a negatively charged residue (Glu or Asp) triggers RQC, while mutating to positive charge is insufficient.
## Sdd1
Interestingly, these results exhibit several similarities to the composite biochemical requirements for ribosome stalling observed at the only known endogenous RQC substrate in yeast, which resides in a gene of unknown function called Sdd1.
On the left is a summary figure of our observations from the DMS, where we identified several location-specific residue types that appear to be required for ribosome stalling.
On the right is a summary figure from a paper by Matsuo et al in 2020, where they did cryoEM in combination with alanine scanning and western blots to determine the residues that are required for triggering RQC for the Sdd1 endogenous stalling sequence.
They found there's a requirement for positive charge at positions 207 and 209, requirement for aromatic residues at position 201, a requirement for aspartate at position 200, and a requirement for FF at the constriction site.
We found these similarities really interesting, in particular the requisite positive charges near the peptidyl transferase center in either case as well as the requirement for negative charge at a very specific single location, and then bulkiness and aromaticity at various points further along the tunnel in either case.
## endogenous
So speaking of endogenous sequences that trigger quality control, I mentioned that very little is known about what causes RQC endogenously.
As I said, the stalling sequence in Sdd1 is currently the only known sequence that triggers Hel2-mediated RQC endogenously in yeast.
So, the last thing we did was to see if our codon pair assay could yield any information with regards to endogenous yeast genes.
To this end, we assayed 1900 fragments, each 48 nucleotides long, from endogenous mRNAs spanning a wide range of expression levels (derived from publically available ribosome profiling data) using the same reporter design as the codon pair library.
We integrated this endogenous fragment library into wild-type cells and counted barcodes by high throughput barcode sequencing as before.
We found that, compared to the codon pair library, mRNA levels in the endogenous fragment library were more tightly distributed around the median, indicating that endogenous sequences experience milder effects in terms of RNA decay.
## endogenous CSC
We next calculated the codon stability coefficient (CSC) values for each of the 64 codons using mRNA levels either from the codon pair library or the endogenous fragment library.
The codon stability coefficient is the Pearson correlation coefficient between codon frequency and mRNA level.
We found strong correlation (r=0.67, p<1e-8) between the two libraries, indicating that mRNA effects of codon pair repeats can predict mRNA effects of endogenous sequence motifs in wild-type cells.
## endogenous hel2-del CSC
We also integrated the endogenous fragment library into hel2△ cells and tested how Hel2 deletion affects this relationship.
We found that hel2△ cells still exhibited a significant correlation (r=0.49, p<1e-4) between the two libraries, though to a lesser extent than in wild-type cells, which is again consistent with the majority of endogenous sequences not triggering prolonged ribosome collisions and not being mediated by Hel2.
## final conclusion
Finally, I just want to summarize the landscape of ribosome stalling sequences and quality control as we understand it now.
First, I think we've shown that a much wider diversity of mRNA sequences impact mRNA stability and trigger quality control than we previously appreciated.
A subset of the novel destabilizing sequences we found are positively charged and bulky sequences, which our lab's previous paper has shown to be also destabilizing in human cells.
For these, we showed that a complex combination of charge, sterics, and aromaticity are causing ribosome stalling that triggers RQC.
Finally, in terms of the notoriously tricky task of finding endogenous sequences that trigger RQC, we find that our codon pair assay can predict mRNA levels of endogenous sequences.
We also find that endogenous sequences appear not to trigger as much RNA decay or Hel2-driven RQC.
This is consistent with the field's current understanding of endogenous RNA quality control, which is that under normal physiological circumstances most sequences do not impose such harsh ribosome stalls that that they need to be actively degraded by RQC machinery. 
So, it stands to reason that perhaps some stressors or deletion of multiple RQC factors at once may reveal this regulation, and we could explore that more down the road using this assay.
## thanks
With that, I just want to thank my lab, the Subramaniam lab, especially Rasi, Heungwon and Phil, who were absolutely integral to the completion of this project.
I'll shout out some more folks in the next section.
I also want to shout out Dolores and the Genomics core for helping us out so much with all of the sequencing, this project quite literally wouldn't exist without them.
Thank you to Luna, our department's IT specialist, for all your support in everything big and small.
A huge thank you to my committee, I just remember every meeting we had I would walk out feeling really encouraged and excited to keep going, so thank you for your encouragement and support. And especially thank you to my reading committee for reading my thesis and giving me such thoughtful comments.
Finally, thank you to the MCB admin for looking out for us all this time and making this process a lot easier than it would have been.
Thank you all for your attention and I'll take any questions.