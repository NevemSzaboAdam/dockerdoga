package main

import (
    "fmt"
    "log"
    "net/http"
)

// Handler function
func helloHandler(w http.ResponseWriter, r *http.Request) {
    fmt.Fprintf(w, "Hello, World!")
}

func main() {
    // set the route for /
    http.HandleFunc("/", helloHandler)

    // run server
    fmt.Println("Starting server on :5000")
    if err := http.ListenAndServe(":5000", nil); err != nil {
        log.Fatal(err)
    }
}
