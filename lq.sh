cd
cd GitHub/languageq
rm languageq.zip
cd src 
zip -r languageq.zip  .
mv languageq.zip ../
cd ..
aws lambda update-function-code --function-name languageq --zip-file fileb://languageq.zip

echo '---------------------------------------------------'
echo 'languageq Zip Created and AWS Lambda Function updated'
echo '---------------------------------------------------'
