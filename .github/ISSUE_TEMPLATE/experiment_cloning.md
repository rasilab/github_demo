---
name: Cloning experiment
about: Use this issue to start a cloning experiment
title: ''
labels: experiment, todo
assignees: rasi

---

Estimated Start: YYYY-MM-DD

Estimated End: YYYY-MM-DD

<details> 
  <summary> 
    <b>Instructions</b> 
  </summary>
  
- Finish `Background` and `Strategy` below before you start an experiment. 
- Provide an estimated start date and end date above. Usually, the start wil be when you open this issue and end date will be when you expect to close this issue. You can revise these dates if necessary. 
- Keep revising and adding to this top comment area so that it captures all critical points about this issue. 
- Use comments below to discuss any changes or points that are unclear.
- Assign `Projects` and `Assignees` on the side as appropriate so that it shows up correctly on the `Experiments` Projects page. 
- Assign an existing or new label so that you can search for this experiment in the future.
- Delete all instruction placeholders below as you are writing.
- Write `Brief Conclusions` after you finish the experiment before closing the issue. 
- Go through the Checklist below before closing the issue.

</details>

<details> 
  <summary> 
    <b>Checklist before closing issue</b> 
  </summary>

- [ ] Are all plasmids, oligos, and cell lines in their correct location?
- [ ] Is the plasmid / cell line entered into our lab database?
- [ ] Is the plasmid map given appropriate name and moved to the `lab_database` folder on Snapgene?
- [ ] Is the plasmid map pushed to https://github.com/rasilab/snapgene_maps/?
- [ ] Is the lab notebook link up-to-date without any broken links to images?
- [ ] Are there any intermediate plates or reagents that need to be disposed off?
- [ ] Correct the assignee, change the label from `ongoing` to `successful`,`abandoned`,`paused`
- [ ] Remove from your Project Board and close this issue.
  
</details>

### Background 

Describe what let you to do this experiment. Your description should be understandable without reading further background. However link to issues containing previous experiments, analyses and external citations that will help someone who wants to dig into the details.
Propose in a few lines how you are trying to address the problem or question you describe in the background.

### Strategy

Outline the experimental strategy by filling the template below.
You can link to detailed planning notes in the Markdown document linked below that lists materials that need to be purchased and the detailed execution steps for this experiment.

**Backbone**: 
<!-- Provide a list of multiple backbones if necessary -->

**Backbone digestion enzymes**:
<!-- Pick an extra common enzyme that cuts between the insert cloning sites to avoid backbone re-ligation  -->
 - 
 - 

**Expected fragment size from backbone digestion**:

 - 
 -

**PCRs**:
<!-- Pick PCR templates that have a different resistance marker to avoid DpnI treatment-->

 | label | name | template | fwd primer | rev primer | length | Tm   | DpnI treatment |
 | :---- | :--- | :------- | :--------- | :--------- | :----- | :--- | :------------- |
 | P1    | xxxx | pASnnn   | oASnn      | oASnn      | nn bp  | nnC  | yes/no         |

**Gibson**:
<!-- Include a negative control that without one of the inserts -->

 | backbone | insert 1 | insert 2 | final size |
 | :------- | :------- | :------- | :--------- |
 | B1       | P1       | P2       | nnn bp     |

**Resistance marker**: Amp / Kan / Chl
<!-- Use this for selection plates -->

**Plasmid map of final construct**:
<!-- Link to .dna file in https://github.com/rasilab/snapgene_maps -->

**Cloning check enzymes**:
<!-- Use common enzymes https://github.com/rasilab/protocols_tutorials/issues/81 (also available as rasilab_preferred_enzymes in SnapGene) -->

**Map of restricted construct and parent vector**:
<!-- Export gel image after picking enzymes and maps in Snapgene -> Tools -> Simulate agarose gel -->

**Sanger sequencing primers**:
<!-- Should cover cloning junctions and entire inserts, should be separated by 700nt if same direction and 1500nt if facing each other. -->
 - oASnn
 - oASnn


### Experiment Links

Provide a link to the Markdown document that you pushed to the experiments/YOUR_USERNAME folder of this repository that is named as `YYYY-MM-DD_ExpNN_title-of-experiment.md`. Give the link text as `ExpNN title of experiment`. Check that this link works.

### Brief conclusion

Describe the conclusions here after performing the experiment. Provide links to follow up issues containing experiments or analyses. Close the issue after reaching consensus with everyone who was involved in the planning and execution of this experiment.
