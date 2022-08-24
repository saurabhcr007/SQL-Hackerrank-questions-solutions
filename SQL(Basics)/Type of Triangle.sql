select case 
    When (C >= A + B) or (B >= A + C) or (A >= C + B) THEN "Not A Triangle" 
    When (A = B) AND (B = C) THEN "Equilateral" 
    When (A = B) OR (B = C) OR (C = A) THEN "Isosceles" 
    ELSE "Scalene" 
    END
From TRIANGLES