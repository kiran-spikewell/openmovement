/**
 * @name Detect Mixpanel Tracker
 * @description Identifies instances of Mixpanel tracking using `mixpanel.track` method.
 * @kind problem
 * @problem.severity warning
 * @id js/mixpanel-tracker
 */
import javascript

from FunctionCall call
where call.getCallee().getQualifiedName().matches("mixpanel.track")
select call, "Mixpanel tracking method 'mixpanel.track' detected."
