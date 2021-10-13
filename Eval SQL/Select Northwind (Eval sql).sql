

/*Exo 1*/

 SELECT Companyname AS 'Société' ,Contactname AS 'contact' , Contacttitle AS 'fonction', Phone AS 'Téléphone' 
 FROM customers 
WHERE Country= 'France' ;

/*Exo 2*/

SELECT Productname AS 'Produit', Unitprice AS 'Prix' 
FROM products
JOIN suppliers ON suppliers.SupplierID=products.supplierID
WHERE CompanyName = 'Exotic Liquids' ;

/*Exo 3*/

SELECT companyname, COUNT(UnitsOnOrder) as 'Nombre produits'
FROM suppliers
Join products on products.supplierid = suppliers.supplierid
WHERE country ='france'
GROUP BY companyname
ORDER BY COUNT(unitsonorder) DESC ;

/*Exo 4*/

SELECT companyname, COUNT(orderid)
FROM customers
JOIN orders on orders.customerid = customers.customerid
WHERE country = 'france'
GROUP BY companyName
HAVING COUNT(orderid) > 10 ;

/*Exo 5*/

SELECT companyname AS 'Client', SUM(unitprice * quantity) as 'CA', country AS 'Pays'
FROM customers
JOIN orders on orders.customerid = customers.customerid
JOIN `order details` ON `order details`.orderid = orders.orderid 
GROUP BY companyname,country
HAVING SUM(unitprice * quantity) > 30000
ORDER BY SUM(unitprice * quantity) DESC ;

/*Exo 6*/

SELECT shipcountry AS 'Pays'
FROM orders
JOIN `order details` ON `order details`.orderid = orders.orderid 
JOIN products ON  products.productId = `order details`.productId
JOIN suppliers ON  suppliers.supplierid = products.supplierid
WHERE suppliers.companyname = 'exotic liquids'
GROUP BY shipcountry ;

/*Exo 7*/

SELECT SUM(unitprice*quantity) as 'Montant des ventes 97'
FROM `order details`
JOIN orders on orders.orderid = `order details`.orderid
WHERE YEAR(orderdate) = 1997 ;

/*Exo 8*/

SELECT MONTH(orderdate) AS 'Mois 97', SUM(unitprice*quantity) as 'Montant des ventes'
FROM `order details`
JOIN orders on orders.orderid = `order details`.orderid
WHERE YEAR(orderdate) = 1997
GROUP BY MONTH(orderdate)
ORDER BY MONTH(orderdate) ASC ;

/*Exo 9*/

SELECT MAX(orderdate) AS 'Date de dernière commande'
FROM orders
JOIN customers ON customers.customerid = orders.customerid
WHERE companyname = 'Du monde entier' ;

/*Exo 10*/

SELECT AVG(DATEDIFF(shippeddate,orderdate)) AS 'Delai moyen de livraison en jours'
FROM orders ;
















 