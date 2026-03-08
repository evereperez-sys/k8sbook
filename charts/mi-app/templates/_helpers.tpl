{{/* Define el nombre completo */}}
{{- define "mi-app.fullname" -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}
