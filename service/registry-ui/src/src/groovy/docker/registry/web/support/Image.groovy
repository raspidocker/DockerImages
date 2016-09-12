package docker.registry.web.support

class Image {
    String checksum
    String displayName
    String pullName
    String architecture
    String author
    String id
    String name
    String description
    String docker_version
    String parent
    String os
    String tag
    String created
    String container
    String comment
    Map<String, String> config
    Map<String, String> container_config
    String Size

    @Override
    public String toString() {
        return "Image{" +
                "checksum='" + checksum + '\'' +
                ", displayName='" + displayName + '\'' +
                ", pullName='" + pullName + '\'' +
                ", architecture='" + architecture + '\'' +
                ", author='" + author + '\'' +
                ", id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", description='" + description + '\'' +
                ", docker_version='" + docker_version + '\'' +
                ", parent='" + parent + '\'' +
                ", os='" + os + '\'' +
                ", tag='" + tag + '\'' +
                ", created='" + created + '\'' +
                ", container='" + container + '\'' +
                ", comment='" + comment + '\'' +
                ", config=" + config +
                ", container_config=" + container_config +
                ", Size='" + Size + '\'' +
                '}';
    }
}
