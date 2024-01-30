UPDATE journeys
SET purpose = IF(id % 2 = 0, 'Medical', IF(id % 3 = 0, 'Technical', IF(id % 5 = 0, 'Educational', IF(id % 7 = 0, 'Military', purpose))));