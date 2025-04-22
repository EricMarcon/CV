# Knit Rmd files
lapply(
  list.files(pattern = "*.Rmd"),
  function(file) rmarkdown::render(file, "all")
)
# Print HTML to PDF
lapply(
  list.files(pattern = "*.html"),
  function(file) pagedown::chrome_print(file, format = "pdf")
)
# Move files to docs/
memoiR::build_githubpages()
