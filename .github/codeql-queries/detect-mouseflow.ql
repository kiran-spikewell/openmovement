/**
 * @name Detect Mouseflow Tracker
 * @description Identifies instances of Mouseflow tracking by searching for `window._mfq` array.
 * @kind problem
 * @problem.severity warning
 * @id js/mouseflow-tracker
 */
import javascript

from MemberAccess access
where access.getFullyQualifiedName().matches("window._mfq")
select access, "Mouseflow tracking array 'window._mfq' detected."
