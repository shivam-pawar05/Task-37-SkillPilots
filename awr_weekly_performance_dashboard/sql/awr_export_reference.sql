-- Reference only: have the DBA review version compatibility and permissions.
-- Oracle AWR / Diagnostics Pack use may require a separate license.
-- Export only approved data and columns.

SELECT sn.begin_interval_time AS snapshot_time,
       st.stat_name,
       st.value
FROM dba_hist_sys_time_model st
JOIN dba_hist_snapshot sn
  ON sn.dbid = st.dbid
 AND sn.instance_number = st.instance_number
 AND sn.snap_id = st.snap_id
WHERE st.stat_name IN ('DB time', 'DB CPU')
ORDER BY sn.begin_interval_time;

SELECT sn.begin_interval_time AS snapshot_time,
       ev.event_name,
       ev.total_waits,
       ev.time_waited_micro
FROM dba_hist_system_event ev
JOIN dba_hist_snapshot sn
  ON sn.dbid = ev.dbid
 AND sn.instance_number = ev.instance_number
 AND sn.snap_id = ev.snap_id
ORDER BY sn.begin_interval_time, ev.event_name;

-- Validate exact metrics and aggregation with the DBA for your Oracle version.
