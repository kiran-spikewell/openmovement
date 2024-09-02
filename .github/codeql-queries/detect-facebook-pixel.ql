/**
 * @name Detect Facebook Pixel Tracker
 * @description Identifies instances of Facebook Pixel tracking (`fbq` function calls) in JavaScript files.
 * @kind problem
 * @problem.severity warning
 * @id js/facebook-pixel-tracker
 */
import javascript

from FunctionCall call
where call.getCallee().getQualifiedName().matches("fbq")
select call, "Facebook Pixel tracking function 'fbq' detected."
