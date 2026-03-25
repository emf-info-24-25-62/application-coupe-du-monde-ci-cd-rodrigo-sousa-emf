# Quel image sera utiliser
FROM php:8.2-apache

# dans quel dossier on executera les commandes Dockerfile
WORKDIR /var/www/html

# copier le fichier et le mettre dans le dossier actuel
COPY index.php .

# Exposer le port 80 pour documenter
EXPOSE 80

# changer le proprietaire de /var/www/html
RUN chown -R www-data:www-data /var/www/html