<?php

class Config
{
 private $pdo;
 private $page;

 public function __construct($initPage = "home")
 {
  $this->getDB();
  $this->page = $initPage;

  if (isset($_GET['p'])) {
   $this->page = strtolower(str_replace(' ', '', trim($_GET['p'])));
  }

 }

 public function getPage()
 {
  return $this->page;
 }

 private function getDB()
 {
  $dbConn = $this->getDbConnectionString();
  try {
   $pdo = new PDO($dbConn['dsn'], $dbConn['user'], $dbConn['password'], $dbConn['options']);

  } catch (PDOException $pe) {
   throw new PDOException($pe->getMessage(), (int) $pe->getCode());
  }
  $this->pdo = $pdo;
  return $pdo;
 }

 public function getPDO()
 {
  return $this->pdo;
 }

 private function getDbConnectionString()
 {
  $host = '127.0.0.1';
  $db   = 'bluescafe';
  $char = 'utf8mb4';

  $dsn = "mysql:host=$host;dbname=$db;charset=$char";

  $pwd  = '*!X0WHNAaGlcqcOP';
  $user = 'db_user';

  $options[PDO::ATTR_ERRMODE]            = PDO::ERRMODE_EXCEPTION;
  $options[PDO::ATTR_DEFAULT_FETCH_MODE] = PDO::FETCH_ASSOC;
  $options[PDO::ATTR_EMULATE_PREPARES]   = false;

  return array("dsn" => $dsn, "user" => $user, "password" => $pwd, "options" => $options);
 }

}
