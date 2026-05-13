
cat << 'EOF' > app.py
import http.server
import socketserver

PORT = 5000
Handler = http.server.SimpleHTTPRequestHandler

print(f"Production Web Server starting on port {PORT}...")
with socketserver.TCPServer(("", PORT), Handler) as httpd:
    httpd.serve_forever()
EOF

