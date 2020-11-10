find . -name "*.json"|while read fname; do
    echo "$fname"
    cat "$fname" | python -m json.tool  >> /dev/null && continue || echo "BAD: $fname";
done
