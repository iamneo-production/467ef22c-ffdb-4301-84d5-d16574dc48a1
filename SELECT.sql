SELECT
    S_ID,
    ID,
    GENDER,
    "Customer Type",
    AGE,
    "Type of Travel",
    CLASS,
    "Flight Distance",
    "Inflight wifi service",
    "Departure/Arrival time convenient",
    "Ease of Online booking",
    "Gate location",
    "Food and drink",
    "Online boarding",
    "Seat comfort",
    "Inflight entertainment",
    "On-board service",
    "Leg room service",
    "Baggage handling",
    "Checkin service",
    "Inflight service",
    CLEANLINESS,
    "Departure Delay in Minutes",
    "Arrival Delay in Minutes",
    SATISFACTION
FROM
    AIRLINE
WHERE
    S_ID = NUMBER;
