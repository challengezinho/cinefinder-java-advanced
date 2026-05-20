# Initialize Java repo with incremental commit history
Set-Location $PSScriptRoot\..

if (-not (Test-Path .git)) { git init -b main }

git add .gitignore
git commit -m "chore: setup spring boot gradle e gitignore"

function Commit-Group {
  param([string]$Message, [string[]]$Paths)
  foreach ($p in $Paths) {
    if (Test-Path $p) { git add $p }
  }
  git commit -m $Message
}

Commit-Group "chore: configuracao aplicacao e migrations flyway" @(
  "build.gradle", "settings.gradle", "gradle/wrapper/gradle-wrapper.properties",
  "gradle/wrapper/gradle-wrapper.jar", "gradlew", "gradlew.bat",
  "system.properties", "src/main/resources/application.yaml",
  "src/main/resources/db/migration"
)

Commit-Group "feat: entidades domain models e repositories" @(
  "src/main/java/br/com/fiap/cinefinder_v3/App.java",
  "src/main/java/br/com/fiap/cinefinder_v3/model",
  "src/main/java/br/com/fiap/cinefinder_v3/repository",
  "src/main/java/br/com/fiap/cinefinder_v3/exception"
)

Commit-Group "feat: dtos e controllers api rest filmes reviews listas" @(
  "src/main/java/br/com/fiap/cinefinder_v3/dto/CreateMovieListDTO.java",
  "src/main/java/br/com/fiap/cinefinder_v3/dto/CreateReviewDTO.java",
  "src/main/java/br/com/fiap/cinefinder_v3/dto/ErrorResponse.java",
  "src/main/java/br/com/fiap/cinefinder_v3/dto/JwtResponse.java",
  "src/main/java/br/com/fiap/cinefinder_v3/dto/LoginDTO.java",
  "src/main/java/br/com/fiap/cinefinder_v3/dto/MovieListResponse.java",
  "src/main/java/br/com/fiap/cinefinder_v3/dto/MovieResponse.java",
  "src/main/java/br/com/fiap/cinefinder_v3/dto/RegisterDTO.java",
  "src/main/java/br/com/fiap/cinefinder_v3/dto/UpdateMovieListDTO.java",
  "src/main/java/br/com/fiap/cinefinder_v3/dto/UpdateReviewDTO.java",
  "src/main/java/br/com/fiap/cinefinder_v3/controller/MovieController.java",
  "src/main/java/br/com/fiap/cinefinder_v3/controller/ReviewController.java",
  "src/main/java/br/com/fiap/cinefinder_v3/controller/MovieListController.java",
  "src/main/java/br/com/fiap/cinefinder_v3/controller/AdminController.java",
  "src/main/java/br/com/fiap/cinefinder_v3/service/MovieService.java",
  "src/main/java/br/com/fiap/cinefinder_v3/service/ReviewService.java",
  "src/main/java/br/com/fiap/cinefinder_v3/service/MovieListService.java",
  "src/main/java/br/com/fiap/cinefinder_v3/config/CorsConfig.java",
  "src/main/java/br/com/fiap/cinefinder_v3/config/GlobalExceptionHandler.java"
)

Commit-Group "feat: seguranca jwt autenticacao login e registro" @(
  "src/main/java/br/com/fiap/cinefinder_v3/config/SecurityConfig.java",
  "src/main/java/br/com/fiap/cinefinder_v3/config/JwtFilter.java",
  "src/main/java/br/com/fiap/cinefinder_v3/service/JwtService.java",
  "src/main/java/br/com/fiap/cinefinder_v3/service/CustomUserDetailsService.java",
  "src/main/java/br/com/fiap/cinefinder_v3/controller/AuthController.java"
)

Commit-Group "feat: endpoint auth me e review response com movieId" @(
  "src/main/java/br/com/fiap/cinefinder_v3/dto/UserProfileResponse.java",
  "src/main/java/br/com/fiap/cinefinder_v3/dto/ReviewResponse.java"
)

Commit-Group "feat: integracao oracle apex proxy top movies" @(
  "src/main/java/br/com/fiap/cinefinder_v3/dto/ApexTopMoviesWrapper.java",
  "src/main/java/br/com/fiap/cinefinder_v3/dto/TopMovieApexResponse.java",
  "src/main/java/br/com/fiap/cinefinder_v3/service/ApexIntegrationService.java",
  "src/main/java/br/com/fiap/cinefinder_v3/controller/ApexController.java"
)

Commit-Group "test: smoke test aplicacao spring boot" @(
  "src/test/java"
)

if (Test-Path "README.md") {
  git add README.md
  git commit -m "docs: readme backend api cinefinder"
}

Write-Host "`n=== Historico Java ===" -ForegroundColor Green
git log --oneline
