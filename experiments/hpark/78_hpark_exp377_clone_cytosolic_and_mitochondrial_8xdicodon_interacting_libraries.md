---
## Title: Exp377 Clone cytosolic and mitochondrial 8x dicodon integrating libraries

Date: "2021-07-22"
----

# Goal
Clone cytosolic and mitochondrial 8x dicodon integrating libraries #78

# Issue
Clone cytosolic and mitochondrial 8x dicodon integrating libraries [#78](https://github.com/rasilab/rqc_aggregation_aging/issues/78)

# Background
Essentially finish what Heungwon started in exp277 (correcting e265/267).

# Solution
Generate single-barcode yeast-integrating cytosolic/mitochondrial 8x-dicodon libraries.

# Strategy
## PCR amplify the 8x dicodon region from oAS385 template with a flanking 24nt barcode and R1 homology sequence

| Primer | Dir | Sequence                                                     | Tm  | Desc                                        |
| ------ | --- | ------------------------------------------------------------ | --- | ------------------------------------------- |
| oKC97  | F   | GACGTCCCGGACTACGCG                                           | 62  | HA into 8x dicodon                          |
| oHP531 | R   | cacgacgctcttccgatctNNBNNBNNBNNBNNBNNBNNBNNBGAACAATTCTTCACCCT | 55  | R1 + 24ntbarc + oAS385 pool into 8x dicodon |

| ID   | Desc                     | template plasmid | F primer | Tm  | R primer | Tm  | amplicon size |
| ---- | ------------------------ | ---------------- | -------- | --- | -------- | --- | ------------- |
| PCR1 | HA_8xdicodon_24ntbarc_R1 | oAS385           | oKC97    | 62  | oHP531   | 55  | 133           |

## One-piece gibson: insert amplicon into integrating Su9/PGK1 backbone
- Cytosolic library:

| ID                  | gibson piece |
| ------------------- | ------------ |
| PCR1                | insert       |
| BamHI-cut-pHPSC1120 | backbone     |

- Mitochondrial library:

| ID                  | gibson piece |
| ------------------- | ------------ |
| PCR1                | insert       |
| BamHI-cut-pHPSC1131 | backbone     |

- high-efficiency e.coli transformation: want ~30 barcodes per insert * 6000 inserts = ~200,000 colonies minimum
- scrape/miniprep the two libraries


# Procedure
## Clone
### DONE [2021-07-22 Thu] Backbones
1. pHPSC1120-1 (8241 bp) and pHPHS1131-2 (8445) with BamHI
2. MM

| To make MM                   | Volume (µl) for 20 µl reaction | 2x   |
| ---------------------------- | ------------------------------ | ---- |
| Fast Digest FastDigest BamHI | 1.0                            | 2.0  |
| 10XFast Digest Green Buffer  | 2.0                            | 4.0  |
| dd H₂O                       | 8.0                            | 16.0 |
| plasmid:                     | 7 µl (~2 µg)                   | --   |

    - Divide MM 2x 13 ul then add 7ul of each plasmids.

3. Digest it at 37 ℃  water bath for overnight.
4. Run the samples in 1.2 % gel at 150V for 20 minutes
 
   <img src="./img/.png" width=240px>

5. Results: 


### DONE [2021-07-26 Mon] PCR library inserts

1. Primers

| Primer | Dir | Sequence                                                     | Tm  | Desc                                        |
| ------ | --- | ------------------------------------------------------------ | --- | ------------------------------------------- |
| oKC97  | F   | GACGTCCCGGACTACGCG                                           | 62  | HA into 8x dicodon                          |
| oHP531 | R   | cacgacgctcttccgatctNNBNNBNNBNNBNNBNNBNNBNNBGAACAATTCTTCACCCT | 55  | R1 + 24ntbarc + oAS385 pool into 8x dicodon |

2. Template

| template | description         |
| -------- | ------------------- |
| oAS385   | scprimers_oligopool |

3. Insert for double rrm KO


| sample | Forward primer | Reverser primer | Template | Length | Description              |
| ------ | -------------- | --------------- | -------- | ------ | ------------------------ |
| 377LP1 | oKC97          | oHP531          | oAS385   | 133 bp | HA_8xdicodon_24ntbarc_R1 |

4. Master mix

| Reagent              | Volume/rxn | 2x MM |
| -------------------- | ---------- | ----- |
| Phusion Flash MM     | 10 ul      | 20    |
| oKC97 (10uM)         | 1 ul       | 2.0   |
| oHP532 (10uM)        | 1 ul       | 2.0   |
| 1:10 oAS385 (0.05uM) | 1 ul       | 2.0   |
| H2O                  | 7 ul       | 14.0  |

Divide MM into 2x 20 µl.

5. PCR condition.

| Step                   | Temp | Time        |
| ---------------------- | ---- | ----------- |
| Initial Denaturation   | 98°C | 120 seconds |
| 13 Cycles Denaturation | 98°C | 10 seconds  |
| 13 Cycles Annealing    | 55°C | 10 seconds  |
| 13 Cycles              | 72°C | 5 seconds   |
| Final Extension        | 72°C | 5 minutes   |


- 11/14 cycles
- Take out samples after 11 cycles and keep them on ice until 14 cycle ends.
- Run PCR.
- Run 1.2 % gel at 150V for 20 minutes:
- Results: Very dimm 14 cycle band.
- Note: Repeat this with 17/20 cycles.
- Run 1.2 % gel at 150V for 20 minutes:
- Clean 14/17/20 cycles samples with small columns and elute them in 12 ul of RN-H2O:
  - 377P1_14cycles: 1.4 ng/ul
  - 377P1_17cycles: 5.2 ng/ul
  - 377P1_20cycles: 8.6 ng/ul









### TODO [2021-07-29 Thu] Gibson: Large amount of DNA and clean gibson Products by using a confirmed big column
1. Backbone and inserts

| sample | plasmid     | enzymes | size    | Conc. (ng/µl) | Gibson Volume |
| ------ | ----------- | ------- | ------- | ------------- | ------------- |
| 377BB1 | pHPSC1120-1 | BamHI   | 8241 bp | 81 ng/ul      | 10 ul         |
| 377BB2 | pHPHS1131-2 | BamHI   | 8445 bp | 95 ng/ul      | 10 ul         |
| 377LP1 |             |         | 133 bp  | 5.2 ng/ul     | 5 ul          |

2. Gibson samples

| Sample ID | BB             | Insert 1       | Description    | H2O  | Gibson MM | Reaction V | selection |
| --------- | -------------- | -------------- | -------------- | ---- | --------- | ---------- | --------- |
| 377G1     | 377BB1 (10 µl) | 377LP1 (15 µl) | 2 piece Gibson | 0 µl | 30 µl     | 2x 22.5 µl | Carb      |
| 377G2     | 377BB2 (10 µl) | 377LP1 (15 µl) | 2 piece Gibson | 0 µl | 30 µl     | 2x 22.5 µl | Carb      |

3. Perform Gibson for 60 minutes.
4. Cleaned sample by columns. Elute them in 20 µl of RN-H2O.
   - Use 10 µl of the cleand Gibson prodocts. 
   - If the first one works then repeat this with the remianed 10 ul cleaned Gibson product.
5. Electroporation: Use the 1:4 diluted commercial NEB10-β electrocompetent cells


### DONE [2021-07-29 Thu] Electroporation by using the commercial NEB10-β electro-competent cells.
1. Gibson sample: 377G1/2 cleaned by a big zymo 3 times then elute them in 21 µl of RN-H2O.  
2. Electroparation from 10 µl of cleaned Gibson products.
3. Electroporate the clean 10 µl of Gibson products into 50 µl of the commercial NEB10-β electro-competent cells (1:4 dilution) then recover it in 1000 µl of NEB10-β recovery medium.
   - Add 10 µl of gibson products into 50 µl of thawed electro-competent cells (1:1 diluted) then mix well by pipetting.
   - Run electroporation in 1.8kV: 5.6 (377G1) and 5.5 (377G2) ms.
4. Pre-warm 8x LB + Carb plates at 37 ℃. 
9. Do serial dilutions in 10/1000/10000 folds in 90 µl of LB in each tube.
10. So total plates are 2 for 1:1 and 2x 3 for the serial dilution (10/1000/10000 fold).
11. Incubate the plates ay 37 ℃ for overnight.
12. [2021-07-30 Fri] Results: 

| Sample ID | BB             | Insert 1       | Description    | selection | Estimated 1:1 number of colonies |
| --------- | -------------- | -------------- | -------------- | --------- | -------------------------------- |
| 377G1     | 377BB1 (10 µl) | 377LP1 (15 µl) | 2 piece Gibson | Carb      | ~5x 10^5                         |
| 377G1     | 377BB2 (10 µl) | 377LP1 (15 µl) | 2 piece Gibson | Carb      | ~5x 10^5                         |


### DONE [2021-07-30 Fri] Gycerol stocks and plasmid extraction
1. Resuspend whole colonies from 1:1 plate in 10ml of LB. 
2. Make 2x 1ml (300 ul of 50% glycerol and 700ul of cells) of glycerol stocks.
3. Using 2 midi columns, extract plamids
4. Elute them in 2x 500 µl.  
6. Label

| sample | plasmid   | E.coli     | description                              | parent      | est colonies |
| ------ | --------- | ---------- | ---------------------------------------- | ----------- | ------------ |
| 377G1  | pHPSC1142 | ecHPHS1142 | pGPD_PGK1_8xdicodon_24ntbarc_R1_eYFP     | pHPSC1120-1 | ~5x 10^5     |
| 377G2  | pHPSC1143 | ecHPHS1143 | pGPD_Su9_PGK1_8xdicodon_24ntbarc_R1_eYFP | pHPSC1131-2 | ~5x 10^5     |

7. Note: Concentrations are ~600ng/ul in ~400 ul.
8. I gave these to Katharine and she will use these plasmids for the yeast transformation.

