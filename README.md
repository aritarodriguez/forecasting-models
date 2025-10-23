# forecasting-models

**Time Series Forecasting in R**

This repository contains two R scripts that forecast time series data using Excel inputs.

**Files**
Forecastin multi-item — Reshapes multiple variables (P1–P10) into a single time series object and builds ARIMA models for all series at once.
Forecasting item  — Runs Holt-Winters and ARIMA models for each product (e.g., P1, P2) separately and compares residual errors.

**Steps**
Install and load required libraries (forecast, fable, feasts, tsibble, ggplot2, etc.).

Read the Excel file Lista.xlsx (sheet "Hoja1").

Create monthly time series (ts objects) from each product column.

Fit Holt-Winters and ARIMA models.

Forecast 12 months ahead and visualize results.

Compare models using residual sums.

**Output:** Forecast plots and model evaluation results in the console.
