# Match this tag to the Grafana version running on your App Service.
FROM grafana/grafana:13.0.1

# Grafana runs as UID 472 inside the container.
COPY --chown=472:472 dist /var/lib/grafana/plugins/rebl-gantt-panel

# Required because this is an unsigned (forked) plugin.
ENV GF_PLUGINS_ALLOW_LOADING_UNSIGNED_PLUGINS=rebl-gantt-panel
