require 'vagrant/action/builder'

module Vagrant
  module Action
    autoload :Environment, 'vagrant/action/environment'
    autoload :Runner,      'vagrant/action/runner'
    autoload :Warden,      'vagrant/action/warden'

    module Box
      autoload :Add,       'vagrant/action/box/add'
      autoload :Download,  'vagrant/action/box/download'
      autoload :Verify,    'vagrant/action/box/verify'
    end

    # Builtin contains middleware classes that are shipped with Vagrant-core
    # and are thus available to all plugins as a "standard library" of sorts.
    module Builtin
      autoload :Call, "vagrant/action/builtin/call"
      autoload :Confirm, "vagrant/action/builtin/confirm"
      autoload :EnvSet,  "vagrant/action/builtin/env_set"
      autoload :SSHExec, "vagrant/action/builtin/ssh_exec"
      autoload :SSHRun, "vagrant/action/builtin/ssh_run"
    end

    module Env
      autoload :Set, 'vagrant/action/env/set'
    end

    module General
      autoload :CheckVirtualbox, 'vagrant/action/general/check_virtualbox'
      autoload :Package,  'vagrant/action/general/package'
      autoload :Validate, 'vagrant/action/general/validate'
    end

    module VM
      autoload :Boot,                'vagrant/action/vm/boot'
      autoload :CheckAccessible,     'vagrant/action/vm/check_accessible'
      autoload :CheckBox,            'vagrant/action/vm/check_box'
      autoload :CheckGuestAdditions, 'vagrant/action/vm/check_guest_additions'
      autoload :CheckPortCollisions, 'vagrant/action/vm/check_port_collisions'
      autoload :CleanMachineFolder,  'vagrant/action/vm/clean_machine_folder'
      autoload :ClearForwardedPorts, 'vagrant/action/vm/clear_forwarded_ports'
      autoload :ClearNetworkInterfaces, 'vagrant/action/vm/clear_network_interfaces'
      autoload :ClearSharedFolders,  'vagrant/action/vm/clear_shared_folders'
      autoload :Customize,           'vagrant/action/vm/customize'
      autoload :DefaultName,         'vagrant/action/vm/default_name'
      autoload :Destroy,             'vagrant/action/vm/destroy'
      autoload :DestroyUnusedNetworkInterfaces, 'vagrant/action/vm/destroy_unused_network_interfaces'
      autoload :DiscardState,        'vagrant/action/vm/discard_state'
      autoload :Export,              'vagrant/action/vm/export'
      autoload :ForwardPorts,        'vagrant/action/vm/forward_ports'
      autoload :Halt,                'vagrant/action/vm/halt'
      autoload :HostName,            'vagrant/action/vm/host_name'
      autoload :Import,              'vagrant/action/vm/import'
      autoload :MatchMACAddress,     'vagrant/action/vm/match_mac_address'
      autoload :Network,             'vagrant/action/vm/network'
      autoload :NFS,                 'vagrant/action/vm/nfs'
      autoload :Package,             'vagrant/action/vm/package'
      autoload :PackageVagrantfile,  'vagrant/action/vm/package_vagrantfile'
      autoload :Provision,           'vagrant/action/vm/provision'
      autoload :ProvisionerCleanup,  'vagrant/action/vm/provisioner_cleanup'
      autoload :PruneNFSExports,     'vagrant/action/vm/prune_nfs_exports'
      autoload :Resume,              'vagrant/action/vm/resume'
      autoload :SaneDefaults,        'vagrant/action/vm/sane_defaults'
      autoload :ShareFolders,        'vagrant/action/vm/share_folders'
      autoload :SetupPackageFiles,   'vagrant/action/vm/setup_package_files'
      autoload :Suspend,             'vagrant/action/vm/suspend'
    end
  end
end
