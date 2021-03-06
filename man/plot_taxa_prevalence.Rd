% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_taxa_prevalence.R
\name{plot_taxa_prevalence}
\alias{plot_taxa_prevalence}
\title{Visualize Prevalence Distributions for Taxa}
\usage{
plot_taxa_prevalence(x, level)
}
\arguments{
\item{x}{\code{\link{phyloseq-class}} object}

\item{level}{Phylum/Order/Class/Family}
}
\value{
A \code{\link{ggplot}} plot object.
}
\description{
Create taxa prevalence plots at various taxonomic levels.
}
\details{
This helps to obtain first insights into how is the taxa
distribution in the data. It also gives an idea about the taxonomic
affiliation of rare and abundant taxa in the data.
This may be helpful for data filtering or other downstream analysis.
}
\examples{
data(DynamicsIBD)
# Pick data subset to speed up example
p0 <- subset_samples(DynamicsIBD, sex == 'male' & timepoint == 1)
# Check the names of the taxonomic level 
colnames(tax_table(p0)) 
# Change the "Rank" label to taxonomic levels
colnames(tax_table(p0)) <- c("Kingdom", "Phylum", "Class", "Order",
    "Family", "Genus", "Species")
p <- plot_taxa_prevalence(p0, 'Phylum')
print(p)
}
\author{
Sudarshan A. Shetty \email{sudarshanshetty9@gmail.com}
}
\keyword{utilities}
