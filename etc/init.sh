sudo unlink /etc/nginx/sitex-enabled/default
sudo ln -sf /home/box/web/etc/ngix.conf /etc/nginx/sites-enabled/default
echo  Configuration done
sudo /etc/init.d/nginx restart
sudo ln -sf /home/box/web/etc/gunicorn.conf /etc/gunicorn.d/test
echo "Unicorn done"
sudo /etc/init.d/gunicorn restart

