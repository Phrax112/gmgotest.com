package main

import (
    "fmt"
    "net/http"
)

func handlerFunc (w http.ResponseWriter, r *http.Request) {
    fmt.Fprint(w, "<h1>Welcome to my awesomish site!</h1>")
    fmt.Fprint(w, w)
    fmt.Fprint(w, r)
}

func main () {
    http.HandleFunc("/", handlerFunc)
    http.ListenAndServe(":3000", nil)
}
