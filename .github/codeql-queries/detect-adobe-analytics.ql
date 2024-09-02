/**
 * @name Detect Adobe Analytics Tracker
 * @description Identifies instances of Adobe Analytics tracking using `s.t` method.
 * @kind problem
 * @problem.severity warning
 * @id js/adobe-analytics-tracker
 */
import javascript

from FunctionCall call
where call.getCallee().getQualifiedName().matches("s.t")
select call, "Adobe Analytics tracking method 's.t' detected."
