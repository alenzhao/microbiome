### Inter-individual homogeneity (within group of samples)

`{r heterogeneity-example2b, message=FALSE} ## Add time field (two time points needed within each group for the  ## intraindividual method) #sample_data(x)$time <- sample_data(x)$timepoint.within.group #res <- group_diversity(x, "interindividual") #`
==========================================================================================================================================================================================================================================================

Visualize
=========

`{r homogeneity-example2d, message=FALSE} #library(ggplot2) #theme_set(theme_bw(20)) #p <- ggplot(res$data, aes(x = group, y = correlation)) + #       geom_boxplot() + #       ggtitle(paste("Inter-individual homogeneity (p=", round(res$p.value, 6),# ")", sep = "")) + #       ylab("Correlation") #print(p) #`
====================================================================================================================================================================================================================================================================================================================

Pick the OTU data
=================

(note the zero point has been moved to the detection;
=====================================================

typically signal 1.8 at HITChip log10 scale)
============================================

otu &lt;- abundances(pseq)
==========================

Determine detection at the 0.15 quantile
========================================

Then Calculate richness.
========================

This simply indicates how many taxa are present in each sample
==============================================================

(exceed the detection). This measure is sometimes used with
===========================================================

phylogenetic microarrays.
=========================

detection &lt;- quantile(otu, 0.15)
===================================

Repel overlapping labels
========================

See <https://github.com/slowkow/ggrepel/blob/master/vignettes/ggrepel.md>
=========================================================================

library(ggrepel) \# devtools::install\_github("slowkow/ggrepel")
================================================================

p &lt;- p + geom\_text\_repel(size = 3)
=======================================
