-- Tạo cơ sở dữ liệu ProductA
CREATE DATABASE ProductA;
GO

-- Sử dụng cơ sở dữ liệu ProductA
USE ProductA;
GO

-- 1. Tạo bảng CATEGORY
CREATE TABLE Category (
    Id INT IDENTITY(1,1) PRIMARY KEY,       -- Khóa chính tự động tăng[cite: 1]
    Name NVARCHAR(100) NOT NULL UNIQUE,     -- Không rỗng, không trùng[cite: 1]
    Status TINYINT DEFAULT 1,               -- Mặc định 1[cite: 1]
    CreatedDate DATE DEFAULT GETDATE(),     -- Mặc định ngày hiện tại[cite: 1]
    Image VARCHAR(100) NULL,                -- Kiểu Varchar, rỗng/null[cite: 1]
    Description NVARCHAR(350) NULL          -- Kiểu Nvarchar, rỗng/null[cite: 1]
);
GO

-- 2. Tạo bảng PRODUCT
CREATE TABLE Product (
    Id INT IDENTITY(1,1) PRIMARY KEY,       -- Khóa chính tự động tăng[cite: 1]
    Name NVARCHAR(100) NOT NULL UNIQUE,     -- Không rỗng, không trùng[cite: 1]
    Price FLOAT NOT NULL,                   -- Không rỗng[cite: 1]
    salePrice FLOAT DEFAULT 0,              -- Mặc định 0[cite: 1]
    Status TINYINT DEFAULT 1,               -- Mặc định 1[cite: 1]
    CategoryId INT NOT NULL,                -- Không rỗng[cite: 1]
    CreatedDate DATE DEFAULT GETDATE(),     -- Mặc định ngày hiện tại[cite: 1]
    Image VARCHAR(100) NULL,                -- Rỗng[cite: 1]
    Description NVARCHAR(350) NULL,         -- Rỗng[cite: 1]
    CONSTRAINT FK_Product_Category FOREIGN KEY (CategoryId) REFERENCES Category(Id) -- Khóa ngoại liên kết với bảng Category[cite: 1]
);
GO

-- 3. Tạo bảng BANNER
CREATE TABLE Banner (
    Id INT IDENTITY(1,1) PRIMARY KEY,       -- Khóa chính tự động tăng[cite: 1]
    Name NVARCHAR(100) NOT NULL UNIQUE,     -- Không rỗng, không trùng[cite: 1]
    Status TINYINT DEFAULT 1,               -- Mặc định 1[cite: 1]
    Prioty INT DEFAULT 0,                   -- Mặc định 0[cite: 1]
    Image VARCHAR(100) NULL,                -- Rỗng[cite: 1]
    Description NVARCHAR(350) NULL          -- Rỗng[cite: 1]
);
GO

-- 4. Tạo bảng BLOG
CREATE TABLE Blog (
    Id INT IDENTITY(1,1) PRIMARY KEY,       -- Khóa chính tự động tăng[cite: 1]
    Name NVARCHAR(100) NOT NULL UNIQUE,     -- Không rỗng, không trùng[cite: 1]
    Status TINYINT DEFAULT 1,               -- Mặc định 1[cite: 1]
    CreatedDate DATE DEFAULT GETDATE()      -- Mặc định ngày hiện tại[cite: 1]
);
GO