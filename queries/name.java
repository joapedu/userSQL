/**
 * Named Parameters in Queries
*/

javax.persistence.Query.setParameter(String name, Object value)

public List findWithName(String name) {
    return em.createQuery(
        "SELECT c FROM Customer c WHERE c.name LIKE :custName")
        .setParameter("custName", name)
        .getResultList();
}