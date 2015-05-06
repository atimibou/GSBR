<?php

namespace CR\GSBRBundle\Entity;

use Doctrine\ORM\EntityRepository;

/**
 * FamilleRepository
 *
 * This class was generated by the Doctrine ORM. Add your own custom
 * repository methods below.
 */
class FamilleRepository extends EntityRepository
{
    public function getNbFamille(){
        $nb = $this->createQueryBuilder('famille')
                   ->select('COUNT(famille)');
        //->where('');
        return $nb->getQuery()
                  ->getSingleScalarResult();
}
}