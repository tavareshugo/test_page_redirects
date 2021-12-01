VERSION=$(cat versions.yaml | grep "latest" | sed 's/latest: "//' | sed 's/".*//')

echo "<!DOCTYPE html>
<html>
<head>
  <title>Redirecting</title>
  <script>
    window.location.replace('$VERSION');
  </script>
</head>
<body>
</body>
</html>" > latest/index.html