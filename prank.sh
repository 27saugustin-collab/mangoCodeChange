echo "Prank active... Press Ctrl+C to stop."

while true; do
  # Get current mouse coordinates
  eval $(xdotool getmouselocation --shell)
  
  # Check if mouse is inside the forbidden box
  if [ $X -ge $X_MIN ] && [ $X -le $X_MAX ] && [ $Y -ge $Y_MIN ] && [ $Y -le $Y_MAX ]; then
    # Teleport mouse to the top-left corner
    xdotool mousemove 0 0
  fi
  
  # Tiny sleep to prevent high CPU usage
  sleep 0.05
done
