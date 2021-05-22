CREATE TABLE `Bill` (
  `Product_Name` stringvar,
  `Price` intvar,
  `Quantity` intvar,
  `Total` intvar
);

CREATE TABLE `Stock` (
  `Product_Name` stringvar,
  `Price` intvar,
  `Quantity` intvar
);

CREATE TABLE `Product1` (
  `Name` stringvar,
  `Price` intvar,
  `Quantity` intvar
);

CREATE TABLE `Product2` (
  `Name` stringvar,
  `Price` intvar,
  `Quantity` intvar
);

CREATE TABLE `Product3` (
  `Name` stringvar,
  `Price` intvar,
  `Quantity` intvar
);

CREATE TABLE `Product4` (
  `Name` stringvar,
  `Price` intvar,
  `Quantity` intvar
);

CREATE TABLE `Total_Price` (
  `Total` intvar
);

CREATE TABLE `AddStock` (
  `Product_Name` stringvar,
  `Price` intvar,
  `Quantity` intvar
);

ALTER TABLE `Bill` ADD FOREIGN KEY (`Product_Name`) REFERENCES `Product1` (`Name`);

ALTER TABLE `Bill` ADD FOREIGN KEY (`Product_Name`) REFERENCES `Product2` (`Name`);

ALTER TABLE `Bill` ADD FOREIGN KEY (`Product_Name`) REFERENCES `Product3` (`Name`);

ALTER TABLE `Bill` ADD FOREIGN KEY (`Product_Name`) REFERENCES `Product4` (`Name`);

ALTER TABLE `Bill` ADD FOREIGN KEY (`Price`) REFERENCES `Product1` (`Price`);

ALTER TABLE `Bill` ADD FOREIGN KEY (`Price`) REFERENCES `Product2` (`Price`);

ALTER TABLE `Bill` ADD FOREIGN KEY (`Price`) REFERENCES `Product3` (`Price`);

ALTER TABLE `Bill` ADD FOREIGN KEY (`Price`) REFERENCES `Product4` (`Price`);

ALTER TABLE `Bill` ADD FOREIGN KEY (`Quantity`) REFERENCES `Product1` (`Quantity`);

ALTER TABLE `Bill` ADD FOREIGN KEY (`Quantity`) REFERENCES `Product2` (`Quantity`);

ALTER TABLE `Bill` ADD FOREIGN KEY (`Quantity`) REFERENCES `Product3` (`Quantity`);

ALTER TABLE `Bill` ADD FOREIGN KEY (`Quantity`) REFERENCES `Product4` (`Quantity`);

ALTER TABLE `Total_Price` ADD FOREIGN KEY (`Total`) REFERENCES `Bill` (`Total`);

ALTER TABLE `AddStock` ADD FOREIGN KEY (`Product_Name`) REFERENCES `Stock` (`Product_Name`);

ALTER TABLE `AddStock` ADD FOREIGN KEY (`Price`) REFERENCES `Stock` (`Price`);

ALTER TABLE `AddStock` ADD FOREIGN KEY (`Quantity`) REFERENCES `Stock` (`Quantity`);
