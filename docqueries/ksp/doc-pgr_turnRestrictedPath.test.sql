/* -- q1 */
SELECT * FROM pgr_turnRestrictedPath(
  $$SELECT id, source, target, cost, reverse_cost FROM edge_table$$,
  $$SELECT path, cost FROM restrictions$$,
  8, 10, 3
);
/* -- q2 */
SELECT * FROM pgr_turnRestrictedPath(
  $$SELECT id, source, target, cost, reverse_cost FROM edge_table$$,
  $$SELECT path, cost FROM restrictions$$,
  8, 10, 3,
  strict => true
);
/* -- q3 */
SELECT * FROM pgr_turnRestrictedPath(
  $$SELECT id, source, target, cost, reverse_cost FROM edge_table$$,
  $$SELECT path, cost FROM restrictions$$,
  8, 10, 3,
  directed => false
);
/* -- q4 */
SELECT * FROM pgr_turnRestrictedPath(
  $$SELECT id, source, target, cost, reverse_cost FROM edge_table$$,
  $$SELECT path, cost FROM restrictions$$,
  8, 10, 3,
  directed => false,
  heap_paths => true,
  stop_on_first => false
);
/* -- q5 */
