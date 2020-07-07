#  Scratch-Docker-Image

We are using our Ubuntu 16.04 LTS Desktop for creating base image.Hence,all commands are for debian/ubuntu system.

 1.Login as root or superuser
   Either login as root or become superuser by using command sudo su
       
 2.Create directory for docker image workshop
   Create directory for docker base image work and change to after creating it.
       
                     
                     mkdir -p /opt/docker_base_images
                     cd /opt/docker_base_images
                     
  3.Install debootstrap
           
                      apt install debootstrap
                      
  4. Run debootstrap
         
                      debootstrap bionic bionic > /dev/null
                      
                      
  5. Explore the newly created docker image directory
    
                       ls bionic/
                       
                       cat bionic/etc/lsb-release 
     output:
               
                        DISTRIB_ID=Ubuntu
                        DISTRIB_RELEASE=18.04
                        DISTRIB_CODENAME=bionic
                        DISTRIB_DESCRIPTION="Ubuntu 18.04 LTS"
                        
   6.Now import the docker image in local system.
    
    
                         sudo tar -C bionic -c . | docker import - bionic
                         
   7. List docker images
    
                        docker images
                        
   8. Verify the new docker image
    
                        docker run bionic cat /etc/lsb-release
                        
   9. Tag and push the image to docker-registry.
