/**
 * @name Detect Hotjar Tracker
 * @description Identifies instances of Hotjar tracking by searching for `_hj` variables or functions.
 * @kind problem
 * @problem.severity warning
 * @id js/hotjar-tracker
 */
import javascript

from Identifier id
where id.getName().matches("_hj%")
select id, "Hotjar tracking identifier '_hj' detected."
