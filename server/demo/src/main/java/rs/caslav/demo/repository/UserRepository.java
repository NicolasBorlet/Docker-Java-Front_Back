package rs.caslav.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import rs.caslav.demo.model.User;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

}