#new with TN and US included in data pull

#### load packages####

packages <- c("tidyverse", "tidycensus", "leaflet", "mapview", "DT", "sf",
              "knitr", "rmarkdown", "kableExtra", "RColorBrewer", "tigris",
              "directlabels", "officer", "flextable", "zoo", "scales", "readxl")

lapply(packages, library, character.only = TRUE)

census_api_key("0db6c1cb3f5986242af9f40f76060b289cee055c", install = TRUE, overwrite = TRUE)

#### load the data#####

dp_table_variables <- load_variables(2018, "acs5/profile", cache = TRUE)

new_names_18 <- c("variable", "label", "concept")

names(dp_table_variables) <- new_names_18

#### data profiles####

##carter##

Carter_dp02_2018 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Carter_dp03_2018 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Carter_dp04_2018 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Carter_dp05_2018 <- get_acs(geography = "tract", county = "Carter", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##greene##


Greene_dp02_2018 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Greene_dp03_2018 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Greene_dp04_2018 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Greene_dp05_2018 <- get_acs(geography = "tract", county = "Greene", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##hancock

Hancock_dp02_2018 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Hancock_dp03_2018 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Hancock_dp04_2018 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Hancock_dp05_2018 <- get_acs(geography = "tract", county = "Hancock", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##hawkins

Hawkins_dp02_2018 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Hawkins_dp03_2018 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Hawkins_dp04_2018 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Hawkins_dp05_2018 <- get_acs(geography = "tract", county = "Hawkins", state = "TN", table = "DP05", year = 2018, geometry = TRUE)


##johnson

Johnson_dp02_2018 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Johnson_dp03_2018 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Johnson_dp04_2018 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Johnson_dp05_2018 <- get_acs(geography = "tract", county = "Johnson", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##sullivan

Sullivan_dp02_2018 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Sullivan_dp03_2018 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Sullivan_dp04_2018 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Sullivan_dp05_2018 <- get_acs(geography = "tract", county = "Sullivan", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##washington


Washington_dp02_2018 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Washington_dp03_2018 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Washington_dp04_2018 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Washington_dp05_2018 <- get_acs(geography = "tract", county = "Washington", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##unicoi

Unicoi_dp02_2018 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Unicoi_dp03_2018 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Unicoi_dp04_2018 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Unicoi_dp05_2018 <- get_acs(geography = "tract", county = "Unicoi", state = "TN", table = "DP05", year = 2018, geometry = TRUE)


###2018##

##carter

Carter_dp02_18 <- inner_join(Carter_dp02_2018, dp_table_variables, by = "variable")

Carter_dp03_18 <- inner_join(Carter_dp03_2018, dp_table_variables, by = "variable")

Carter_dp04_18 <- inner_join(Carter_dp04_2018, dp_table_variables, by = "variable")

Carter_dp05_18 <- inner_join(Carter_dp05_2018, dp_table_variables, by = "variable")

##greene

Greene_dp02_18 <- inner_join(Greene_dp02_2018, dp_table_variables, by = "variable")

Greene_dp03_18 <- inner_join(Greene_dp03_2018, dp_table_variables, by = "variable")

Greene_dp04_18 <- inner_join(Greene_dp04_2018, dp_table_variables, by = "variable")

Greene_dp05_18 <- inner_join(Greene_dp05_2018, dp_table_variables, by = "variable")

##hancock

Hancock_dp02_18 <- inner_join(Hancock_dp02_2018, dp_table_variables, by = "variable")

Hancock_dp03_18 <- inner_join(Hancock_dp03_2018, dp_table_variables, by = "variable")

Hancock_dp04_18 <- inner_join(Hancock_dp04_2018, dp_table_variables, by = "variable")

Hancock_dp05_18 <- inner_join(Hancock_dp05_2018, dp_table_variables, by = "variable")

##hawkins  

Hawkins_dp02_18 <- inner_join(Hawkins_dp02_2018, dp_table_variables, by = "variable")

Hawkins_dp03_18 <- inner_join(Hawkins_dp03_2018, dp_table_variables, by = "variable")

Hawkins_dp04_18 <- inner_join(Hawkins_dp04_2018, dp_table_variables, by = "variable")

Hawkins_dp05_18 <- inner_join(Hawkins_dp05_2018, dp_table_variables, by = "variable")

##johnson

Johnson_dp02_18 <- inner_join(Johnson_dp02_2018, dp_table_variables, by = "variable")

Johnson_dp03_18 <- inner_join(Johnson_dp03_2018, dp_table_variables, by = "variable")

Johnson_dp04_18 <- inner_join(Johnson_dp04_2018, dp_table_variables, by = "variable")

Johnson_dp05_18 <- inner_join(Johnson_dp05_2018, dp_table_variables, by = "variable")

##sullivan

Sullivan_dp02_18 <- inner_join(Sullivan_dp02_2018, dp_table_variables, by = "variable")

Sullivan_dp03_18 <- inner_join(Sullivan_dp03_2018, dp_table_variables, by = "variable")

Sullivan_dp04_18 <- inner_join(Sullivan_dp04_2018, dp_table_variables, by = "variable")

Sullivan_dp05_18 <- inner_join(Sullivan_dp05_2018, dp_table_variables, by = "variable")

##washington

Washington_dp02_18 <- inner_join(Washington_dp02_2018, dp_table_variables, by = "variable")

Washington_dp03_18 <- inner_join(Washington_dp03_2018, dp_table_variables, by = "variable")

Washington_dp04_18 <- inner_join(Washington_dp04_2018, dp_table_variables, by = "variable")

Washington_dp05_18 <- inner_join(Washington_dp05_2018, dp_table_variables, by = "variable")

##unicoi

Unicoi_dp02_18 <- inner_join(Unicoi_dp02_2018, dp_table_variables, by = "variable")

Unicoi_dp03_18 <- inner_join(Unicoi_dp03_2018, dp_table_variables, by = "variable")

Unicoi_dp04_18 <- inner_join(Unicoi_dp04_2018, dp_table_variables, by = "variable")

Unicoi_dp05_18 <- inner_join(Unicoi_dp05_2018, dp_table_variables, by = "variable")


##2018##

dp02_18 <- rbind(Carter_dp02_18, Greene_dp02_18, Hancock_dp02_18, Hawkins_dp02_18, Johnson_dp02_18, Sullivan_dp02_18, Washington_dp02_18, Unicoi_dp02_18)

dp03_18 <- rbind(Carter_dp03_18, Greene_dp03_18, Hancock_dp03_18, Hawkins_dp03_18, Johnson_dp03_18, Sullivan_dp03_18, Washington_dp03_18, Unicoi_dp03_18)

dp04_18 <- rbind(Carter_dp04_18, Greene_dp04_18, Hancock_dp04_18, Hawkins_dp04_18, Johnson_dp04_18, Sullivan_dp04_18, Washington_dp04_18, Unicoi_dp04_18)

dp05_18 <- rbind(Carter_dp05_18, Greene_dp05_18, Hancock_dp05_18, Hawkins_dp05_18, Johnson_dp05_18, Sullivan_dp05_18, Washington_dp05_18, Unicoi_dp05_18)




#2018#

dp_2018 <- rbind(dp02_18, dp03_18, dp04_18, dp05_18)


#Carter

#2018

Carter_County_dp02_2018 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Carter_County_dp03_2018 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Carter_County_dp04_2018 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Carter_County_dp05_2018 <- get_acs(geography = "county", county = "Carter", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Greene

#2018

Greene_County_dp02_2018 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Greene_County_dp03_2018 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Greene_County_dp04_2018 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Greene_County_dp05_2018 <- get_acs(geography = "county", county = "Greene", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Hancock

#2018

Hancock_County_dp02_2018 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Hancock_County_dp03_2018 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Hancock_County_dp04_2018 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Hancock_County_dp05_2018 <- get_acs(geography = "county", county = "Hancock", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Hawkins

#2018

Hawkins_County_dp02_2018 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Hawkins_County_dp03_2018 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Hawkins_County_dp04_2018 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Hawkins_County_dp05_2018 <- get_acs(geography = "county", county = "Hawkins", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Johnson

#2018

Johnson_County_dp02_2018 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Johnson_County_dp03_2018 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Johnson_County_dp04_2018 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Johnson_County_dp05_2018 <- get_acs(geography = "county", county = "Johnson", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Sullivan

#2018

Sullivan_County_dp02_2018 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Sullivan_County_dp03_2018 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Sullivan_County_dp04_2018 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Sullivan_County_dp05_2018 <- get_acs(geography = "county", county = "Sullivan", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Washington

#2018

Washington_County_dp02_2018 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Washington_County_dp03_2018 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Washington_County_dp04_2018 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Washington_County_dp05_2018 <- get_acs(geography = "county", county = "Washington", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

#Unicoi

#2018

Unicoi_County_dp02_2018 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Unicoi_County_dp03_2018 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Unicoi_County_dp04_2018 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Unicoi_County_dp05_2018 <- get_acs(geography = "county", county = "Unicoi", state = "TN", table = "DP05", year = 2018, geometry = TRUE)

##tennessee

Tennessee_dp02_2018 <- get_acs(geography = "state", state = "TN", table = "DP02", year = 2018, geometry = TRUE)

Tennessee_dp03_2018 <- get_acs(geography = "state", state = "TN", table = "DP03", year = 2018, geometry = TRUE)

Tennessee_dp04_2018 <- get_acs(geography = "state", state = "TN", table = "DP04", year = 2018, geometry = TRUE)

Tennessee_dp05_2018 <- get_acs(geography = "state", state = "TN", table = "DP05", year = 2017, geometry = TRUE)

#US

US_dp02_2018 <- get_acs(geography = "us", table = "DP02", year = 2018)

US_dp03_2018 <- get_acs(geography = "us", table = "DP03", year = 2018)

US_dp04_2018 <- get_acs(geography = "us", table = "DP04", year = 2018)

US_dp05_2018 <- get_acs(geography = "us", table = "DP05", year = 2018)


####2018##

##carter

Carter_County_dp02_18 <- inner_join(Carter_County_dp02_2018, dp_table_variables, by = "variable")

Carter_County_dp03_18 <- inner_join(Carter_County_dp03_2018, dp_table_variables, by = "variable")

Carter_County_dp04_18 <- inner_join(Carter_County_dp04_2018, dp_table_variables, by = "variable")

Carter_County_dp05_18 <- inner_join(Carter_County_dp05_2018, dp_table_variables, by = "variable")

####2018##

##Greene

Greene_County_dp02_18 <- inner_join(Greene_County_dp02_2018, dp_table_variables, by = "variable")

Greene_County_dp03_18 <- inner_join(Greene_County_dp03_2018, dp_table_variables, by = "variable")

Greene_County_dp04_18 <- inner_join(Greene_County_dp04_2018, dp_table_variables, by = "variable")

Greene_County_dp05_18 <- inner_join(Greene_County_dp05_2018, dp_table_variables, by = "variable")

####2018##

##Hancock

Hancock_County_dp02_18 <- inner_join(Hancock_County_dp02_2018, dp_table_variables, by = "variable")

Hancock_County_dp03_18 <- inner_join(Hancock_County_dp03_2018, dp_table_variables, by = "variable")

Hancock_County_dp04_18 <- inner_join(Hancock_County_dp04_2018, dp_table_variables, by = "variable")

Hancock_County_dp05_18 <- inner_join(Hancock_County_dp05_2018, dp_table_variables, by = "variable")  

####2018

##Hawkins

Hawkins_County_dp02_18 <- inner_join(Hawkins_County_dp02_2018, dp_table_variables, by = "variable")

Hawkins_County_dp03_18 <- inner_join(Hawkins_County_dp03_2018, dp_table_variables, by = "variable")

Hawkins_County_dp04_18 <- inner_join(Hawkins_County_dp04_2018, dp_table_variables, by = "variable")

Hawkins_County_dp05_18 <- inner_join(Hawkins_County_dp05_2018, dp_table_variables, by = "variable")

####2018##

##Johnson

Johnson_County_dp02_18 <- inner_join(Johnson_County_dp02_2018, dp_table_variables, by = "variable")

Johnson_County_dp03_18 <- inner_join(Johnson_County_dp03_2018, dp_table_variables, by = "variable")

Johnson_County_dp04_18 <- inner_join(Johnson_County_dp04_2018, dp_table_variables, by = "variable")

Johnson_County_dp05_18 <- inner_join(Johnson_County_dp05_2018, dp_table_variables, by = "variable")

####2018##

##Sullivan

Sullivan_County_dp02_18 <- inner_join(Sullivan_County_dp02_2018, dp_table_variables, by = "variable")

Sullivan_County_dp03_18 <- inner_join(Sullivan_County_dp03_2018, dp_table_variables, by = "variable")

Sullivan_County_dp04_18 <- inner_join(Sullivan_County_dp04_2018, dp_table_variables, by = "variable")

Sullivan_County_dp05_18 <- inner_join(Sullivan_County_dp05_2018, dp_table_variables, by = "variable")

####2018##

##Washington

Washington_County_dp02_18 <- inner_join(Washington_County_dp02_2018, dp_table_variables, by = "variable")

Washington_County_dp03_18 <- inner_join(Washington_County_dp03_2018, dp_table_variables, by = "variable")

Washington_County_dp04_18 <- inner_join(Washington_County_dp04_2018, dp_table_variables, by = "variable")

Washington_County_dp05_18 <- inner_join(Washington_County_dp05_2018, dp_table_variables, by = "variable")

####2018##

##Unicoi

Unicoi_County_dp02_18 <- inner_join(Unicoi_County_dp02_2018, dp_table_variables, by = "variable")

Unicoi_County_dp03_18 <- inner_join(Unicoi_County_dp03_2018, dp_table_variables, by = "variable")

Unicoi_County_dp04_18 <- inner_join(Unicoi_County_dp04_2018, dp_table_variables, by = "variable")

Unicoi_County_dp05_18 <- inner_join(Unicoi_County_dp05_2018, dp_table_variables, by = "variable")

#tennessee 

Tennessee_dp02_18 <- inner_join(Tennessee_dp02_2018, dp_table_variables, by = "variable")

Tennessee_dp03_18 <- inner_join(Tennessee_dp03_2018, dp_table_variables, by = "variable")

Tennessee_dp04_18 <- inner_join(Tennessee_dp04_2018, dp_table_variables, by = "variable")

Tennessee_dp05_18 <- inner_join(Tennessee_dp05_2018, dp_table_variables, by = "variable")

#united states

US_dp02_18 <- inner_join(US_dp02_2018, dp_table_variables, by = "variable")

US_dp03_18 <- inner_join(US_dp03_2018, dp_table_variables, by = "variable")

US_dp04_18 <- inner_join(US_dp04_2018, dp_table_variables, by = "variable")

US_dp05_18 <- inner_join(US_dp05_2018, dp_table_variables, by = "variable")

US_dp_2018 <- rbind(US_dp02_18, US_dp03_18, US_dp04_18, US_dp05_18)



#2018

County_dp02_18 <- rbind(Carter_County_dp02_18, Greene_County_dp02_18, Hancock_County_dp02_18, Hawkins_County_dp02_18, Johnson_County_dp02_18, Sullivan_County_dp02_18, Washington_County_dp02_18, Unicoi_County_dp02_18)

County_dp03_18 <- rbind(Carter_County_dp03_18, Greene_County_dp03_18, Hancock_County_dp03_18, Hawkins_County_dp03_18, Johnson_County_dp03_18, Sullivan_County_dp03_18, Washington_County_dp03_18, Unicoi_County_dp03_18)

County_dp04_18 <- rbind(Carter_County_dp04_18, Greene_County_dp04_18, Hancock_County_dp04_18, Hawkins_County_dp04_18, Johnson_County_dp04_18, Sullivan_County_dp04_18, Washington_County_dp04_18, Unicoi_County_dp04_18)

County_dp05_18 <- rbind(Carter_County_dp05_18, Greene_County_dp05_18, Hancock_County_dp05_18, Hawkins_County_dp05_18, Johnson_County_dp05_18, Sullivan_County_dp05_18, Washington_County_dp05_18, Unicoi_County_dp05_18)

County_dp_2018 <- rbind(County_dp02_18, County_dp03_18, County_dp04_18, County_dp05_18) 


###combine everything

Combined_dp02_18 <- rbind(Tennessee_dp02_18, Carter_County_dp02_18, Greene_County_dp02_18, Hancock_County_dp02_18, Hawkins_County_dp02_18, Johnson_County_dp02_18, Sullivan_County_dp02_18, Washington_County_dp02_18, Unicoi_County_dp02_18)

Combined_dp03_18 <- rbind(Tennessee_dp03_18, Carter_County_dp03_18, Greene_County_dp03_18, Hancock_County_dp03_18, Hawkins_County_dp03_18, Johnson_County_dp03_18, Sullivan_County_dp03_18, Washington_County_dp03_18, Unicoi_County_dp03_18)

Combined_dp04_18 <- rbind(Tennessee_dp04_18, Carter_County_dp04_18, Greene_County_dp04_18, Hancock_County_dp04_18, Hawkins_County_dp04_18, Johnson_County_dp04_18, Sullivan_County_dp04_18, Washington_County_dp04_18, Unicoi_County_dp04_18)

Combined_dp05_18 <- rbind(Tennessee_dp05_18, Carter_County_dp05_18, Greene_County_dp05_18, Hancock_County_dp05_18, Hawkins_County_dp05_18, Johnson_County_dp05_18, Sullivan_County_dp05_18, Washington_County_dp05_18, Unicoi_County_dp05_18)

Combined_dp_2018 <- rbind(Combined_dp02_18, Combined_dp03_18, Combined_dp04_18, Combined_dp05_18)

####this one has Tennessee and county data

##need to remove geometry to add us data

Combined_dp_2018_no_geom <- st_set_geometry(Combined_dp_2018, NULL)


Full_dp_2018 <- rbind(US_dp_2018, Combined_dp_2018_no_geom)


#### FUNCTION FOR KABLE TABLES TO BE UNIFORM####
kable_format <- function(x){kable(x)%>%
    kable_styling(latex_options = c("scale_down", "striped"))}

Geography_Full_Function <- function(x){
  Geography <- factor(c(rep("US", x), rep("TN", x), rep("Carter County", x), rep("Greene County", x), rep("Hancock County", x),
                        rep("Hawkins County", x), rep("Johnson County", x), rep("Sullivan County", x), rep("Washington County", x),
                        rep("Unicoi County", x), levels = c("US", "TN", "Carter County", "Greene County", "Hancock County",
                                                            "Hawkins County", "Johnson County", "Sullivan County", "Washington County",
                                                            "Unicoi County")))
  return(Geography)
}

Geography_NOUS_Function <- function(x){
  Geography <- factor(c(rep("TN", x), rep("Carter County", x), rep("Greene County", x), rep("Hancock County", x),
                        rep("Hawkins County", x), rep("Johnson County", x), rep("Sullivan County", x), rep("Washington County", x),
                        rep("Unicoi County", x), levels = c("TN", "Carter County", "Greene County", "Hancock County",
                                                            "Hawkins County", "Johnson County", "Sullivan County", "Washington County",
                                                            "Unicoi County")))
  return(Geography)
}



ARCH_spreadsheet <- read_excel("ARCH_spreadsheet.xlsx")

tricities_homeless <- read_excel("tricities_homeless.xlsx")

UETHDA_HOUSING <- read_excel("UETHDA_HOUSING.xlsx")

HUD_UETHDA <- read_excel("HUD_UETHDA.xlsx", 
                         col_types = c("text", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric", 
                                       "numeric", "numeric", "numeric"))

Community_Neighbors_Responses <- read_excel("Community Neighbors Responses.xlsx")

