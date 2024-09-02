/**
 * @name Detect HubSpot Tracker
 * @description Identifies instances of HubSpot tracking scripts.
 * @kind problem
 * @problem.severity warning
 * @id js/hubspot-tracker
 */
import javascript

from StringLiteral scriptUrl
where scriptUrl.getValue().regexpMatch(".*//js.hs-scripts.com/.*")
select scriptUrl, "HubSpot tracking script detected."
