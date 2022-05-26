import http.server
import socketserver
import logging
PORT = 8083
Handler = http.server.SimpleHTTPRequestHandler
with socketserver.TCPServer(("", PORT), Handler) as httpd:
    logging.warning(F'DOMINIKA RADWAN, NA PORCIE=<{PORT}>')
    httpd.serve_forever()


 
