USE hard;
WITH RankedVisits AS (
    SELECT
        d.id,
        n.name,
        d.visit_date,
        ROW_NUMBER() OVER (PARTITION BY d.id ORDER BY d.visit_date) AS row_num
    FROM
        Dates d
    JOIN
        Names n ON d.id = n.idc
),
VisitGroups AS (
    SELECT
        id,
        name,
        visit_date,
        DATE_SUB(visit_date, INTERVAL row_num DAY) AS visit_group
    FROM
        RankedVisits
),
GroupedVisits AS (
    SELECT
        id,
        name,
        visit_group,
        COUNT(*) AS consecutive_visits
    FROM
        VisitGroups
    GROUP BY
        id, name, visit_group
),
MaxConsecutiveVisits AS (
    SELECT
        id,
        name,
        MAX(consecutive_visits) AS max_visits
    FROM
        GroupedVisits
    GROUP BY
        id, name
)
SELECT
    id,
    name,
    max_visits AS consecutive_visits
FROM
    MaxConsecutiveVisits
ORDER BY
    max_visits DESC
;
