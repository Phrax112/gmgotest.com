package main

import (
    "fmt"
    "net/http"
)

func handlerFunc (w http.ResponseWriter, r *http.Request) {
    w.Header().Set("Content-Type", "text/html")
    fmt.Println("someone visited the website\n", r)
    if r.URL.Path == "/" {
        fmt.Fprint(w, "<h1>Welcome to my awesomish site!</h1>")
    } else if r.URL.Path == "/contact" {
        fmt.Fprint(w, "Send an email to <a href=\"mailto:support@gmgotest.com\">support@gmgotest.com</a>.")
    } else {
        w.WriteHeader(http.StatusNotFound)
        fmt.Fprint(w, "<h1>We could not find that page :(</h1>")
    }
}

func main () {
    http.HandleFunc("/", handlerFunc)
    http.ListenAndServe(":3000", nil)
}
