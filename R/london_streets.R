#' Streets of london downloaded from OSM
#'
#' Data used in the "Bridges to GIS" chapter in Geocomputation with R.
#' See \url{http://geocompr.robinlovelace.net/gis.html} for details.
#'
#' @format An sf-object with one attribute (\code{osm_id}) and one \code{geometry} column.
#' @source OpenStreetMap (see \url{https://www.openstreetmap.org/}).
#'
#' @examples \dontrun{
#' library(sf)
#' library(osmdata)
#' library(spData)
#' library(dplyr)
#' data(cycle_hire)
#' points = cycle_hire[1:25, ]
#' b_box = sf::st_bbox(points)
#' london_streets = opq(b_box) %>%
#'         add_osm_feature(key = "highway") %>%
#'         osmdata_sf() %>%
#'         `[[`("osm_lines")
#' london_streets = dplyr::select(london_streets, 1)
#' }
"london_streets"


