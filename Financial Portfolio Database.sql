CREATE DATABASE FinancialPortfolio
GO
USE FinancialPortfolio

CREATE TABLE Investors (
    InvestorID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(255),
    Email VARCHAR(255)
)

CREATE TABLE Portfolios (
    PortfolioID INT PRIMARY KEY IDENTITY(1,1),
    InvestorID INT,
    PortfolioName VARCHAR(255),
    FOREIGN KEY (InvestorID) REFERENCES Investors(InvestorID)
)

CREATE TABLE Securities (
    SecurityID INT PRIMARY KEY IDENTITY(1,1),
    SecurityName VARCHAR(255),
    SecurityType VARCHAR(255)
)

CREATE TABLE Transactions (
    TransactionID INT PRIMARY KEY IDENTITY(1,1),
    PortfolioID INT,
    SecurityID INT,
    TransactionDate DATE,
    TransactionType VARCHAR(255),
    Quantity INT,
    Price DECIMAL(10, 2),
    FOREIGN KEY (PortfolioID) REFERENCES Portfolios(PortfolioID),
    FOREIGN KEY (SecurityID) REFERENCES Securities(SecurityID)
)
CREATE TABLE Returns (
    ReturnID INT PRIMARY KEY IDENTITY(1,1),
    PortfolioID INT,
    ReturnDate DATE,
    ReturnAmount DECIMAL(10, 2),
    FOREIGN KEY (PortfolioID) REFERENCES Portfolios(PortfolioID)
)

CREATE TABLE Dividends (
    DividendID INT PRIMARY KEY IDENTITY(1,1),
    PortfolioID INT,
    DividendDate DATE,
    DividendAmount DECIMAL(10, 2),
    FOREIGN KEY (PortfolioID) REFERENCES Portfolios(PortfolioID)
)



