SELECT nome_cliente, COUNT(*) AS total_compras 
FROM tabelaclientes 
JOIN pedidos ON tabelaclientes.ID_cliente = pedidos.ID_cliente
GROUP BY nome_cliente
ORDER BY total_compras DESC;