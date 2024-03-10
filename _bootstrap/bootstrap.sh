#!/bin/bash

# System
echo "[+] Installing: Ingress Controller (ingress-nginx)"
kubectl apply -f ../ingress-nginx.yaml
echo
echo "[+] Installing: Certificate Manager (cert-manager)"
kubectl apply -f ../cert-manager.yaml
echo
echo "[+] Installing: Certificate Issuer (cert-issuer)"
kubectl apply -f ../cert-issuer.yaml
echo
echo "[+] Installing: Trust Manager (trust-manager)"
kubectl apply -f ../trust-manager.yaml
echo

# Core Services
echo "[+] Installing: Rancher (rancher)"
kubectl apply -f ../rancher.yaml
echo

# Services
# echo "[+] Installing: Gitmoji (gitmoji)"
# kubectl apply -f ../gitmoji.yaml
# echo
# echo "[+] Installing: HTTPBin (httpbin)"
# kubectl apply -f ../httpbin.yaml
# echo
# echo "[+] Installing: MinIO (minio)"
# kubectl apply -f ../minio.yaml
# echo
# echo "[+] Installing: RabbitMQ (rabbitmq)"
# kubectl apply -f ../rabbitmq.yaml
# echo
