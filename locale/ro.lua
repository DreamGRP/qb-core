--[[
Romanian base language translation for qb-core
Translation done by wanderrer (Martin Riggs#0807 on Discord)
]]--
local Translations = {
    error = {
       not_online = 'Jucatorul nu este online',
        wrong_format = 'Format incorect',
        missing_args = 'Nu au fost introduse toate argumentele (x, y, z)',
        missing_args2 = 'Toate argumentele trebuie completate!',
        no_access = 'Fara acces la aceasta comanda',
        company_too_poor = 'Angajatorul tau este frânt',
        item_not_exist = 'Articolul nu exista',
        too_heavy = 'Inventar prea plin',
        location_not_exist = 'Locatia nu exista',
        duplicate_license = 'S-a gasit licenta Rockstar duplicata',
        no_valid_license = 'Nu a fost gasita nicio licenta Rockstar valida',
        not_whitelisted = 'Nu sunteti pe lista alba pentru acest server',
        server_already_open = 'Serverul este deja deschis',
        server_already_closed = 'Serverul este deja tnchis',
        no_permission = 'Nu ai permisiuni pentru asta..',
        no_waypoint = 'Niciun punct de referinta setat.',
        tp_error = 'Eroare la teleportare.',
        connecting_database_error = 'A aparut o eroare la baza de date tn timpul conectarii la server. (Serverul SQL este pornit?)',
        connecting_database_timeout = 'Conexiunea la baza de date a expirat. (Serverul SQL este pornit?)',
    },
    success = {
        server_opened = 'Serverul a fost deschis',
        server_closed = 'Serverul a fost inchis',
        teleported_waypoint = 'Teleportat catre punctul de referinta.',
    },
    info = {
       received_paycheck = 'Ati primit cecul de plata de $%{value}',
        job_info = 'Job: %{value} | Nota: %{value2} | Taxa: %{value3}',
        gang_info = 'Gang: %{value} | Nota: %{value2}',
        on_duty = 'Acum esti la datorie!',
        off_duty = 'Acum esti tn afara serviciului!',
        checking_ban = 'Buna ziua %s. Verificam daca esti interzis.',
        join_server = 'Bine ati venit %s la {Nume server}.',
        checking_whitelisted = 'Buna ziua %s. Va verificam alocatia.',
        exploit_banned = 'Ai fost interzis pentru trisare. Verificati Discordul nostru pentru mai multe informatii: %{discord}',
        exploit_dropped = 'Ai fost dat cu piciorul pentru exploatare',
    },
    command = {
        tp = {
            help = 'TP catre un jucator sau catre anumite coordonate (Admin Only)',
            params = {
                x = { name = 'ID/X', help = 'ID-ul jucatorului sau coordonata X'},
                y = { name = 'Y', help = 'Coordonata Y'},
                z = { name = 'Z', help = 'Coordonata Z'},
            },
        },
        tpm = { help = 'TP la punctul de referinta de pe harta (Admin Only)' },
        togglepvp = { help = 'Activeaza/Dezactiveaza PVP pe server (Admin Only)' },
        addpermission = {
            help = 'Dai permisiuni speciale unui jucator (God Only)',
            params = {
                id = { name = 'ID', help = 'ID-ul jucatorului' },
                permission = { name = 'Permisiuni', help = 'Permisiunile pe care vrei sa le dau (admin/moderator)' },
            },
        },
        removepermission = {
            help = 'Stergi permisiunile speciale ale unui jucator (God Only)',
            params = {
                id = { name = 'ID', help = 'ID-ul jucatorului' },
                permission = { name = 'Permisiuni', help = 'Nivelul de permisiuni pe care vrei sa le stergi' },
            },
        },
        openserver = { help = 'Deschide serverul pentru publicul larg (Admin Only)' },
        closeserver = {
            help = 'Inchide serverul pentru publicul larg (Admin Only)',
            params = {
                reason = { name = 'Motivul', help = 'Motivul pentru care serverul este inchis publicului larg (optional)' },
            },
        },
        car = {
            help = 'Spawneaza un vehicul (Admin Only)',
            params = {
                model = { name = 'Model', help = 'Modelul vehiculului dorit, Ex: intruder' },
            },
        },
        dv = { help = 'Stergi un vehicul (Admin Only)' },
        givemoney = {
            help = 'Dai o suma de bani unui jucator (Admin Only)',
            params = {
                id = { name = 'ID', help = 'ID-ul jucatorului, Ex: 342' },
                moneytype = { name = 'Tipul banilor', help = 'Aici avem 3 optiuni (cash, bank, crypto)' },
                amount = { name = 'Suma', help = 'Suma de bani pe care vrei sa o dai, Ex: 5000' },
            },
        },
        setmoney = {
            help = 'Setezi o suma de bani pentru un jucator anume (Admin Only)',
            params = {
                id = { name = 'ID', help = 'ID-ul Jucatorului' },
                moneytype = { name = 'tipul de bani', help = 'Tipul de bani pe care vrei sa-l setezi jucatorului (cash, bank, crypto)' },
                amount = { name = 'Suma', help = 'Suma de bani pe care vrei sa o dai/setezi' },
            },
        },
        job = { help = 'Iti verifici job-ul, in cazul in care ai uitat :)' },
        setjob = {
            help = 'Setezi un job pentru un cetatean (Admin Only)',
            params = {
                id = { name = 'ID', help = 'ID-ul Jucatorului' },
                job = { name = 'job', help = 'Numele jobului, asa cum este definit in config.' },
                grade = { name = 'Functia', help = 'Functia este de tipul 1,2,3,4 etc.' },
            },
        },
        setgang = {
            help = 'Setezi o gasca/mafie pentru un jucator (Admin Only)',
            params = {
                id = { name = 'ID', help = 'ID-ul Jucatorului' },
                gang = { name = 'gasca/mafie', help = 'Numele mafiei sau a gasti pe care vrei sa o setezi' },
                grade = { name = 'Functia', help = 'Functia este de tipul 1,2,3,4 etc.' },
            },
        },
        me = {
            help = 'Mesaj local/Indica o actiune sau afectiune',
            params = {
                message = { name = 'mesaj', help = 'Efectiv mesajul pe care vrei sa-l afisezi' }
            },
        },
    },
}

if GetConvar('qb_locale', 'en') == 'ro' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
