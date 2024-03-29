% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/nlp_translators.R
\name{nlp_category_translate}
\alias{nlp_category_translate}
\title{NLP Categories Translator}
\usage{
nlp_category_translate(
  in_file = NULL,
  out_file = "categoryScoreCode.R",
  zip = TRUE,
  in_caslib,
  in_castable,
  out_caslib,
  out_castable_category,
  out_castable_matches,
  out_castable_model_table,
  key_column,
  document_column,
  hostname = NULL
)
}
\arguments{
\item{in_file}{Path to zip/sas file with the score code.}

\item{out_file}{Path to the translated \code{.R} code file.}

\item{zip}{Boolean, if the score code is inside a zip file. Default to \code{TRUE}. It will look for \code{dmcas_epscorecode.sas} file inside the zip.}

\item{in_caslib}{caslib name of the input table}

\item{in_castable}{input table name}

\item{out_caslib}{caslib name of the output table}

\item{out_castable_category}{category output table name}

\item{out_castable_matches}{matches output table name, if the argument is not defined the table name will be the same as \code{out_castable_category} with "_matches" added}

\item{out_castable_model_table}{features output table name, if the argument is not defined the table name will be the same as \code{out_castable_category} with "_modeling" added}

\item{key_column}{Key column name for unique identifier}

\item{document_column}{text variable column name}

\item{hostname}{\code{NULL} by default, extracts the server name from scoring code file.}
}
\value{
List object with the Rscore code, out castable, out caslib and the written file path.
}
\description{
It will read the score code that is written as SAS Code extract the mco binary and hostame information,
then write an R code equivalent using the \code{SWAT} package.
}
\examples{
nlp_category_translate("filepath.zip")

}
