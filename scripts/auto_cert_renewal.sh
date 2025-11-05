#script to automatically renew SSL certificates before they expire.

#!/bin/bash
certbot renew --quiet
