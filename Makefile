clean:
	rm -rf vendor/

fetch_assets:
	CURRENT_DIR="$PWD" && \
	mkdir vendor/ && \
	curl -o vendor/repair.dcr 'https://web.archive.org/web/20031017200123oe_/http://www.disney.co.uk/gadget/images/optheatre/repair.dcr' -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/105.0.5165.179 Safari/537.36' -H 'Accept: */*' -H 'Accept-Language: en-US,en;q=0.5' -H 'Accept-Encoding: gzip, deflate, br' -H 'DNT: 1' -H 'Connection: keep-alive' -H 'Sec-Fetch-Dest: empty' -H 'Sec-Fetch-Mode: cors' -H 'Sec-Fetch-Site: same-origin' -H 'Sec-GPC: 1' -H 'Pragma: no-cache' -H 'Cache-Control: no-cache' -H 'TE: trailers' && \
	mkdir vendor/chunks && \
	cd vendor/chunks && \
	projectorrays --dump-chunks "../repair.dcr" "../repair.dir"
