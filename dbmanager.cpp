#include <dbmanager.h>
#include <QSqlQuery>
#include <QSqlError>
#include <QSqlRecord>
#include <QDebug>

DbManager::DbManager(const QString &path)
{
    m_db = QSqlDatabase::addDatabase("QSQLITE");
    m_db.setDatabaseName(path);

    if (!m_db.open())
    {
        qDebug() << "Error: connection with database fail";
    }
    else
    {
        qDebug() << "Database: connection ok";
    }
}

DbManager::~DbManager()
{
    if (m_db.isOpen())
    {
        m_db.close();
    }
}

bool DbManager::isOpen() const
{
    return m_db.isOpen();
}

bool DbManager::createTable()
{
    bool success = false;

    QSqlQuery query;
    query.prepare("CREATE TABLE collabs(id INTEGER PRIMARY KEY  AUTOINCREMENT  NOT NULL  UNIQUE , nom CHAR, prenom CHAR, desc CHAR, imgUrl CHAR, motClef INTEGER);");

    if (!query.exec())
    {
        qDebug() << "Couldn't create the table 'collabs': one might already exist.";
        success = false;
    }

    return success;
}

bool DbManager::addCollab(const QString& nom,const QString& prenom,const QString& desc,const QString& imgUrl,const QString& motClef)
{
   // INSERT INTO "main"."collabs" ("nom","prenom","desc","imgUrl","motClef") VALUES (?1,?2,?3,?4,?5)

    bool success = false;

    if (!nom.isEmpty() || !prenom.isEmpty() )
    {
        QSqlQuery queryAdd;
        queryAdd.prepare("INSERT INTO collabs (nom,prenom,desc,imgUrl,motClef) VALUES (:nom,:prenom,:desc,:imgUrl,:motClef)");
        queryAdd.bindValue(":nom", nom);
        queryAdd.bindValue(":prenom", prenom);
        queryAdd.bindValue(":desc", desc);
        queryAdd.bindValue(":imdUrl", imgUrl);
        queryAdd.bindValue(":motClef", motClef);

        if(queryAdd.exec())
        {
            success = true;
        }
        else
        {
            qDebug() << "add person failed: " << queryAdd.lastError();
        }
    }
    else
    {
        qDebug() << "add person failed: name cannot be empty";
    }

    return success;
}

bool DbManager::removePerson(const QString& name)
{
    bool success = false;

    if (personExists(name))
    {
        QSqlQuery queryDelete;
        queryDelete.prepare("DELETE FROM people WHERE name = (:name)");
        queryDelete.bindValue(":name", name);
        success = queryDelete.exec();

        if(!success)
        {
            qDebug() << "remove person failed: " << queryDelete.lastError();
        }
    }
    else
    {
        qDebug() << "remove person failed: person doesnt exist";
    }

    return success;
}

void DbManager::printAllPersons() const
{
    qDebug() << "Persons in db:";
    QSqlQuery query("SELECT * FROM people");
    int idName = query.record().indexOf("name");
    while (query.next())
    {
        QString name = query.value(idName).toString();
        qDebug() << "===" << name;
    }
}

bool DbManager::personExists(const QString& name) const
{
    bool exists = false;

    QSqlQuery checkQuery;
    checkQuery.prepare("SELECT name FROM people WHERE name = (:name)");
    checkQuery.bindValue(":name", name);

    if (checkQuery.exec())
    {
        if (checkQuery.next())
        {
            exists = true;
        }
    }
    else
    {
        qDebug() << "person exists failed: " << checkQuery.lastError();
    }

    return exists;
}

bool DbManager::removeAllPersons()
{
    bool success = false;

    QSqlQuery removeQuery;
    removeQuery.prepare("DELETE FROM people");

    if (removeQuery.exec())
    {
        success = true;
    }
    else
    {
        qDebug() << "remove all persons failed: " << removeQuery.lastError();
    }

    return success;
}
