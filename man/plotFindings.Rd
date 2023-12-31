% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plotFindings.R
\name{plotFindings}
\alias{plotFindings}
\title{Plot RolDE results}
\usage{
plotFindings(file_name = NULL, RolDE_res, top_n, col1 = "blue", col2 = "red")
}
\arguments{
\item{file_name}{a string indicating the file name in which the results should be plotted. Should have a ".pdf" extension. Default is NULL, no file is created.}

\item{RolDE_res}{the RolDE result object.}

\item{top_n}{an integer or a vector of integers indicating what top differentially expressed features should be plotted. If \code{top_n} is a single number, the \code{top_n} most
differentially expressed feature will be plotted (e.g \code{top_n}=1 will plot the most differentially expressed feature). If \code{top_n} is a vector of numbers,
the differentially expressed features corresponding to top detections within the given range will be plotted (e.g. \code{top_n}=seq(1:50) will plot the top 50 differentially expressed features).
If more than one feature will be plotted, it is advisable to define a suitable file name in \code{file_name}.}

\item{col1}{a string indicating which color should be used for Individuals / Replicates in condition 1. The default is blue.}

\item{col2}{a string indicating which color should be used for Individuals / Replicates in condition 2. The default is red.}
}
\value{
\code{plotFindings} Plots the results from the RolDE object.
}
\description{
Plot the findings from longitudinal differential expression analysis with RolDE.
}
\details{
The function plots the longitudinal expression of the top RolDE findings. The function can plot either the expression of a single finding
or multiple top findings as indicated by the \code{top_n}. The findings can be plotted into a pdf file as indicated by the \code{file_name}.
The given \code{file_name} should have a ".pdf" extension. If the plottable feature has missing values, a mean value over the feature values will
be imputted for visualization purposes. The missing / imputed value will be indicated with an empty circle symbol.
}
\examples{
data("res3")
#Plotting the most DE finding. DE results are in the res3 object.
plotFindings(file_name = NULL, RolDE_res = res3, top_n = 1)
}
