package webapi

import "local.packages/db"

import (
	"log"
	"net/http"
	"encoding/json"

	"github.com/labstack/echo/v4"
)

// 取得したデータをいれる構造体を準備する
type User struct {
	id   int
	name string
	email string
	created_at string
	updated_at string
}

func GetUser(c echo.Context) error {
	db := db.ConnectOnly()
	rows, err := db.Query("SELECT * FROM users")

	if err != nil {
		log.Fatal(err)
	}
	defer rows.Close()

	var user User
	userlist := map[string]string{}
	// SQLの実行
	for rows.Next() {
		err := rows.Scan(&user.id, &user.name, &user.email, &user.created_at, &user.updated_at)

		if err != nil {
			panic(err.Error())
		}
		userlist[string(user.id)] = user.name
		log.Println(user.id, user.name)
	}

	data, _ := json.Marshal(userlist)
	return c.String(http.StatusOK, string(data))
}