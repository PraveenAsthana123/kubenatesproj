provider "google" {
 project     = "gcp-anthos-359617"
 region      = "us-central1"
}

# A single Google Cloud Engine instance
resource "google_compute_instance" "default" {
	name         = "praveen-vm"
	machine_type = "n1-standard-2"
	zone         = "us-central1-a"

	boot_disk {
		initialize_params {
			image = "ubuntu-os-cloud/ubuntu-2204-lts"
		}
	}

	network_interface {
		network = "default"
        access_config {
				# Include this section to give the VM an external ip address
		}
	}

}
