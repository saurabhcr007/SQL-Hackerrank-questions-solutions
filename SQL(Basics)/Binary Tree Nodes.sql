SELECT N, CASE WHEN P IS NULL THEN 'Root' ELSE
                        CASE WHEN N IN (SELECT P FROM BST) THEN 'Inner'
                        ELSE 'Leaf' END
                END AS node_type
FROM BST
ORDER BY N ASC;