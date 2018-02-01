# sed script to clean up text copied from the DataCite Metadata Kernel PDF description
# works for v.4.1 of the document

# remove the page headers
/^DataCite Metadata Schema/d

# remove table headings
s/^Option$//
s/^Definition$//
s/^Example and Usage Notes *//
/^$/d

H
# take the lines that start with 'indicates'
/^[Ii]ndicates /h
