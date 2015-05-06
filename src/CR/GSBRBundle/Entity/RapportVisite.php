<?php

namespace CR\GSBRBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Rapport_visite
 *
 * @ORM\Table(name="rapport_visite")
 * @ORM\Entity(repositoryClass="CR\GSBRBundle\Entity\RapportVisiteRepository")
 */
class RapportVisite
{
    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="dateRapport", type="datetime")
     */
    private $dateRapport;

    /**
     * @var string
     *
     * @ORM\Column(name="bilan", type="string", length=255)
     */
    private $bilan;

    /**
     * @var string
     *
     * @ORM\Column(name="motif", type="string", length=255)
     */
    private $motif;

    /**
    * @ORM\ManyToOne(targetEntity="CR\GSBRBundle\Entity\Visiteur")
    */
    private $visiteur;

    /**
    * @ORM\ManyToOne(targetEntity="CR\GSBRBundle\Entity\Praticien")
     */
    private $medecin;


    /**
     * Get id
     *
     * @return integer 
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set dateRapport
     *
     * @param \DateTime $dateRapport
     * @return RapportVisite
     */
    public function setDateRapport($dateRapport)
    {
        $this->dateRapport = $dateRapport;
    
        return $this;
    }

    /**
     * Get dateRapport
     *
     * @return \DateTime 
     */
    public function getDateRapport()
    {
        return $this->dateRapport;
    }

    /**
     * Set bilan
     *
     * @param string $bilan
     * @return RapportVisite
     */
    public function setBilan($bilan)
    {
        $this->bilan = $bilan;
    
        return $this;
    }

    /**
     * Get bilan
     *
     * @return string 
     */
    public function getBilan()
    {
        return $this->bilan;
    }

    /**
     * Set motif
     *
     * @param string $motif
     * @return RapportVisite
     */
    public function setMotif($motif)
    {
        $this->motif = $motif;
    
        return $this;
    }

    /**
     * Get motif
     *
     * @return string 
     */
    public function getMotif()
    {
        return $this->motif;
    }

    /**
     * Set visiteurId
     *
     * @param integer $visiteurId
     * @return RapportVisite
     */
    public function setVisiteurId($visiteurId)
    {
        $this->visiteurId = $visiteurId;
    
        return $this;
    }

    /**
     * Get visiteurId
     *
     * @return integer 
     */
    public function getVisiteurId()
    {
        return $this->visiteurId;
    }

    /**
     * Set medecinId
     *
     * @param integer $medecinId
     * @return RapportVisite
     */
    public function setMedecinId($medecinId)
    {
        $this->medecinId = $medecinId;
    
        return $this;
    }

    /**
     * Get medecinId
     *
     * @return integer 
     */
    public function getMedecinId()
    {
        return $this->medecinId;
    }

    /**
     * Set visiteur
     *
     * @param \CR\GSBRBundle\Entity\Visiteur $visiteur
     * @return RapportVisite
     */
    public function setVisiteur(\CR\GSBRBundle\Entity\Visiteur $visiteur = null)
    {
        $this->visiteur = $visiteur;
    
        return $this;
    }

    /**
     * Get visiteur
     *
     * @return \CR\GSBRBundle\Entity\Visiteur 
     */
    public function getVisiteur()
    {
        return $this->visiteur;
    }

    /**
     * Set medecin
     *
     * @param \CR\GSBRBundle\Entity\Praticien $medecin
     * @return RapportVisite
     */
    public function setMedecin(\CR\GSBRBundle\Entity\Praticien $medecin = null)
    {
        $this->medecin = $medecin;
    
        return $this;
    }

    /**
     * Get medecin
     *
     * @return \CR\GSBRBundle\Entity\Praticien 
     */
    public function getMedecin()
    {
        return $this->medecin;
    }
}