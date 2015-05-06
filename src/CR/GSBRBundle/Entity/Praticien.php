<?php

namespace CR\GSBRBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Praticien
 *
 * @ORM\Table(name="praticien")
 * @ORM\Entity(repositoryClass="CR\GSBRBundle\Entity\PraticienRepository")
 */
class Praticien
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
     * @var string
     *
     * @ORM\Column(name="nomMedecin", type="string", length=25)
     */
    private $nomMedecin;

    /**
     * @var string
     *
     * @ORM\Column(name="prenomMedecin", type="string", length=30)
     */
    private $prenomMedecin;

    /**
     * @var string
     *
     * @ORM\Column(name="adresseMedecin", type="string", length=50)
     */
    private $adresseMedecin;

    /**
     * @var string
     *
     * @ORM\Column(name="cpMedecin", type="string", length=5)
     */
    private $cpMedecin;

    /**
     * @var string
     *
     * @ORM\Column(name="villeMedecin", type="string", length=25)
     */
    private $villeMedecin;

    /**
     * @var float
     *
     * @ORM\Column(name="coefNotoriete", type="float")
     */
    private $coefNotoriete;

    /**
    * @ORM\ManyToOne(targetEntity="CR\GSBRBundle\Entity\TypePraticien")
    */
    private $typeMedecin;


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
     * Set nomMedecin
     *
     * @param string $nomMedecin
     * @return Praticien
     */
    public function setNomMedecin($nomMedecin)
    {
        $this->nomMedecin = $nomMedecin;
    
        return $this;
    }

    /**
     * Get nomMedecin
     *
     * @return string 
     */
    public function getNomMedecin()
    {
        return $this->nomMedecin;
    }

    /**
     * Set prenomMedecin
     *
     * @param string $prenomMedecin
     * @return Praticien
     */
    public function setPrenomMedecin($prenomMedecin)
    {
        $this->prenomMedecin = $prenomMedecin;
    
        return $this;
    }

    /**
     * Get prenomMedecin
     *
     * @return string 
     */
    public function getPrenomMedecin()
    {
        return $this->prenomMedecin;
    }

    /**
     * Set adresseMedecin
     *
     * @param string $adresseMedecin
     * @return Praticien
     */
    public function setAdresseMedecin($adresseMedecin)
    {
        $this->adresseMedecin = $adresseMedecin;
    
        return $this;
    }

    /**
     * Get adresseMedecin
     *
     * @return string 
     */
    public function getAdresseMedecin()
    {
        return $this->adresseMedecin;
    }

    /**
     * Set cpMedecin
     *
     * @param string $cpMedecin
     * @return Praticien
     */
    public function setCpMedecin($cpMedecin)
    {
        $this->cpMedecin = $cpMedecin;
    
        return $this;
    }

    /**
     * Get cpMedecin
     *
     * @return string 
     */
    public function getCpMedecin()
    {
        return $this->cpMedecin;
    }

    /**
     * Set villeMedecin
     *
     * @param string $villeMedecin
     * @return Praticien
     */
    public function setVilleMedecin($villeMedecin)
    {
        $this->villeMedecin = $villeMedecin;
    
        return $this;
    }

    /**
     * Get villeMedecin
     *
     * @return string 
     */
    public function getVilleMedecin()
    {
        return $this->villeMedecin;
    }

    /**
     * Set coefNotoriete
     *
     * @param float $coefNotoriete
     * @return Praticien
     */
    public function setCoefNotoriete($coefNotoriete)
    {
        $this->coefNotoriete = $coefNotoriete;
    
        return $this;
    }

    /**
     * Get coefNotoriete
     *
     * @return float 
     */
    public function getCoefNotoriete()
    {
        return $this->coefNotoriete;
    }

    /**
     * Set typeMedecinId
     *
     * @param integer $typeMedecinId
     * @return Praticien
     */
    public function setTypeMedecinId($typeMedecinId)
    {
        $this->typeMedecinId = $typeMedecinId;
    
        return $this;
    }

    /**
     * Get typeMedecinId
     *
     * @return integer 
     */
    public function getTypeMedecinId()
    {
        return $this->typeMedecinId;
    }

    /**
     * Set typeMedecin
     *
     * @param \CR\GSBRBundle\Entity\TypePraticien $typeMedecin
     * @return Praticien
     */
    public function setTypeMedecin(\CR\GSBRBundle\Entity\TypePraticien $typeMedecin = null)
    {
        $this->typeMedecin = $typeMedecin;
    
        return $this;
    }

    /**
     * Get typeMedecin
     *
     * @return \CR\GSBRBundle\Entity\TypePraticien 
     */
    public function getTypeMedecin()
    {
        return $this->typeMedecin;
    }
    
    /**
     * Get NomPrenomMedecin
     *
     * @return string 
     */
    public function getNomPrenomMedecin() 
    {
        return $this->getPrenomMedecin() . ' ' . $this->getNomMedecin();
    }
}