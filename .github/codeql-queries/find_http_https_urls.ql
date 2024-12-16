/**
 * Query to find http and https URLs in a codebase (generic for any language).
 */
import semmle.code.*

predicate isHttpOrHttpsUrl(string value) {
  value.regexpMatch("^(http|https)://.*$")
}

from string s, Location loc
where isHttpOrHttpsUrl(s) and loc.hasLocationInfo()
select s, "Found an HTTP/HTTPS URL.", loc
