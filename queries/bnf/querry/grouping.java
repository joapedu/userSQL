CriteriaQuery<Pet> cq = cb.createQuery(Pet.class);
Root<Pet> pet = cq.from(Pet.class);
cq.groupBy(pet.get(Pet_.color));


CriteriaQuery<Pet> cq = cb.createQuery(Pet.class);
Root<Pet> pet = cq.from(Pet.class);
cq.groupBy(pet.get(Pet_.color));
cq.having(cb.in(pet.get(Pet_.color)).value("brown").value("blonde"));

The TypedQuery<T>.getSingleResult

CriteriaQuery<Pet> cq = cb.createQuery(Pet.class);
TypedQuery<Pet> q = em.createQuery(cq);
Pet result = q.getSingleResult();

The TypedQuery<T>.getResultList

CriteriaQuery<Pet> cq = cb.createQuery(Pet.class);
TypedQuery<Pet> q = em.createQuery(cq);
List<Pet> results = q.getResultList();