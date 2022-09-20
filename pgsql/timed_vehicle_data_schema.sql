CREATE TABLE IF NOT EXISTS vehicles
(
    "id" SERIAL NOT NULL,
    "uid" TEXT NOT NULL,
    "lat" FLOAT NOT NULL,
    "lon" FLOAT DEFAULT NULL,
    "speed" FLOAT DEFAULT NULL,
    "lon_acc" FLOAT DEFAULT NULL,
    "lat_acc" FLOAT DEFAULT NULL,
    "time" FLOAT DEFAULT NULL,
    PRIMARY KEY ("id"),
    CONSTRAINT fk_trajectory
        FOREIGN KEY("uid") 
            REFERENCES trajectories(unique_id)
            ON DELETE CASCADE
    
);