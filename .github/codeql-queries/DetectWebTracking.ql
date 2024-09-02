/**
 * @name Detect Generic Web Tracking Tools
 * @description Searches for common patterns and URLs associated with web tracking tools.
 * @kind problem
 * @problem.severity warning
 * @tags security, web, tracking, privacy
 */

import semmle.code.*

from Literal stringLit
where
  // Match common Google Analytics URLs and tracking patterns
  stringLit.toString().matches(".*google-analytics.com/analytics.js.*") or
  stringLit.toString().matches("UA-\\d+-\\d+") or

  // Add additional patterns for other tracking tools
  stringLit.toString().matches(".*facebook.com/tr.*") or
  stringLit.toString().matches(".*mixpanel.com/track.*") or
  stringLit.toString().matches(".*hotjar.com/hj.js.*")
select stringLit, "Possible reference to a web tracking tool found."
