% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plots.R
\name{plot_transcript_heatmap}
\alias{plot_transcript_heatmap}
\title{Plot clustered heatmap}
\usage{
plot_transcript_heatmap(obj, transcripts, units = "tpm", trans = "log",
  cluster_transcripts = FALSE, offset = 1, color_high = "#581845",
  color_mid = "#FFC300", color_low = "#DAF7A6", x_axis_angle = 50,
  annotation_cols = setdiff(colnames(obj$sample_to_covariates), "sample"),
  ...)
}
\arguments{
\item{obj}{a \code{sleuth} object}

\item{transcripts}{a vector of strings containing a list of transcripts to be plotted in a heatmap}

\item{units}{a string specifying which units to use, either tpm or est_counts (scaled_reads_per_base for gene_mode)}

\item{trans}{a function or a string specifying a function to transform
the data by}

\item{cluster_transcripts}{whether the transcripts also should be clustered.
default is \code{FALSE}}

\item{offset}{how much should be added to estimated expression before
transformation? Default is 1.}

\item{color_high}{the 'high expression' color (default: dark red)}

\item{color_low}{the 'low expression' color (default: light green)}

\item{x_axis_angle}{the angle at which to put the x-axis labels}

\item{annotation_cols}{a character vector of covariates from
\code{sample_to_covariates} that should be annotated on the heatmap}

\item{...}{additional arguments to customize the heatmap. passed to
\code{pheatmap}. See ?pheatmap for documentation on additional options.}

\item{color_mide}{the 'medium expression' color (default: yellow)}
}
\value{
a \code{ggplot} object
}
\description{
Plot a clustered heatmap. The clustering is done by the hclust function.
}
