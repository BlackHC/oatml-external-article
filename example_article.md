---
title: "BatchBALD"
description: |
  Efficient and Diverse Batch Acquisition for Deep Bayesian Active Learning
author:
  - Andreas Kirsch*
  - Joost van Amersfoort*
  - Yarin Gal
---

## Active Learning
<!-- TLDR why: active learning and BALD -->

<div>

Data efficiency is a key problem in deep learning. While excellent performance can be obtained using state-of-the-art architectures, they are often data-hungry.

Active Learning (AL) is a powerful technique to reduce this. Instead of collecting and labelling a large dataset, which comes at a significant expense, one iteratively acquires labels from an expert only for the most informative data points in the pool of available data points. After each such acquisition, the newly labelled data point is added to the training set and the deep learning model is retrained. The process is repeated until a suitable level of accuracy is achieved while trying to minimise the number of acquisitions.


The informativeness of unlabelled points is assessed by an acquisition function, such as BALD TK. BALD is based on mutual information from information theory and scores a data point based on how well it informs us about the model parameter distribution. This assumes a Bayesian setting where we have a distribution over the model parameters that gets updated as we train on new data. 

<!-- TLDR why: batches and individual points and topk -->

In practical AL applications, batches of data points are acquired during each acquisition step instead of individual data points in order to reduce the number of times the model is retrained and expert-time is requested.
</div>

```
mycaption <- "*Idealised acquisitions of * BALD *and* BatchBALD*.* If a dataset
		were to contain many (near) replicas for each data point, then BALD would select
		all replicas of a single informative data point at the expense of other
		informative data points, wasting data efficiency."
knitr::include_graphics("assets/acquisition_visualisation.svg")
```

In Gal et al [@gal2017deep], batch acquisition simply acquires the top *b* points
with the highest BALD acquisition score. However, this naive approach leads to acquiring points that are individually very informative, but not necessarily so jointly, and thus degrade performance.

In our ArXiv paper TK, we instead propose an extension of BALD that scores points jointly (BatchBALD) and is also grounded in information theory.

Our implementation is available on https://github.com/BlackHC/BatchBALD.

<div class="l-page">
```
mycaption <- "*Idealised acquisitions of * BALD *and* BatchBALD*.* If a dataset
		were to contain many (near) replicas for each data point, then BALD would select
		all replicas of a single informative data point at the expense of other
		informative data points, wasting data efficiency."
knitr::include_graphics("assets/acquisition_visualisation.svg", dpi=350)
```
```
mycaption <- "*Idealised acquisitions of * BALD *and* BatchBALD*.* If a dataset
		were to contain many (near) replicas for each data point, then BALD would select
		all replicas of a single informative data point at the expense of other
		informative data points, wasting data efficiency."
knitr::include_graphics("assets/acquisition_visualisation.svg", dpi=350)
```

</div>
