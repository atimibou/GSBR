<?php

namespace CR\GSBRBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Medicament
 *
 * @ORM\Table(name="medicament")
 * @ORM\Entity(repositoryClass="CR\GSBRBundle\Entity\MedicamentRepository")
 */
class Medicament
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
     * @ORM\Column(name="depotLegal", type="string", length=10)
     */
    private $depotLegal;

    /**
     * @var string
     *
     * @ORM\Column(name="nomCommercial", type="string", length=25)
     */
    private $nomCommercial;

    /**
    * @ORM\ManyToOne(targetEntity="CR\GSBRBundle\Entity\Famille")
     */
    private $famille;

    /**
     * @var string
     *
     * @ORM\Column(name="composition", type="string", length=255)
     */
    private $composition;

    /**
     * @var string
     *
     * @ORM\Column(name="effets", type="string", length=255)
     */
    private $effets;

    /**
     * @var string
     *
     * @ORM\Column(name="contreIndication", type="string", length=255)
     */
    private $contreIndication;

    /**
     * @var float
     *
     * @ORM\Column(name="prixEchantillon", type="float")
     */
    private $prixEchantillon;


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
     * Set depotLegal
     *
     * @param string $depotLegal
     * @return Medicament
     */
    public function setDepotLegal($depotLegal)
    {
        $this->depotLegal = $depotLegal;
    
        return $this;
    }

    /**
     * Get depotLegal
     *
     * @return string 
     */
    public function getDepotLegal()
    {
        return $this->depotLegal;
    }

    /**
     * Set nomCommercial
     *
     * @param string $nomCommercial
     * @return Medicament
     */
    public function setNomCommercial($nomCommercial)
    {
        $this->nomCommercial = $nomCommercial;
    
        return $this;
    }

    /**
     * Get nomCommercial
     *
     * @return string 
     */
    public function getNomCommercial()
    {
        return $this->nomCommercial;
    }

    /**
     * Set idFamille
     *
     * @param integer $idFamille
     * @return Medicament
     */
    public function setIdFamille($idFamille)
    {
        $this->idFamille = $idFamille;
    
        return $this;
    }

    /**
     * Get idFamille
     *
     * @return integer 
     */
    public function getIdFamille()
    {
        return $this->idFamille;
    }

    /**
     * Set composition
     *
     * @param string $composition
     * @return Medicament
     */
    public function setComposition($composition)
    {
        $this->composition = $composition;
    
        return $this;
    }

    /**
     * Get composition
     *
     * @return string 
     */
    public function getComposition()
    {
        return $this->composition;
    }

    /**
     * Set effets
     *
     * @param string $effets
     * @return Medicament
     */
    public function setEffets($effets)
    {
        $this->effets = $effets;
    
        return $this;
    }

    /**
     * Get effets
     *
     * @return string 
     */
    public function getEffets()
    {
        return $this->effets;
    }

    /**
     * Set contreIndication
     *
     * @param string $contreIndication
     * @return Medicament
     */
    public function setContreIndication($contreIndication)
    {
        $this->contreIndication = $contreIndication;
    
        return $this;
    }

    /**
     * Get contreIndication
     *
     * @return string 
     */
    public function getContreIndication()
    {
        return $this->contreIndication;
    }

    /**
     * Set prixEchantillon
     *
     * @param float $prixEchantillon
     * @return Medicament
     */
    public function setPrixEchantillon($prixEchantillon)
    {
        $this->prixEchantillon = $prixEchantillon;
    
        return $this;
    }

    /**
     * Get prixEchantillon
     *
     * @return float 
     */
    public function getPrixEchantillon()
    {
        return $this->prixEchantillon;
    }

    /**
     * Set Famille
     *
     * @param \CR\GSBRBundle\Entity\Famille $famille
     * @return Medicament
     */
    public function setFamille(\CR\GSBRBundle\Entity\Famille $famille = null)
    {
        $this->famille = $famille;
    
        return $this;
    }

    /**
     * Get Famille
     *
     * @return \CR\GSBRBundle\Entity\Famille 
     */
    public function getFamille()
    {
        return $this->famille;
    }
}