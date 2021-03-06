% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/I2C2_orig.R
\name{I2C2.original}
\alias{I2C2.original}
\title{Image Intraclass Correlation Coefficient}
\usage{
I2C2.original(y, id = NULL, visit = NULL, J = NULL, I = NULL,
  p = NULL, T = NULL, symmetric = FALSE, trun = FALSE,
  twoway = TRUE, demean = TRUE)
}
\arguments{
\item{y}{An n by p data matrix containing n vectorized image data with p voxels.
Each row contains one observed image data at a particular visit for one subject.
Each column contains image values for all subjects and visits at a particular voxel.

The rows are organized by subjects and then visits, EX)
(Y11, Y12, Y21, Y22, ... , YI1 , YI2)}

\item{id}{Vector of IDs, EX) c(1, 1, 2, 2, 3, 3, 4, 4, ... , I, I)}

\item{visit}{Vector of visits, EX) (1, 2, 1, 2, 1, 2, ... , 1, 2)}

\item{J}{Number of repetitions}

\item{I}{Number of subjects}

\item{p}{dimension of observed vectors Yij (e.g. number of grid points
per function), EX) Number of voxels}

\item{T}{Vector of distance (in time) of each visit from baseline visit.
If the length of time between visits is different for the subjects in the
dataset
 then match visits according to their distance in time as given by T.
If T == NULL, match observations from different clusters by visit number}

\item{symmetric}{if FALSE then the function uses the
method of moments estimator formula;
if TRUE, pairwise symmetric sum formula, default is FALSE}

\item{trun}{if TRUE, set negative I2C2 to zero}

\item{twoway}{a logical argument indicating whether a oneway or twoway
mean subtraction is more appropriate for the problem. If FALSE, only the overall sample
mean will be removed only; if TRUE, it will also remove visit specific means to
avoid scanner or batch effects}

\item{demean}{if TRUE, include the demean step and
output the demeaned dataset}
}
\value{
The output of the function is a list that contains the
following elements.
lambda:       estimated I2C2
Kx:           the trace of between-cluster variance operator
Ku:           the trace of within-cluster variance operator
demean_y:     if demean == TRUE, output the demeaned dataset
}
\description{
Calculate image intraclass correlation
 coefficient (I2C2) of balanced/unbalanced data using the trace method
}
\references{
Shou, H, Eloyan, A, Lee, S, Zipunnikov, V, Crainiceanu, AN, Nebel, NB, Caffo, B, Lindquist, MA, Crainiceanu, CM (2013).
Quantifying the reliability of image replication studies: the image intraclass correlation coefficient (I2C2).
Cogn Affect Behav Neurosci, 13, 4:714-24.
}
\author{
Haochang Shou, Ani Eloyan, Seonjoo Lee, Vadim Zipunnikov, Adina N. Crainiceanu,
Mary Beth Nebel, Brian Caffo, Martin Lindquist, Ciprian M. Crainiceanu
}
