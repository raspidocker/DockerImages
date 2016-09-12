package docker.registry.web

class Registry {
    String host = "localhost"
    int port
    String apiVersion = "v1"
    String username
    String password
    String protocol = "http"

    def repositoryService

    static constraints = {
        username nullable: true
        password nullable: true
    }

    static transients = ['toUrl', 'repositories', 'ping', 'fromUrl']

    def String toUrl() {
        def resolvedPort = this.port == 80 || this.port <= 0 ? "" : ":" + this.port;
        def urlString = "${this.protocol}://${this.host}${resolvedPort}/${this.apiVersion}"
        if (username) {
            if (password) urlString = urlString.replace("://", "://$username:$password@")
            else urlString = urlString.replace("://", "://$username@")
        }
        urlString
    }

    def getRepositories() {
        repositoryService.index(this)
    }

    def ping() {
        repositoryService.ping(this)
    }

    /**
     * Static factory method for creating an instance from a URL.
     * @param urlStr a url in the format: http://hostOrIP:OptionalPort/v1/
     **/
    static def fromUrl(final String urlStr) {
        if (urlStr?.endsWith("/v1/")) { //FIXME this won't work for new api versions
            def url = urlStr.toURL()
            if (url) {
                def auth = url.userInfo?.split(":")
                return new Registry(
                        protocol: url.protocol,
                        host: url.host,
                        port: url.port == -1 ? 80 : url.port,
                        apiVersion: url.path.replaceAll("\\p{Punct}", ""),
                        username: auth?.length > 0 ? auth[0] : null,
                        password: auth?.length > 1 ? auth[1] : null
                )
            }
        }
        null
    }

    @Override
    public String toString() {
        return "Registry{" +
                "id=" + id +
                ", protocol='" + protocol + '\'' +
                ", host='" + host + '\'' +
                ", port=" + port +
                ", apiVersion='" + apiVersion + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password?.replaceAll("(?s).", "*") + '\'' +
                ", repositoryService=" + repositoryService +
                ", version=" + version +
                '}';
    }
}
