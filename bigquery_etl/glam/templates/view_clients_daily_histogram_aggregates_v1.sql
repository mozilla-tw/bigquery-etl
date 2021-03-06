-- View for histogram aggregates that handles time-partitioning
CREATE OR REPLACE VIEW
  `moz-fx-data-shared-prod.{{ dataset }}.{{ prefix }}_view_clients_daily_histogram_aggregates_v1`
AS
SELECT
  * EXCEPT (submission_date),
  DATE(_PARTITIONTIME) AS submission_date
FROM
  `moz-fx-data-shared-prod.{{ dataset }}.{{ prefix }}_clients_daily_histogram_aggregates*`
