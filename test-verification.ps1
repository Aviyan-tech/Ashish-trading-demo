# Verification script for Aashish Trading Demo
Write-Host "`n=== AASHISH TRADING DEMO - VERIFICATION TEST ===" -ForegroundColor Cyan
Write-Host "Server: http://localhost:5500" -ForegroundColor Gray
Write-Host ""

# Step 1: Check images folder
Write-Host "STEP 1: Checking images folder..." -ForegroundColor Yellow
Get-ChildItem images -Force | Format-Table Name, Length -AutoSize
Write-Host ""

# Step 2: Instructions for browser console tests
Write-Host "STEP 2: Browser Console Tests" -ForegroundColor Yellow
Write-Host "Please open http://localhost:5500/index.html#home in your browser" -ForegroundColor White
Write-Host "Press Ctrl+Shift+R to hard refresh, then run these commands in Console:" -ForegroundColor White
Write-Host ""

Write-Host "IMAGE CHECK:" -ForegroundColor Green
Write-Host '(()=>{const imgs=[...document.querySelectorAll(".hero-image")];return imgs.map(i=>({src:i.getAttribute("src"),loaded:i.complete&&i.naturalWidth>0,w:i.naturalWidth,h:i.naturalHeight,shownWidth:Math.round(i.getBoundingClientRect().width),shownHeight:Math.round(i.getBoundingClientRect().height),hidden:i.classList.contains("hidden"),display:getComputedStyle(i).display}))})()' -ForegroundColor Cyan
Write-Host ""

Write-Host "SEARCH BAR ALIGNMENT:" -ForegroundColor Green
Write-Host '(()=>{const r=e=>{const b=document.querySelector(e).getBoundingClientRect();return b.top+b.height/2};return {inputVsBar:Math.abs(r("#searchInput")-r(".search-bar")),btnVsBar:Math.abs(r(".search-btn")-r(".search-bar")),iconVsText:Math.abs(r(".search-btn svg")-r(".search-btn span")),logoVsBar:Math.abs(r(".logo")-r(".search-bar"))}})()' -ForegroundColor Cyan
Write-Host ""

Write-Host "STEP 3: Expected Results" -ForegroundColor Yellow
Write-Host "Images: All 3 should show loaded:true, w>200, h>200, shownWidth>200" -ForegroundColor White
Write-Host "Search: All 4 alignment values should be ≤1" -ForegroundColor White
Write-Host ""

Write-Host "OR use the automated test page:" -ForegroundColor Yellow
Write-Host "http://localhost:5500/test-console.html" -ForegroundColor Cyan
Write-Host ""
