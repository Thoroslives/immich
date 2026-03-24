#!/usr/bin/env bash
OPENAPI_GENERATOR_VERSION=v7.21.0

# usage: ./bin/generate-open-api.sh

function dart {
  rm -rf ../mobile/openapi

  cd ./templates/mobile
  curl -fsSL -o api.mustache https://raw.githubusercontent.com/OpenAPITools/openapi-generator/$OPENAPI_GENERATOR_VERSION/modules/openapi-generator/src/main/resources/dart2/api.mustache
  patch --forward --no-backup-if-mismatch -u api.mustache <api.mustache.patch

  cd ../..
  pnpm dlx @openapitools/openapi-generator-cli generate -g dart -i ./immich-openapi-specs.json -o ../mobile/openapi -t ./templates/mobile --additional-properties=useOptional=true,patchOnly=true

  # Don't include analysis_options.yaml for the generated openapi files
  # so that language servers can properly exclude the mobile/openapi directory
  rm ../mobile/openapi/analysis_options.yaml
}

function typescript {
  pnpm dlx oazapfts --optimistic --argumentStyle=object --useEnumType --allSchemas immich-openapi-specs.json typescript-sdk/src/fetch-client.ts
  pnpm --filter @immich/sdk install --frozen-lockfile
  pnpm --filter @immich/sdk build
}

# requires server to be built
(
  cd ..
  SHARP_IGNORE_GLOBAL_LIBVIPS=true pnpm --filter immich build
  pnpm --filter immich sync:open-api
)

if [[ $1 == 'dart' ]]; then
  dart
elif [[ $1 == 'typescript' ]]; then
  typescript
else
  dart
  typescript
fi
