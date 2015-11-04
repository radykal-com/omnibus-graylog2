name "post-install"

always_build true

source :path => File.expand_path("files", Config.project_root)

build do
  mkdir "#{install_dir}/embedded/share/docker"
  copy "#{project_dir}/docker/docker_environment", "#{install_dir}/embedded/share/docker/"
  copy "#{project_dir}/docker/run_graylogctl", "#{install_dir}/embedded/share/docker/"
  copy "#{project_dir}/docker/my_init", "#{install_dir}/embedded/share/docker/"
  sync "#{project_dir}/data/contentpacks/", "#{install_dir}/contentpacks/"
end
