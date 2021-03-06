\name{PeakML.Isotope.filterPeaks}
\Rdversion{1.1}
\alias{PeakML.Isotope.filterPeaks}
\title{PeakML.Isotope.filterPeaks}
\description{
	This function will return location of peaks in the peak data matrix that fall in the given mass window and retention time window.
}
\usage{
	PeakML.Isotope.filterPeaks(peakDataMtx, rtWindow, massWindow)
}

\arguments{
	\item{peakDataMtx}{
		The peak data matrix.
	}
	\item{rtWindow}{
		The retention time window as a list.
	}
	\item{massWindow}{
		The mass window as a list.
	}
}

\details{
The PeakML file format defines an open and extensible file format for storing extracted hyphenated mass spectrometry data. As such, the format will enable users to store intermediate data in a structured manner, but more importantly, to exchange data between different data analysis software. This will give complete flexible control to the users of data analysis software to cherry pick those components best suited to their needs. The PeakML.Methods contains a set of R functions that will enable end users to rapidly write scripts to manipulate PeakML files.
}

\value{
	PeakML.Isotope.filterPeaks returns the location of peaks in the peak data matrix that fall in the given mass window and retention time window as a vector.
}

\references{
	PeakML/mzMatch: A File Format, Java Library, R Library, and Tool-Chain for Mass Spectrometry Data Analysis, Richard A. Scheltema, Andris Jankevics, Ritsert C. Jansen, Morris A. Swertz, Rainer Breitling, Analytical Chemistry, 2011 83 (7), 2786-2793.

}
\author{
	Achuthanuni Chokkathukalam (unni.chokkathukalam@glasgow.ac.uk)
	Andris Jankevics (a.jankevics@rug.nl)
}

\seealso{
	\code{\link{PeakML.Isotope.getMassWindow}}
}

\keyword{ mzmatch.R }
\keyword{ peakML }
