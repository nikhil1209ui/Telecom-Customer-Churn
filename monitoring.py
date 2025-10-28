from prometheus_client import start_http_server, Summary
import time
import random

# Create a Prometheus metric to track request latency
REQUEST_TIME = Summary('request_processing_seconds', 'Time spent processing request')

@REQUEST_TIME.time()
def process_request():
    """Simulates request processing time — replace this with your prediction logic"""
    time.sleep(random.random())

if __name__ == "__main__":
    # Start Prometheus metrics server on port 8000
    start_http_server(8000)
    print("🚀 Prometheus metrics server running on port 8000...")

    # Simulate continuous request handling
    while True:
        process_request()