web: BOOT_TIME=$(TZ='America/Sao_Paulo' date --rfc-3339 seconds) bundle exec puma -t 5:5 -p ${PORT:-3000} -e ${RACK_ENV:-development}
