module github.com:zyd0482/meeting_server/

go 1.13

require (
	github.com/gin-gonic/gin v1.5.0
	github.com/go-ini/ini v1.52.0 // indirect
	github.com/go-playground/universal-translator v0.17.0 // indirect
	github.com/go-sql-driver/mysql v1.5.0 // indirect
	github.com/golang/protobuf v1.3.3 // indirect
	github.com/jinzhu/gorm v1.9.12 // indirect
	github.com/json-iterator/go v1.1.9 // indirect
	github.com/leodido/go-urn v1.2.0 // indirect
	github.com/mattn/go-isatty v0.0.12 // indirect
	github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd // indirect
	github.com/modern-go/reflect2 v1.0.1 // indirect
	github.com/unknwon/com v1.0.1 // indirect
	golang.org/x/sys v0.0.0-20200202164722-d101bd2416d5 // indirect
	gopkg.in/go-playground/validator.v9 v9.31.0 // indirect
	gopkg.in/yaml.v2 v2.2.8 // indirect
)

replace (
	github.com:zyd0482/meeting_server/conf => /conf
	github.com:zyd0482/meeting_server/middleware => /middleware
	github.com:zyd0482/meeting_server/models => /models
	github.com:zyd0482/meeting_server/pkg => /pkg
	github.com:zyd0482/meeting_server/pkg/e => /pkg/e
	github.com:zyd0482/meeting_server/pkg/setting => /pkg/setting
	github.com:zyd0482/meeting_server/pkg/util => /pkg/util
	github.com:zyd0482/meeting_server/routers => /routers
	github.com:zyd0482/meeting_server/runtime => /runtime
)
