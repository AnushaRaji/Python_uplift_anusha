{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "53101ca0",
   "metadata": {},
   "outputs": [],
   "source": [
    "\n",
    "# Question 1: Monthly Sales Query\n",
    "\n",
    "#     Write an SQL query to retrieve the monthly sales summary\n",
    "#     from the ORDERS table.\n",
    "\n",
    "#     The query should:\n",
    "#         - Display the order month and year\n",
    "#         - Calculate the total number of orders per month\n",
    "#         - Calculate the total revenue per month\n",
    "#         - Calculate the average order value per month\n",
    "#         - Sort the result by month in ascending order\n",
    "\n",
    "select \n",
    "    month(order_date) as order_month,\n",
    "    year(order_date) as order_year,\n",
    "    count(*) as total_orders,\n",
    "    sum(total_amount) as total_revenue,\n",
    "    avg(total_amount) as avg_order_value\n",
    "from orders\n",
    "group by order_month,order_year\n",
    "order by order_month asc;"
   ]
  }
 ],
 "metadata": {
  "language_info": {
   "name": "python"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
