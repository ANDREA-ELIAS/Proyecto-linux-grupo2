#!/bin/bash
# Script: reporte_sistema.sh
# Se genera un reporte bàsico del estado del sistema

echo "==============================="
echo "REPORTE DEL SISTEMA"
echo "Fecha y Hora: $(date)"
echo "Hostname: $(hostname)"
echo "Usuarios conectados: $(who | wc -l)"
echo "Espacio libre en disco (/): $(df -h / | tail -1 | awk '{print $4}')"
echo "Memoria RAM disponible: $(free -h | grep Mem | awk '{print $7}')"
echo "Contenedores Docker activos: $(docker ps -q | wc -l)"
echo "==============================="
