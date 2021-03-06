mzmatch.ipeak.sort.PeakSort <- function(JHeapSize=1425,i=NULL, o=NULL, sort=NULL, annotation=NULL, h=NULL, v=NULL)
{
	## define the java runtime parameters
	java <- "java -da -dsa -Xmn1g -Xss228k -XX:+UseParallelGC -XX:ParallelGCThreads=10"
	## locate the mzmatch.jar file (it's included in the peakmlR package)
	## JHeapSize - define amount of RAM availiable for java VM
	JHeapSize <- paste(JHeapSize,"m",sep="")
	java <- paste(java," -Xms",JHeapSize," -Xmx",JHeapSize," -cp",sep="")
	mzmatch <- paste(java, " ", find.package("mzmatch.R"), "/java/mzmatch.jar", sep="")
	
	## setup the tool
	tool <- paste(mzmatch, "mzmatch.ipeak.sort.PeakSort")
		if (!is.null(i))
		tool <- paste(tool, "-i", i)
	if (!is.null(o))
		tool <- paste(tool, "-o", o)
	if (!is.null(sort))
		tool <- paste(tool, "-sort", sort)
	if (!is.null(annotation))
		tool <- paste(tool, "-annotation", annotation)
	if (!is.null(h) && h==T)
		tool <- paste(tool, "-h")
	if (!is.null(v) && v==T)
		tool <- paste(tool, "-v")

	system(tool)
}
