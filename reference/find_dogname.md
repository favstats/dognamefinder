# Find a dog name based on selected attributes

Randomly samples a dog name from the `dogs` dataset, optionally
conditioning on gender, breed, size, and character. If no exact match
exists, constraints are relaxed stepwise to ensure a valid result.

## Usage

``` r
find_dogname(gender = NULL, breed = NULL, size = NULL, character = NULL)
```

## Arguments

- gender:

  Character string specifying the dog's gender. NULL by default, picks a
  random gender name.

- breed:

  Character string specifying the dog's breed. NULL by default, picks a
  random breed. name.

- size:

  Character string specifying the dog's size category.

- character:

  Character string specifying the dog's character trait.

## Value

A single character string containing a dog name.

## Examples

``` r
# find a female and Pug name
find_dogname(gender = "female", breed = "Pug")
#> Error in sample.int(length(x), size, replace, prob): cannot take a sample larger than the population when 'replace = FALSE'
find_dogname(size = "chonker", character = "aggressive")
#> Error in sample.int(length(x), size, replace, prob): cannot take a sample larger than the population when 'replace = FALSE'
find_dogname()
#> [1] "Shadow" "Molly"  "Sadie" 
```
