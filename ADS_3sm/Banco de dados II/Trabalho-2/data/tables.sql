CREATE TABLE cpu (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    cores INTEGER,
    price NUMERIC(10, 2),
    totalbench INTEGER,
    threadbench INTEGER,
    tdp INTEGER,    
    socket VARCHAR(50)
);

CREATE TABLE gpu (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    tdp INTEGER,
    vram INTEGER,
    benchmark_score INTEGER,
    price NUMERIC(10, 2)
);

CREATE TABLE hdd (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    price NUMERIC(10, 2),
    reading_speed INTEGER,
    storage_size INTEGER
);

CREATE TABLE cooler (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    price NUMERIC(10, 2),
    fans INTEGER,
    fan_speed INTEGER,
    noise_level INTEGER
);

CREATE TABLE psu (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    wattage INTEGER,
    price NUMERIC(10, 2),
    efficiency INTEGER
);

CREATE TABLE ram (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    memory INTEGER,
    frequency INTEGER,
    price NUMERIC(10, 2)
);

CREATE TABLE motherboard (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    socket VARCHAR(50),
    price NUMERIC(10, 2),
    sata_slots INTEGER,
    nvme_slots INTEGER,
    ram_slots INTEGER,
    tdp INTEGER
);