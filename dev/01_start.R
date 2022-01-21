# Building a Prod-Ready, Robust Shiny Application.
# 
# README: each step of the dev files is optional, and you don't have to 
# fill every dev scripts before getting started. 
# 01_start.R should be filled at start. 
# 02_dev.R should be used to keep track of your development during the project.
# 03_deploy.R should be used once you need to deploy your app.
# 
# 
########################################
#### CURRENT FILE: ON START SCRIPT #####
########################################

## Fill the DESCRIPTION ----
## Add meta data about your application
## 
## /!\ Note: if you want to change the name of your app during development, 
## either re-run this function, call golem::set_golem_name(), or don't forget
## to change the name in the app_sys() function in app_config.R /!\
## 
golem::fill_desc(
  pkg_name = "tableaucomposition", # The Name of the package containing the App 
  pkg_title = "Composition des sites du coleo", # The Title of the package containing the App 
  pkg_description = "Le MFFP a réalisé des relevés de biodiversité dans plusieurs sites du Québec. Ce tableau de bord présente quelques visualisations et analyses de la composition de ces communautés écologiques.", # The Description of the package containing the App 
  author_first_name = "Dominique", # Your First Name
  author_last_name = "Gravel", # Your Last Name
  author_email = "grad3002@dbio-graved-07i.DBio.fsci.usherbrooke.ca", # Your Email
  repo_url = NULL # The URL of the GitHub Repo (optional) 
)     

## Set {golem} options ----
golem::set_golem_options(golem_version = "0.3.0")

## Create Common Files ----
## See ?usethis for more information
usethis::use_mit_license( "Dominique Gravel" )  # You can set another license here
usethis::use_readme_md( open = TRUE )
usethis::use_code_of_conduct()
usethis::use_lifecycle_badge( "Experimental" )
usethis::use_news_md( open = TRUE )

## Use git ----
usethis::use_git()

## Init Testing Infrastructure ----
## Create a template for tests
golem::use_recommended_tests()

## Use Recommended Packages ----
golem::use_recommended_deps()

## Favicon ----
# If you want to change the favicon (default is golem's one)
golem::use_favicon("https://raw.githubusercontent.com/ReseauBiodiversiteQuebec/rcoleo/master/pkgdown/favicon/favicon-32x32.png") # path = "path/to/ico". Can be an online file. 
golem::remove_favicon()

## Add helper functions ----
golem::use_utils_ui()
golem::use_utils_server()

# You're now set! ----

# go to dev/02_dev.R
rstudioapi::navigateToFile( "dev/02_dev.R" )

