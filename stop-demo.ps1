# Horizon Observability Demo Stopper
Write-Host "🛑 Stopping Horizon Observability Stack..." -ForegroundColor Yellow

# 1. Run Docker Compose Down
docker-compose -f demo/docker-compose.yaml down

if ($LastExitCode -eq 0) {
    Write-Host "`n✅ Success! All containers have been stopped and removed." -ForegroundColor Green
}
else {
    Write-Host "❌ Failed to stop the stack." -ForegroundColor Red
}
