package main

import (
    "fmt"
    "log"
    "net/http"
)

// Handler function
func helloHandler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hello, World! Docker task #4!")
}

func main() {
    // set the route for /
    http.HandleFunc("/", helloHandler)

    // run server
    fmt.Println("Starting server on :8000")
    if err := http.ListenAndServe(":8000", nil); err != nil {
        log.Fatal(err)
    }
}
