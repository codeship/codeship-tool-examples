package main

import (
	"log"
	"net/http"
)

func main() {
	http.HandleFunc("/", func(w http.ResponseWriter, r *http.Request) {
		log.Printf("Request: %q", r.URL.Path)
		w.Write([]byte("Hello\n"))
	})

	log.Println("starting on", ":3000")
	log.Fatal(http.ListenAndServe(":3000", nil))
}
