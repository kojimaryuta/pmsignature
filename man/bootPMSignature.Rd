% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/getSignature.R
\name{bootPMSignature}
\alias{bootPMSignature}
\title{Obtain the standard error estimates for parameters for mutation signatures and memberships}
\usage{
bootPMSignature(mutationFeatureData, Param0, bootNum = 10, BG = NULL,
  tol = 0.01, maxIter = 10000)
}
\arguments{
\item{mutationFeatureData}{the mutation data (MutationFeatureData class (S4 class)) by the \code{readMPFile} or \code{readMFVFile} functions.}

\item{Param0}{the initial value for the parameter of memberships used for bootstrapped parameter estimations}

\item{bootNum}{the number of bootstrapping}

\item{BG}{the background signature used for estimating Param0}

\item{tol}{tolerance for the estimation
(when the difference of log-likelihoods become below this value, stop the estimation)}

\item{maxIter}{the maximum number of iteration of estimation}
}
\value{
a list of standard error matrices (mutation signatures, membership parameters)
}
\description{
Obtain the standard error estimates for parameters for mutation signatures and memberships
}
\examples{
After obtaining mutationFeatureData (see e.g., by \\code{readMPFile} function) as G, 
and EstimatedParameters (e.g., by \\code{getPMSignature} function) as Param,
bootParam <- bootPMSignature(G, Param, bootNum = 100)

}
