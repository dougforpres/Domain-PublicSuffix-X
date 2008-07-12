package Domain::PublicSuffix::Default;
use strict;
use warnings;

our $VERSION = '0.03';

=head1 NAME

Domain::PublicSuffix::Default - Default PublicSuffix data file

=head1 SYNOPSIS

 use Domain::PublicSuffix::Default;

 my $tldList = Domain::PublicSuffix::Default::retrieve();

=head1 DESCRIPTION

This module provides a default public suffix list, as distributed by Mozilla
at time of module release.

=head1 PUBLIC ACCESSORS

=over 4

=item retrieve()

Returns current list as a scalar.

=back

=cut

sub retrieve {
    my @lines = split(/\n/, q{// ac : http://en.wikipedia.org/wiki/.ac
ac
com.ac
edu.ac
gov.ac
net.ac
mil.ac
org.ac

// ad : http://en.wikipedia.org/wiki/.ad
ad
nom.ad

// ae : http://en.wikipedia.org/wiki/.ae
ae
net.ae
gov.ae
ac.ae
sch.ae
org.ae
mil.ae
pro.ae
name.ae

// aero : see http://www.information.aero/index.php?id=66
aero
accident-investigation.aero
accident-prevention.aero
aerobatic.aero
aeroclub.aero
aerodrome.aero
agents.aero
aircraft.aero
airline.aero
airport.aero
air-surveillance.aero
airtraffic.aero
air-traffic-control.aero
ambulance.aero
amusement.aero
association.aero
author.aero
ballooning.aero
broker.aero
caa.aero
cargo.aero
catering.aero
certification.aero
championship.aero
charter.aero
civilaviation.aero
club.aero
conference.aero
consultant.aero
consulting.aero
control.aero
council.aero
crew.aero
design.aero
dgca.aero
educator.aero
emergency.aero
engine.aero
engineer.aero
entertainment.aero
equipment.aero
exchange.aero
express.aero
federation.aero
flight.aero
freight.aero
fuel.aero
gliding.aero
government.aero
groundhandling.aero
group.aero
hanggliding.aero
homebuilt.aero
insurance.aero
journal.aero
journalist.aero
leasing.aero
logistics.aero
magazine.aero
maintenance.aero
marketplace.aero
media.aero
microlight.aero
modelling.aero
navigation.aero
parachuting.aero
paragliding.aero
passenger-association.aero
pilot.aero
press.aero
production.aero
recreation.aero
repbody.aero
res.aero
research.aero
rotorcraft.aero
safety.aero
scientist.aero
services.aero
show.aero
skydiving.aero
software.aero
student.aero
taxi.aero
trader.aero
trading.aero
trainer.aero
union.aero
workinggroup.aero
works.aero

// af : http://www.nic.af/help.jsp
af
gov.af
com.af
org.af
net.af
edu.af

// ag : http://www.nic.ag/prices.htm
ag
com.ag
org.ag
net.ag
co.ag
nom.ag

// ai : http://nic.com.ai/
ai
off.ai
com.ai
net.ai
org.ai

// al : http://www.inima.al/Domains.html
gov.al
edu.al
org.al
com.al
net.al

// am : http://en.wikipedia.org/wiki/.am
am

// an : http://www.una.an/an_domreg/default.asp
an
com.an
net.an
org.an
edu.an

// ao : http://en.wikipedia.org/wiki/.ao
// list of 2nd level TLDs ?
ao

// aq : http://en.wikipedia.org/wiki/.aq
aq

// ar : http://en.wikipedia.org/wiki/.ar
*.ar
!congresodelalengua3.ar
!educ.ar
!gobiernoelectronico.ar
!mecon.ar
!nacion.ar
!nic.ar
!promocion.ar
!retina.ar
!uba.ar

// arpa : http://en.wikipedia.org/wiki/.arpa
e164.arpa
in-addr.arpa
ip6.arpa
uri.arpa
urn.arpa

// as : http://en.wikipedia.org/wiki/.as
as

// at : http://en.wikipedia.org/wiki/.at
// Confirmed by registry <it@nic.at> 2008-06-17
at
gv.at
ac.at
co.at
or.at

// priv.at : http://www.nic.priv.at/
// Submitted by registry <lendl@nic.at> 2008-06-09
priv.at

// au : http://en.wikipedia.org/wiki/.au
*.au
// au geographical names (vic.au etc... are covered above)
act.edu.au
nsw.edu.au
nt.edu.au
qld.edu.au
sa.edu.au
tas.edu.au
vic.edu.au
wa.edu.au
act.gov.au
nsw.gov.au
nt.gov.au
qld.gov.au
sa.gov.au
tas.gov.au
vic.gov.au
wa.gov.au

// aw : http://en.wikipedia.org/wiki/.aw
aw
com.aw

// ax : http://en.wikipedia.org/wiki/.ax
ax

// az : http://en.wikipedia.org/wiki/.az
az
com.az
net.az
int.az
gov.az
org.az
edu.az
info.az
pp.az
mil.az
name.az
pro.az
biz.az

// ba : http://en.wikipedia.org/wiki/.ba
ba
org.ba
net.ba
edu.ba
gov.ba
mil.ba
unsa.ba
unbi.ba
co.ba
com.ba
rs.ba

// bb : http://en.wikipedia.org/wiki/.bb
bb
com.bb
edu.bb
gov.bb
net.bb
org.bb

// bd : http://en.wikipedia.org/wiki/.bd
*.bd

// be : http://en.wikipedia.org/wiki/.be
// Confirmed by registry <tech@dns.be> 2008-06-08
be
ac.be

// bf : http://en.wikipedia.org/wiki/.bf
bf

// bg : http://en.wikipedia.org/wiki/.bg
bg

// bh : http://en.wikipedia.org/wiki/.bh
// list of 2nd level tlds ?
bh

// bi : http://en.wikipedia.org/wiki/.bi
// list of 2nd level tlds ?
bi

// biz : http://en.wikipedia.org/wiki/.biz
biz

// bj : http://en.wikipedia.org/wiki/.bj
// list of 2nd level tlds ?
bj

// bm : http://www.bermudanic.bm/dnr-text.txt
bm
com.bm
edu.bm
gov.bm
net.bm
org.bm

// bn : http://en.wikipedia.org/wiki/.bn
*.bn

// bo : http://www.nic.bo/
bo
com.bo
edu.bo
gov.bo
gob.bo
int.bo
org.bo
net.bo
mil.bo
tv.bo

// br : http://en.wikipedia.org/wiki/.br
// http://registro.br/info/dpn.html
br
adm.br
adv.br
agr.br
am.br
arq.br
art.br
ato.br
bio.br
blog.br
bmd.br
cim.br
cng.br
cnt.br
com.br
coop.br
ecn.br
edu.br
eng.br
esp.br
etc.br
eti.br
far.br
flog.br
fm.br
fnd.br
fot.br
fst.br
g12.br
ggf.br
gov.br
imb.br
ind.br
inf.br
jor.br
jus.br
lel.br
mat.br
med.br
mil.br
mus.br
net.br
nom.br
not.br
ntr.br
odo.br
org.br
ppg.br
pro.br
psc.br
psi.br
qsl.br
rec.br
slg.br
srv.br
tmp.br
trd.br
tur.br
tv.br
vet.br
vlog.br
wiki.br
zlg.br

// bs : http://www.nic.bs/rules.html
bs
com.bs
net.bs
org.bs
edu.bs
gov.bs

// bt : http://en.wikipedia.org/wiki/.bt
*.bt

// bv : No registrations at this time.
// Submitted by registry <jarle@uninett.no> 2006-06-16

// bw : http://en.wikipedia.org/wiki/.bw
// list of 2nd level tlds ?
bw

// by : http://en.wikipedia.org/wiki/.by
// list of 2nd level tlds ?
by

// bz : http://en.wikipedia.org/wiki/.bz
// list of 2nd level tlds ?
bz

// ca : http://en.wikipedia.org/wiki/.ca
ca
// ca geographical names
ab.ca
bc.ca
mb.ca
nb.ca
nf.ca
nl.ca
ns.ca
nt.ca
nu.ca
on.ca
pe.ca
qc.ca
sk.ca
yk.ca

// cat : http://en.wikipedia.org/wiki/.cat
cat

// cc : http://en.wikipedia.org/wiki/.cc
cc

// cd : http://en.wikipedia.org/wiki/.cd
cd

// cf : http://en.wikipedia.org/wiki/.cf
cf

// cg : http://en.wikipedia.org/wiki/.cg
cg

// ch : http://en.wikipedia.org/wiki/.ch
ch

// ci : http://en.wikipedia.org/wiki/.ci
// list of 2nd level tlds ?
ci

// ck : http://en.wikipedia.org/wiki/.ck
*.ck

// cl : http://en.wikipedia.org/wiki/.cl
cl

// cm : http://en.wikipedia.org/wiki/.cm
cm

// cn : http://en.wikipedia.org/wiki/.cn
// Submitted by registry <tanyaling@cnnic.cn> 2008-06-11
cn
ac.cn
com.cn
edu.cn
gov.cn
net.cn
org.cn
mil.cn
公司.cn
网络.cn
網絡.cn
// cn geographic names
ah.cn
bj.cn
cq.cn
fj.cn
gd.cn
gs.cn
gz.cn
gx.cn
ha.cn
hb.cn
he.cn
hi.cn
hl.cn
hn.cn
jl.cn
js.cn
jx.cn
ln.cn
nm.cn
nx.cn
qh.cn
sc.cn
sd.cn
sh.cn
sn.cn
sx.cn
tj.cn
xj.cn
xz.cn
yn.cn
zj.cn
hk.cn
mo.cn
tw.cn

// co : http://en.wikipedia.org/wiki/.co
// Submitted by registry <tecnico@uniandes.edu.co> 2008-06-11
co
arts.co
com.co
edu.co
firm.co
gov.co
info.co
int.co
mil.co
net.co
nom.co
org.co
rec.co
web.co

// com : http://en.wikipedia.org/wiki/.com
com

// CentralNic names : http://www.centralnic.com/names/domains
// Confirmed by registry <gavin.brown@centralnic.com> 2008-06-09
ar.com
br.com
cn.com
de.com
eu.com
gb.com
hu.com
jpn.com
kr.com
no.com
qc.com
ru.com
sa.com
se.com
uk.com
us.com
uy.com
za.com

// coop : http://en.wikipedia.org/wiki/.coop
coop

// cr : http://en.wikipedia.org/wiki/.cr
*.cr

// cu : http://en.wikipedia.org/wiki/.cu
cu
com.cu
edu.cu
org.cu
net.cu
gov.cu
inf.cu

// cv : http://en.wikipedia.org/wiki/.cv
cv

// cx : http://en.wikipedia.org/wiki/.cx
cx

// cy : http://en.wikipedia.org/wiki/.cy
*.cy

// cz : http://en.wikipedia.org/wiki/.cz
cz

// de : http://en.wikipedia.org/wiki/.de
de

// dj : http://en.wikipedia.org/wiki/.dj
dj

// dk : http://en.wikipedia.org/wiki/.dk
// Confirmed by registry <robert@dk-hostmaster.dk> 2008-06-17
dk

// dm : http://en.wikipedia.org/wiki/.dm
dm
com.dm
net.dm
org.dm

// do : http://en.wikipedia.org/wiki/.do
*.do

// dz : http://en.wikipedia.org/wiki/.dz
dz
com.dz
org.dz
net.dz
gov.dz
edu.dz
asso.dz
pol.dz
art.dz

// ec : http://www.nic.ec/reg/paso1.asp
ec
com.ec
info.ec
net.ec
fin.ec
med.ec
pro.ec
org.ec
edu.ec
gov.ec
mil.ec

// edu : http://en.wikipedia.org/wiki/.edu
edu

// ee : http://www3.eenet.ee/ee/application.html
ee
com.ee
org.ee
fie.ee
pri.ee

// eg : http://en.wikipedia.org/wiki/.eg
*.eg

// er : http://en.wikipedia.org/wiki/.er
*.er

// es : https://www.nic.es/site_ingles/ingles/dominios/index.html
es
com.es
nom.es
org.es
gob.es
edu.es

// et : http://en.wikipedia.org/wiki/.et
*.et

// eu : http://en.wikipedia.org/wiki/.eu
eu

// fi : http://en.wikipedia.org/wiki/.fi
fi

// fj : http://en.wikipedia.org/wiki/.fj
*.fj

// fk : http://en.wikipedia.org/wiki/.fk
*.fk

// fm : http://en.wikipedia.org/wiki/.fm
fm

// fo : http://en.wikipedia.org/wiki/.fo
fo

// fr : http://www.afnic.fr/
fr
// domaines descriptifs : http://www.afnic.fr/obtenir/chartes/nommage-fr/annexe-descriptifs
fr
com.fr
asso.fr
nom.fr
prd.fr
presse.fr
tm.fr
// domaines sectoriels : http://www.afnic.fr/obtenir/chartes/nommage-fr/annexe-sectoriels
aeroport.fr
assedic.fr
avocat.fr
avoues.fr
cci.fr
chambagri.fr
chirurgiens-dentistes.fr
experts-comptables.fr
geometre-expert.fr
gouv.fr
greta.fr
huissier-justice.fr
medecin.fr
notaires.fr
pharmacien.fr
port.fr
veterinaire.fr

// ga : http://en.wikipedia.org/wiki/.ga
ga

// gb : This registry is effectively dormant
// Submitted by registry <Damien.Shaw@ja.net> 2008-06-12

// gd : http://en.wikipedia.org/wiki/.gd
gd

// ge : http://www.nic.net.ge/policy_en.pdf
ge
com.ge
edu.ge
gov.ge
org.ge
mil.ge
net.ge
pvt.ge

// gf : http://en.wikipedia.org/wiki/.gf
gf

// gg : http://www.channelisles.net/tandc.shtml
gg
co.gg
org.gg
net.gg
sch.gg
gov.gg

// gh : http://www.ghana.com/domain.htm
*.gh

// gi : http://www.nic.gi/rules.html
gi
com.gi
ltd.gi
gov.gi
mod.gi
edu.gi
org.gi

// gl : http://en.wikipedia.org/wiki/.gl
gl

// gm : http://www.nic.gm/htmlpages%5Cgm-policy.htm
gm

// gn : http://psg.com/dns/gn/gn.txt
// Submitted by registry <randy@psg.com> 2008-06-17
ac.gn
com.gn
edu.gn
gov.gn
org.gn
net.gn

// gov : http://en.wikipedia.org/wiki/.gov
gov

// gp : http://www.nic.gp/index_en.php?url=charte_en.php
gp
com.gp
net.gp
edu.gp
org.gp

// gq : http://en.wikipedia.org/wiki/.gq
gq

// gr : https://grweb.ics.forth.gr/english/1617-B-2005.html
// Submitted by registry <segred@ics.forth.gr> 2008-06-09
gr
com.gr
edu.gr
net.gr
org.gr
gov.gr

// gs : http://en.wikipedia.org/wiki/.gs
gs

// gt : http://www.gt/politicas.html
*.gt

// gu : http://gadao.gov.gu/registration.txt
*.gu

// gw : http://en.wikipedia.org/wiki/.gw
gw

// gy : http://en.wikipedia.org/wiki/.gy
gy

// hk : https://www.hkdnr.hk
// Submitted by registry <hk.tech@hkirc.hk> 2008-06-11
hk
com.hk
edu.hk
gov.hk
idv.hk
net.hk
org.hk
公司.hk
教育.hk
敎育.hk
政府.hk
個人.hk
个人.hk
箇人.hk
網络.hk
网络.hk
组織.hk
網絡.hk
网絡.hk
组织.hk
組織.hk
組织.hk 

// hm : http://en.wikipedia.org/wiki/.hm
hm

// hn : http://www.nic.hn/politicas/ps02,,05.html
hn
com.hn
edu.hn
org.hn
net.hn
mil.hn
gob.hn

// hr : http://www.dns.hr/documents/pdf/HRTLD-regulations.pdf
hr
iz.hr
from.hr
name.hr
com.hr

// ht : http://www.nic.ht/info/charte.cfm
ht
com.ht
shop.ht
firm.ht
info.ht
adult.ht
net.ht
pro.ht
org.ht
med.ht
art.ht
coop.ht
pol.ht
asso.ht
edu.ht
rel.ht
gouv.ht
perso.ht

// hu : http://www.domain.hu/domain/English/sld.html
// Confirmed by registry <pasztor@iszt.hu> 2008-06-12
hu
co.hu
info.hu
org.hu
priv.hu
sport.hu
tm.hu
2000.hu
agrar.hu
bolt.hu
casino.hu
city.hu
erotica.hu
erotika.hu
film.hu
forum.hu
games.hu
hotel.hu
ingatlan.hu
jogasz.hu
konyvelo.hu
lakas.hu
media.hu
news.hu
reklam.hu
sex.hu
shop.hu
suli.hu
szex.hu
tozsde.hu
utazas.hu
video.hu

// id : http://en.wikipedia.org/wiki/.id
*.id

// ie : http://en.wikipedia.org/wiki/.ie
ie

// il : http://en.wikipedia.org/wiki/.il
*.il

// im : https://www.nic.im/pdfs/imfaqs.pdf
im
co.im
ltd.co.im
plc.co.im
net.im
gov.im
org.im
nic.im
ac.im

// in : http://en.wikipedia.org/wiki/.in
in
co.in
firm.in
net.in
org.in
gen.in
ind.in
nic.in
ac.in
edu.in
res.in
gov.in
mil.in

// info : http://en.wikipedia.org/wiki/.info
info

// int : http://en.wikipedia.org/wiki/.int
int
eu.int

// io : http://www.nic.io/rules.html
// list of 2nd level tlds ?
io

// iq : http://en.wikipedia.org/wiki/.iq
// no registrar website found, but google shows .gov.iq and .edu.iq websites
iq
gov.iq
edu.iq

// ir : http://www.nic.ir/ascii/Appendix1.htm
ir
ac.ir
co.ir
gov.ir
id.ir
net.ir
org.ir
sch.ir

// is : http://www.isnic.is/domain/rules.php
// Confirmed by registry <marius@isgate.is> 2008-12-06
is
net.is
com.is
edu.is
gov.is
org.is
int.is

// it : http://en.wikipedia.org/wiki/.it
it
gov.it
edu.it
// geo-names found at http://www.nic.it/RA/en/domini/regole/nomi-riservati.pdf
agrigento.it
ag.it
alessandria.it
al.it
ancona.it
an.it
aosta.it
aoste.it
ao.it
arezzo.it
ar.it
ascoli-piceno.it
ascolipiceno.it
ap.it
asti.it
at.it
avellino.it
av.it
bari.it
ba.it
barlettaandriatrani.it
barletta-andria-trani.it
belluno.it
bl.it
benevento.it
bn.it
bergamo.it
bg.it
biella.it
bi.it
bologna.it
bo.it
bolzano.it
bozen.it
balsan.it
alto-adige.it
altoadige.it
suedtirol.it
bz.it
brescia.it
bs.it
brindisi.it
br.it
cagliari.it
ca.it
caltanissetta.it
cl.it
campobasso.it
cb.it
caserta.it
ce.it
catania.it
ct.it
catanzaro.it
cz.it
chieti.it
ch.it
como.it
co.it
cosenza.it
cs.it
cremona.it
cr.it
crotone.it
kr.it
cuneo.it
cn.it
enna.it
en.it
fermo.it
ferrara.it
fe.it
firenze.it
florence.it
fi.it
foggia.it
fg.it
forli-cesena.it
forlicesena.it
fc.it
frosinone.it
fr.it
genova.it
genoa.it
ge.it
gorizia.it
go.it
grosseto.it
gr.it
imperia.it
im.it
isernia.it
is.it
laquila.it
aquila.it
aq.it
la-spezia.it
laspezia.it
sp.it
latina.it
lt.it
lecce.it
le.it
lecco.it
lc.it
livorno.it
li.it
lodi.it
lo.it
lucca.it
lu.it
macerata.it
mc.it
mantova.it
mn.it
massa-carrara.it
massacarrara.it
ms.it
matera.it
mt.it
messina.it
me.it
milano.it
milan.it
mi.it
modena.it
mo.it
monza.it
napoli.it
naples.it
na.it
novara.it
no.it
nuoro.it
nu.it
oristano.it
or.it
padova.it
padua.it
pd.it
palermo.it
pa.it
parma.it
pr.it
pavia.it
pv.it
perugia.it
pg.it
pescara.it
pe.it
pesaro-urbino.it
pesarourbino.it
pu.it
piacenza.it
pc.it
pisa.it
pi.it
pistoia.it
pt.it
pordenone.it
pn.it
potenza.it
pz.it
prato.it
po.it
ragusa.it
rg.it
ravenna.it
ra.it
reggio-calabria.it
reggiocalabria.it
rc.it
reggio-emilia.it
reggioemilia.it
re.it
rieti.it
ri.it
rimini.it
rn.it
roma.it
rome.it
rm.it
rovigo.it
ro.it
salerno.it
sa.it
sassari.it
ss.it
savona.it
sv.it
siena.it
si.it
siracusa.it
sr.it
sondrio.it
so.it
taranto.it
ta.it
teramo.it
te.it
terni.it
tr.it
torino.it
turin.it
to.it
trapani.it
tp.it
trento.it
trentino.it
tn.it
treviso.it
tv.it
trieste.it
ts.it
udine.it
ud.it
varese.it
va.it
venezia.it
venice.it
ve.it
verbania.it
vb.it
vercelli.it
vc.it
verona.it
vr.it
vibo-valentia.it
vibovalentia.it
vv.it
vicenza.it
vi.it
viterbo.it
vt.it

// je : http://www.channelisles.net/tandc.shtml
je
co.je
org.je
net.je
sch.je
gov.je

// jm : http://www.com.jm/register.html
*.jm

// jo : http://www.dns.jo/Registration_policy.aspx
jo
com.jo
org.jo
net.jo
edu.jo
sch.jo
gov.jo
mil.jo
name.jo
myname.jo

// jobs : http://en.wikipedia.org/wiki/.jobs
jobs

// jp : http://en.wikipedia.org/wiki/.jp
// http://jprs.co.jp/en/jpdomain.html
// Submitted by registry <yone@jprs.co.jp> 2008-06-11
jp
// jp organizational type names 
ac.jp
ad.jp
co.jp
ed.jp
go.jp
gr.jp
lg.jp
ne.jp
or.jp
// jp geographic type names
// http://jprs.jp/doc/rule/saisoku-1.html
*.aichi.jp
*.akita.jp
*.aomori.jp
*.chiba.jp
*.ehime.jp
*.fukui.jp
*.fukuoka.jp
*.fukushima.jp
*.gifu.jp
*.gunma.jp
*.hiroshima.jp
*.hokkaido.jp
*.hyogo.jp
*.ibaraki.jp
*.ishikawa.jp
*.iwate.jp
*.kagawa.jp
*.kagoshima.jp
*.kanagawa.jp
*.kawasaki.jp
*.kitakyushu.jp
*.kobe.jp
*.kochi.jp
*.kumamoto.jp
*.kyoto.jp
*.mie.jp
*.miyagi.jp
*.miyazaki.jp
*.nagano.jp
*.nagasaki.jp
*.nagoya.jp
*.nara.jp
*.niigata.jp
*.oita.jp
*.okayama.jp
*.okinawa.jp
*.osaka.jp
*.saga.jp
*.saitama.jp
*.sapporo.jp
*.sendai.jp
*.shiga.jp
*.shimane.jp
*.shizuoka.jp
*.tochigi.jp
*.tokushima.jp
*.tokyo.jp
*.tottori.jp
*.toyama.jp
*.wakayama.jp
*.yamagata.jp
*.yamaguchi.jp
*.yamanashi.jp
*.yokohama.jp
!metro.tokyo.jp
!pref.aichi.jp
!pref.akita.jp
!pref.aomori.jp
!pref.chiba.jp
!pref.ehime.jp
!pref.fukui.jp
!pref.fukuoka.jp
!pref.fukushima.jp
!pref.gifu.jp
!pref.gunma.jp
!pref.hiroshima.jp
!pref.hokkaido.jp
!pref.hyogo.jp
!pref.ibaraki.jp
!pref.ishikawa.jp
!pref.iwate.jp
!pref.kagawa.jp
!pref.kagoshima.jp
!pref.kanagawa.jp
!pref.kochi.jp
!pref.kumamoto.jp
!pref.kyoto.jp
!pref.mie.jp
!pref.miyagi.jp
!pref.miyazaki.jp
!pref.nagano.jp
!pref.nagasaki.jp
!pref.nara.jp
!pref.niigata.jp
!pref.oita.jp
!pref.okayama.jp
!pref.okinawa.jp
!pref.osaka.jp
!pref.saga.jp
!pref.saitama.jp
!pref.shiga.jp
!pref.shimane.jp
!pref.shizuoka.jp
!pref.tochigi.jp
!pref.tokushima.jp
!pref.tottori.jp
!pref.toyama.jp
!pref.wakayama.jp
!pref.yamagata.jp
!pref.yamaguchi.jp
!pref.yamanashi.jp
!city.chiba.jp
!city.fukuoka.jp
!city.hiroshima.jp
!city.kawasaki.jp
!city.kitakyushu.jp
!city.kobe.jp
!city.kyoto.jp
!city.nagoya.jp
!city.niigata.jp
!city.osaka.jp
!city.saitama.jp
!city.sapporo.jp
!city.sendai.jp
!city.shizuoka.jp
!city.yokohama.jp

// ke : http://www.kenic.or.ke/index.php?option=com_content&task=view&id=117&Itemid=145
*.ke

// kg : http://www.domain.kg/dmn_n.html
kg
org.kg
net.kg
com.kg
edu.kg
gov.kg
mil.kg

// kh : http://www.mptc.gov.kh/dns_registration.htm
*.kh

// ki : http://www.ki/dns/index.html
ki
edu.ki
biz.ki
net.ki
org.ki
gov.ki
info.ki
com.ki

// km : http://en.wikipedia.org/wiki/.km
km

// kn : http://en.wikipedia.org/wiki/.kn
kn

// kr : http://domain.nida.or.kr/eng/structure.jsp
kr
ac.kr
co.kr
es.kr
go.kr
hs.kr
kg.kr
mil.kr
ms.kr
ne.kr
or.kr
pe.kr
re.kr
sc.kr
// kr geographical names
// http://en.wikipedia.org/wiki/.kr
busan.kr
chungbuk.kr
chungnam.kr
daegu.kr
daejeon.kr
gangwon.kr
gwangju.kr
gyeongbuk.kr
gyeonggi.kr
gyeongnam.kr
incheon.kr
jeju.kr
jeonbuk.kr
jeonnam.kr
seoul.kr
ulsan.kr

// kw : http://en.wikipedia.org/wiki/.kw
*.kw

// ky : http://www.icta.ky/da_ky_reg_dom.php
// Confirmed by registry <kysupport@perimeterusa.com> 2008-06-17
ky
edu.ky
gov.ky
com.ky
org.ky
net.ky

// kz : http://en.wikipedia.org/wiki/.kz
kz
org.kz
edu.kz
net.kz
gov.kz
mil.kz
com.kz

// la : http://en.wikipedia.org/wiki/.la
// Submitted by registry <gavin.brown@nic.la> 2008-06-10
la
int.la
net.la
info.la
edu.la
gov.la
per.la
com.la
org.la
// see http://www.c.la/
c.la

// lb : http://en.wikipedia.org/wiki/.lb
// Submitted by registry <randy@psg.com> 2008-06-17
com.lb
edu.lb
gov.lb
net.lb
org.lb

// lc : http://en.wikipedia.org/wiki/.lc
lc
com.lc
org.lc
edu.lc
gov.lc

// li : http://en.wikipedia.org/wiki/.li
li

// lk : http://www.nic.lk/seclevpr.html
lk
gov.lk
sch.lk
net.lk
int.lk
com.lk
org.lk
edu.lk
ngo.lk
soc.lk
web.lk
ltd.lk
assn.lk
grp.lk
hotel.lk

// lr : http://psg.com/dns/lr/lr.txt
// Submitted by registry <randy@psg.com> 2008-06-17
com.lr
edu.lr
gov.lr
org.lr
net.lr

// ls : http://en.wikipedia.org/wiki/.ls
ls
co.ls
org.ls

// lt : http://en.wikipedia.org/wiki/.lt
lt

// lu : http://www.dns.lu/en/
lu

// lv : http://www.nic.lv/DNS/En/generic.php
lv
com.lv
edu.lv
gov.lv
org.lv
mil.lv
id.lv
net.lv
asn.lv
conf.lv

// ly : http://www.nic.ly/regulations.php
ly
com.ly
net.ly
gov.ly
plc.ly
edu.ly
sch.ly
med.ly
org.ly
id.ly

// ma : http://en.wikipedia.org/wiki/.ma
// list of 2nd level tlds ?
ma
co.ma
net.ma
gov.ma
org.ma

// mc : http://www.nic.mc/
mc
tm.mc
asso.mc

// md : http://en.wikipedia.org/wiki/.md
md

// mg : http://www.nic.mg/tarif.htm
mg
org.mg
nom.mg
gov.mg
prd.mg
tm.mg
edu.mg
mil.mg
com.mg

// mh : http://en.wikipedia.org/wiki/.mh
mh

// mil : http://en.wikipedia.org/wiki/.mil
mil

// mk : http://en.wikipedia.org/wiki/.mk
// list of 2nd level tlds ?
mk
com.mk
gov.mk
org.mk
net.mk
edu.mk

// ml : http://www.gobin.info/domainname/ml-template.doc
*.ml

// mm : http://en.wikipedia.org/wiki/.mm
*.mm

// mn : http://en.wikipedia.org/wiki/.mn
mn
gov.mn
edu.mn
org.mn

// mo : http://www.monic.net.mo/
mo
com.mo
net.mo
org.mo
edu.mo
gov.mo

// mobi : http://en.wikipedia.org/wiki/.mobi
mobi

// mp : http://www.dot.mp/
// Confirmed by registry <dcamacho@saipan.com> 2008-06-17
mp

// mq : http://en.wikipedia.org/wiki/.mq
mq

// mr : http://en.wikipedia.org/wiki/.mr
mr

// ms : http://en.wikipedia.org/wiki/.ms
ms

// mt : https://www.nic.org.mt/dotmt/
*.mt

// mu : http://en.wikipedia.org/wiki/.mu
// list of 2nd level tlds ?
mu

// museum : http://about.museum/naming/
// there are 2nd-level TLD's, but there's no list
museum

// mv : http://en.wikipedia.org/wiki/.mv
*.mv

// mw : http://www.registrar.mw/
mw
ac.mw
biz.mw
co.mw
com.mw
coop.mw
edu.mw
gov.mw
int.mw
net.mw
org.mw

// mx : http://www.nic.mx/
// 2008-06-23 - Wikipedia says second level registrations are prohibited,
// but several exist. So, for safety, switched from "*.mx" to the below
// ruleset until the situation is more clear.
mx
com.mx
org.mx
gob.mx
edu.mx
net.mx

// my : http://www.mynic.net.my/
*.my

// mz : http://www.gobin.info/domainname/mz-template.doc
*.mz

// na : http://www.na-nic.com.na/
// list of 2nd level tlds ?
na

// name : has 2nd-level tlds, but there's no list of them
name

// nc : http://www.cctld.nc/
nc

// ne : http://en.wikipedia.org/wiki/.ne
ne

// net : http://en.wikipedia.org/wiki/.net
net

// CentralNic names : http://www.centralnic.com/names/domains
// Submitted by registry <gavin.brown@centralnic.com> 2008-06-17
gb.net
se.net
uk.net

// nf : http://en.wikipedia.org/wiki/.nf
nf
com.nf
net.nf
per.nf
rec.nf
web.nf
arts.nf
firm.nf
info.nf
other.nf
store.nf

// ng : http://psg.com/dns/ng/
// Submitted by registry <randy@psg.com> 2008-06-17
ac.ng
com.ng
edu.ng
gov.ng
net.ng
org.ng

// ni : http://www.nic.ni/dominios.htm
*.ni

// nl : http://www.domain-registry.nl/ace.php/c,728,122,,,,Home.html
// Confirmed by registry <Antoin.Verschuren@sidn.nl> (with technical
// reservations) 2008-06-08
nl

// no : http://www.norid.no/regelverk/index.en.html
// The Norwegian registry has declined to notify us of updates. The web pages
// referenced below are the official source of the data. There is also an
// announce mailing list: 
// https://postlister.uninett.no/sympa/info/norid-diskusjon
no
// Norid generic domains : http://www.norid.no/regelverk/vedlegg-c.en.html
fhs.no
vgs.no
fylkesbibl.no
folkebibl.no
museum.no
idrett.no
// Non-Norid generic domains : http://www.norid.no/regelverk/vedlegg-d.en.html
mil.no
stat.no
dep.no
kommune.no
herad.no
priv.no
// no geographical names : http://www.norid.no/regelverk/vedlegg-b.en.html
// counties
aa.no
ah.no
bu.no
fm.no
hl.no
hm.no
jan-mayen.no
mr.no
nl.no
nt.no
of.no
ol.no
oslo.no
rl.no
sf.no
st.no
svalbard.no
tm.no
tr.no
va.no
vf.no
// primary and lower secondary schools per county
gs.aa.no
gs.ah.no
gs.bu.no
gs.fm.no
gs.hl.no
gs.hm.no
gs.jan-mayen.no
gs.mr.no
gs.nl.no
gs.nt.no
gs.of.no
gs.ol.no
gs.oslo.no
gs.rl.no
gs.sf.no
gs.st.no
gs.svalbard.no
gs.tm.no
gs.tr.no
gs.va.no
gs.vf.no
// cities
akrehamn.no
åkrehamn.no
algard.no
ålgård.no
arna.no
brumunddal.no
bryne.no
bronnoysund.no
brønnøysund.no
drobak.no
drøbak.no
egersund.no
fetsund.no
floro.no
florø.no
fredrikstad.no
hokksund.no
honefoss.no
hønefoss.no
jessheim.no
jorpeland.no
jørpeland.no
kirkenes.no
kopervik.no
krokstadelva.no
langevag.no
langevåg.no
leirvik.no
mjondalen.no
mjøndalen.no
mo-i-rana.no
mosjoen.no
mosjøen.no
nesoddtangen.no
orkanger.no
osoyro.no
osøyro.no
raholt.no
råholt.no
sandnessjoen.no
sandnessjøen.no
skedsmokorset.no
slattum.no
spjelkavik.no
stathelle.no
stavern.no
stjordalshalsen.no
stjørdalshalsen.no
tananger.no
tranby.no
vossevangen.no
// communities
afjord.no
åfjord.no
agdenes.no
al.no
ål.no
alesund.no
ålesund.no
alstahaug.no
alta.no
áltá.no
alaheadju.no
álaheadju.no
alvdal.no
amli.no
åmli.no
amot.no
åmot.no
andebu.no
andoy.no
andøy.no
andasuolo.no
ardal.no
årdal.no
aremark.no
arendal.no
ås.no
aseral.no
åseral.no
asker.no
askim.no
askvoll.no
askoy.no
askøy.no
asnes.no
åsnes.no
audnedaln.no
aukra.no
aure.no
aurland.no
aurskog-holand.no
aurskog-høland.no
austevoll.no
austrheim.no
averoy.no
averøy.no
balestrand.no
ballangen.no
balat.no
bálát.no
balsfjord.no
bahccavuotna.no
báhccavuotna.no
bamble.no
bardu.no
beardu.no
beiarn.no
bajddar.no
bájddar.no
baidar.no
báidár.no
berg.no
bergen.no
berlevag.no
berlevåg.no
bearalvahki.no
bearalváhki.no
bindal.no
birkenes.no
bjarkoy.no
bjarkøy.no
bjerkreim.no
bjugn.no
bodo.no
bodø.no
badaddja.no
bådåddjå.no
budejju.no
bokn.no
bremanger.no
bronnoy.no
brønnøy.no
bygland.no
bykle.no
barum.no
bærum.no
bo.telemark.no
bø.telemark.no
bo.nordland.no
bø.nordland.no
bievat.no
bievát.no
bomlo.no
bømlo.no
batsfjord.no
båtsfjord.no
bahcavuotna.no
báhcavuotna.no
dovre.no
drammen.no
drangedal.no
dyroy.no
dyrøy.no
donna.no
dønna.no
eid.no
eidfjord.no
eidsberg.no
eidskog.no
eidsvoll.no
eigersund.no
elverum.no
enebakk.no
engerdal.no
etne.no
etnedal.no
evenes.no
evenassi.no
evenášši.no
evje-og-hornnes.no
farsund.no
fauske.no
fuossko.no
fuoisku.no
fedje.no
fet.no
finnoy.no
finnøy.no
fitjar.no
fjaler.no
fjell.no
flakstad.no
flatanger.no
flekkefjord.no
flesberg.no
flora.no
fla.no
flå.no
folldal.no
forsand.no
fosnes.no
frei.no
frogn.no
froland.no
frosta.no
frana.no
fræna.no
froya.no
frøya.no
fusa.no
fyresdal.no
forde.no
førde.no
gamvik.no
gangaviika.no
gáŋgaviika.no
gaular.no
gausdal.no
gildeskal.no
gildeskål.no
giske.no
gjemnes.no
gjerdrum.no
gjerstad.no
gjesdal.no
gjovik.no
gjøvik.no
gloppen.no
gol.no
gran.no
grane.no
granvin.no
gratangen.no
grimstad.no
grong.no
kraanghke.no
kråanghke.no
grue.no
gulen.no
hadsel.no
halden.no
halsa.no
hamar.no
hamaroy.no
habmer.no
hábmer.no
hapmir.no
hápmir.no
hammerfest.no
hammarfeasta.no
hámmárfeasta.no
haram.no
hareid.no
harstad.no
hasvik.no
aknoluokta.no
ákŋoluokta.no
hattfjelldal.no
aarborte.no
haugesund.no
hemne.no
hemnes.no
hemsedal.no
heroy.more-og-romsdal.no
herøy.møre-og-romsdal.no
heroy.nordland.no
herøy.nordland.no
hitra.no
hjartdal.no
hjelmeland.no
hobol.no
hobøl.no
hof.no
hol.no
hole.no
holmestrand.no
holtalen.no
holtålen.no
hornindal.no
horten.no
hurdal.no
hurum.no
hvaler.no
hyllestad.no
hagebostad.no
hægebostad.no
hoyanger.no
høyanger.no
hoylandet.no
høylandet.no
ha.no
hå.no
ibestad.no
inderoy.no
inderøy.no
iveland.no
jevnaker.no
jondal.no
jolster.no
jølster.no
karasjok.no
karasjohka.no
kárášjohka.no
karlsoy.no
galsa.no
gálsá.no
karmoy.no
karmøy.no
kautokeino.no
guovdageaidnu.no
klepp.no
klabu.no
klæbu.no
kongsberg.no
kongsvinger.no
kragero.no
kragerø.no
kristiansand.no
kristiansund.no
krodsherad.no
krødsherad.no
kvalsund.no
rahkkeravju.no
ráhkkerávju.no
kvam.no
kvinesdal.no
kvinnherad.no
kviteseid.no
kvitsoy.no
kvitsøy.no
kvafjord.no
kvæfjord.no
giehtavuoatna.no
kvanangen.no
kvænangen.no
navuotna.no
návuotna.no
kafjord.no
kåfjord.no
gaivuotna.no
gáivuotna.no
larvik.no
lavangen.no
lavagis.no
loabat.no
loabát.no
lebesby.no
davvesiida.no
leikanger.no
leirfjord.no
leka.no
leksvik.no
lenvik.no
leangaviika.no
leaŋgaviika.no
lesja.no
levanger.no
lier.no
lierne.no
lillehammer.no
lillesand.no
lindesnes.no
lindas.no
lindås.no
lom.no
loppa.no
lahppi.no
láhppi.no
lund.no
lunner.no
luroy.no
lurøy.no
luster.no
lyngdal.no
lyngen.no
ivgu.no
lardal.no
lerdal.no
lærdal.no
lodingen.no
lødingen.no
lorenskog.no
lørenskog.no
loten.no
løten.no
malvik.no
masoy.no
måsøy.no
muosat.no
muosát.no
mandal.no
marker.no
marnardal.no
masfjorden.no
meland.no
meldal.no
melhus.no
meloy.no
meløy.no
meraker.no
meråker.no
moareke.no
moåreke.no
midsund.no
midtre-gauldal.no
modalen.no
modum.no
molde.no
moskenes.no
moss.no
mosvik.no
malselv.no
målselv.no
malatvuopmi.no
málatvuopmi.no
namdalseid.no
aejrie.no
namsos.no
namsskogan.no
naamesjevuemie.no
nååmesjevuemie.no
laakesvuemie.no
nannestad.no
narvik.no
narviika.no
naustdal.no
nedre-eiker.no
nes.akershus.no
nes.buskerud.no
nesna.no
nesodden.no
nesseby.no
unjarga.no
unjárga.no
nesset.no
nissedal.no
nittedal.no
nord-aurdal.no
nord-fron.no
nord-odal.no
norddal.no
nordkapp.no
davvenjarga.no
davvenjárga.no
nordre-land.no
nordreisa.no
raisa.no
ráisa.no
nore-og-uvdal.no
notodden.no
naroy.no
nærøy.no
notteroy.no
nøtterøy.no
odda.no
oksnes.no
øksnes.no
oppdal.no
oppegard.no
oppegård.no
orkdal.no
orland.no
ørland.no
orskog.no
ørskog.no
orsta.no
ørsta.no
os.hedmark.no
os.hordaland.no
osen.no
osteroy.no
osterøy.no
ostre-toten.no
østre-toten.no
overhalla.no
ovre-eiker.no
øvre-eiker.no
oyer.no
øyer.no
oygarden.no
øygarden.no
oystre-slidre.no
øystre-slidre.no
porsanger.no
porsangu.no
porsáŋgu.no
porsgrunn.no
radoy.no
radøy.no
rakkestad.no
rana.no
ruovat.no
randaberg.no
rauma.no
rendalen.no
rennebu.no
rennesoy.no
rennesøy.no
rindal.no
ringebu.no
ringerike.no
ringsaker.no
rissa.no
risor.no
risør.no
roan.no
rollag.no
rygge.no
ralingen.no
rælingen.no
rodoy.no
rødøy.no
romskog.no
rømskog.no
roros.no
røros.no
rost.no
røst.no
royken.no
røyken.no
royrvik.no
røyrvik.no
rade.no
råde.no
salangen.no
siellak.no
saltdal.no
salat.no
sálát.no
sálat.no
samnanger.no
sande.more-og-romsdal.no
sande.møre-og-romsdal.no
sande.vestfold.no
sandefjord.no
sandnes.no
sandoy.no
sandøy.no
sarpsborg.no
sauda.no
sauherad.no
sel.no
selbu.no
selje.no
seljord.no
sigdal.no
siljan.no
sirdal.no
skaun.no
skedsmo.no
ski.no
skien.no
skiptvet.no
skjervoy.no
skjervøy.no
skierva.no
skiervá.no
skjak.no
skjåk.no
skodje.no
skanland.no
skånland.no
skanit.no
skánit.no
smola.no
smøla.no
snillfjord.no
snasa.no
snåsa.no
snoasa.no
snaase.no
snåase.no
sogndal.no
sokndal.no
sola.no
solund.no
songdalen.no
sortland.no
spydeberg.no
stange.no
stavanger.no
steigen.no
steinkjer.no
stjordal.no
stjørdal.no
stokke.no
stor-elvdal.no
stord.no
stordal.no
storfjord.no
omasvuotna.no
strand.no
stranda.no
stryn.no
sula.no
suldal.no
sund.no
sunndal.no
surnadal.no
sveio.no
svelvik.no
sykkylven.no
sogne.no
søgne.no
somna.no
sømna.no
sondre-land.no
søndre-land.no
sor-aurdal.no
sør-aurdal.no
sor-fron.no
sør-fron.no
sor-odal.no
sør-odal.no
sor-varanger.no
sør-varanger.no
matta-varjjat.no
mátta-várjjat.no
sorfold.no
sørfold.no
sorreisa.no
sørreisa.no
sorum.no
sørum.no
tana.no
deatnu.no
time.no
tingvoll.no
tinn.no
tjeldsund.no
dielddanuorri.no
tjome.no
tjøme.no
tokke.no
tolga.no
torsken.no
tranoy.no
tranøy.no
tromso.no
tromsø.no
tromsa.no
romsa.no
trondheim.no
troandin.no
trysil.no
trana.no
træna.no
trogstad.no
trøgstad.no
tvedestrand.no
tydal.no
tynset.no
tysfjord.no
divtasvuodna.no
divttasvuotna.no
tysnes.no
tysvar.no
tysvær.no
tonsberg.no
tønsberg.no
ullensaker.no
ullensvang.no
ulvik.no
utsira.no
vadso.no
vadsø.no
cahcesuolo.no
čáhcesuolo.no
vaksdal.no
valle.no
vang.no
vanylven.no
vardo.no
vardø.no
varggat.no
várggát.no
vefsn.no
vaapste.no
vega.no
vegarshei.no
vegårshei.no
vennesla.no
verdal.no
verran.no
vestby.no
vestnes.no
vestre-slidre.no
vestre-toten.no
vestvagoy.no
vestvågøy.no
vevelstad.no
vik.no
vikna.no
vindafjord.no
volda.no
voss.no
varoy.no
værøy.no
vagan.no
vågan.no
voagat.no
vagsoy.no
vågsøy.no
vaga.no
vågå.no
valer.ostfold.no
våler.østfold.no
valer.hedmark.no
våler.hedmark.no

// np : http://www.mos.com.np/register.html
*.np

// nr : http://cenpac.net.nr/dns/index.html
// Confirmed by registry <technician@cenpac.net.nr> 2008-06-17
nr
biz.nr
info.nr
gov.nr
edu.nr
org.nr
net.nr
com.nr

// nu : http://en.wikipedia.org/wiki/.nu
nu

// nz : http://en.wikipedia.org/wiki/.nz
*.nz

// om : http://en.wikipedia.org/wiki/.om
*.om

// org : http://en.wikipedia.org/wiki/.org
org

// CentralNic names : http://www.centralnic.com/names/domains
// Submitted by registry <gavin.brown@centralnic.com> 2008-06-17
ae.org

// pa : http://www.nic.pa/
*.pa

// pe : http://www.nic.pe/normas-proced-i.htm
*.pe

// pf : http://www.gobin.info/domainname/formulaire-pf.pdf
pf
com.pf
org.pf
edu.pf

// pg : http://en.wikipedia.org/wiki/.pg
*.pg

// ph : http://www.domains.ph/FAQ2.asp
// Submitted by registry <jed@email.com.ph> 2008-06-13
ph
com.ph
net.ph
org.ph
gov.ph
edu.ph
ngo.ph
mil.ph
i.ph

// pk : http://pk5.pknic.net.pk/pk5/msgNamepk.PK
pk
com.pk
net.pk
edu.pk
org.pk
fam.pk
biz.pk
web.pk
gov.pk
gob.pk
gok.pk
gon.pk
gop.pk
gos.pk
goa.pk
info.pk

// pl : http://www.dns.pl/english/
pl
// NASK functional domains (nask.pl / dns.pl) : http://www.dns.pl/english/dns-funk.html
aid.pl
agro.pl
atm.pl
auto.pl
biz.pl
com.pl
edu.pl
gmina.pl
gsm.pl
info.pl
mail.pl
miasta.pl
media.pl
mil.pl
net.pl
nieruchomosci.pl
nom.pl
org.pl
pc.pl
powiat.pl
priv.pl
realestate.pl
rel.pl
sex.pl
shop.pl
sklep.pl
sos.pl
szkola.pl
targi.pl
tm.pl
tourism.pl
travel.pl
turystyka.pl
// ICM functional domains (icm.edu.pl)
6bone.pl
art.pl
mbone.pl
// Government domains (administred by ippt.gov.pl)
gov.pl
uw.gov.pl
um.gov.pl
ug.gov.pl
upow.gov.pl
starostwo.gov.pl
so.gov.pl
sr.gov.pl
po.gov.pl
pa.gov.pl
// other functional domains
med.pl
ngo.pl
irc.pl
usenet.pl
// NASK geographical domains : http://www.dns.pl/english/dns-regiony.html
augustow.pl
babia-gora.pl
bedzin.pl
beskidy.pl
bialowieza.pl
bialystok.pl
bielawa.pl
bieszczady.pl
boleslawiec.pl
bydgoszcz.pl
bytom.pl
cieszyn.pl
czeladz.pl
czest.pl
dlugoleka.pl
elblag.pl
elk.pl
glogow.pl
gniezno.pl
gorlice.pl
grajewo.pl
ilawa.pl
jaworzno.pl
jelenia-gora.pl
jgora.pl
kalisz.pl
kazimierz-dolny.pl
karpacz.pl
kartuzy.pl
kaszuby.pl
katowice.pl
kepno.pl
ketrzyn.pl
klodzko.pl
kobierzyce.pl
kolobrzeg.pl
konin.pl
konskowola.pl
kutno.pl
lapy.pl
lebork.pl
legnica.pl
lezajsk.pl
limanowa.pl
lomza.pl
lowicz.pl
lubin.pl
lukow.pl
malbork.pl
malopolska.pl
mazowsze.pl
mazury.pl
mielec.pl
mielno.pl
mragowo.pl
naklo.pl
nowaruda.pl
nysa.pl
olawa.pl
olecko.pl
olkusz.pl
olsztyn.pl
opoczno.pl
opole.pl
ostroda.pl
ostroleka.pl
ostrowiec.pl
ostrowwlkp.pl
pila.pl
pisz.pl
podhale.pl
podlasie.pl
polkowice.pl
pomorze.pl
pomorskie.pl
prochowice.pl
pruszkow.pl
przeworsk.pl
pulawy.pl
radom.pl
rawa-maz.pl
rybnik.pl
rzeszow.pl
sanok.pl
sejny.pl
slask.pl
slupsk.pl
sosnowiec.pl
stalowa-wola.pl
skoczow.pl
starachowice.pl
stargard.pl
suwalki.pl
swidnica.pl
swiebodzin.pl
swinoujscie.pl
szczecin.pl
szczytno.pl
tarnobrzeg.pl
tgory.pl
turek.pl
tychy.pl
ustka.pl
walbrzych.pl
warmia.pl
warszawa.pl
waw.pl
wegrow.pl
wielun.pl
wlocl.pl
wloclawek.pl
wodzislaw.pl
wolomin.pl
wroclaw.pl
zachpomor.pl
zagan.pl
zarow.pl
zgora.pl
zgorzelec.pl
// TASK geographical domains (www.task.gda.pl/uslugi/dns)
gda.pl
gdansk.pl
gdynia.pl
sopot.pl
// other geographical domains
gliwice.pl
krakow.pl
poznan.pl
wroc.pl
zakopane.pl

// pn : http://www.government.pn/PnRegistry/policies.htm
pn
gov.pn
co.pn
org.pn
edu.pn
net.pn

// pr : http://www.nic.pr/index.asp?f=1
pr
com.pr
net.pr
org.pr
gov.pr
edu.pr
isla.pr
pro.pr
biz.pr
info.pr
name.pr
// these aren't mentioned on nic.pr, but on http://en.wikipedia.org/wiki/.pr
est.pr
prof.pr
ac.pr

// pro : http://www.nic.pro/support_faq.htm
pro
aca.pro
bar.pro
cpa.pro
jur.pro
law.pro
med.pro
eng.pro

// ps : http://en.wikipedia.org/wiki/.ps
// list of 2nd level tlds ?
ps
edu.ps
gov.ps
sec.ps
plo.ps
com.ps
org.ps
net.ps

// pt : http://online.dns.pt/dns/start_dns
pt
net.pt
gov.pt
org.pt
edu.pt
int.pt
publ.pt
com.pt
nome.pt

// pw : http://en.wikipedia.org/wiki/.pw
*.pw

// py : http://www.nic.py/faq_a.html#faq_b
*.py

// qa : http://www.qatar.net.qa/services/virtual.htm
*.qa

// re : http://www.afnic.re/obtenir/chartes/nommage-re/annexe-descriptifs
re
com.re
asso.re
nom.re

// ro : http://www.rotld.ro/
ro
com.ro
org.ro
tm.ro
nt.ro
nom.ro
info.ro
rec.ro
arts.ro
firm.ro
store.ro
www.ro

// ru : http://en.wikipedia.org/wiki/.ru
ru
com.ru
net.ru
org.ru
pp.ru
int.ru
// there should be geo-names like msk.ru, but I didn't find a list

// rw : http://www.nic.rw/cgi-bin/policy.pl
rw
gov.rw
net.rw
edu.rw
ac.rw
com.rw
co.rw
int.rw
mil.rw
gouv.rw

// sa : http://www.saudinic.net.sa/page.php?page=1&lang=1
*.sa

// sb : http://www.sbnic.net.sb/
// Submitted by registry <lee.humphries@telekom.com.sb> 2008-06-08
sb
com.sb
edu.sb
gov.sb
net.sb
org.sb

// sc : http://www.nic.sc/
sc
com.sc
gov.sc
net.sc
org.sc
edu.sc

// sd : http://www.isoc.sd/sudanic.isoc.sd/billing_pricing.htm
// Submitted by registry <admin@isoc.sd> 2008-06-17
sd
com.sd
net.sd
org.sd
edu.sd
med.sd
gov.sd
info.sd

// se : http://en.wikipedia.org/wiki/.se
se
org.se
pp.se
tm.se
parti.se
press.se
mil.se
// se geographical names
ab.se
c.se
d.se
e.se
f.se
g.se
h.se
i.se
k.se
m.se
n.se
o.se
s.se
t.se
u.se
w.se
x.se
y.se
z.se
ac.se
bd.se

// sg : http://www.nic.net.sg/sub_policies_agreement/2ld.html
sg
com.sg
net.sg
org.sg
gov.sg
edu.sg
per.sg

// sh : http://www.nic.sh/rules.html
// list of 2nd level domains ?
sh

// si : http://en.wikipedia.org/wiki/.si
si

// sj : No registrations at this time.
// Submitted by registry <jarle@uninett.no> 2008-06-16

// sk : http://en.wikipedia.org/wiki/.sk
sk

// sl : http://www.nic.sl
// Submitted by registry <adam@neoip.com> 2008-06-12
sl
com.sl
net.sl
edu.sl
gov.sl
org.sl

// sm : http://en.wikipedia.org/wiki/.sm
sm

// sn : http://en.wikipedia.org/wiki/.sn
// list of 2nd level domains ?
sn

// sr : http://en.wikipedia.org/wiki/.sr
sr

// st : http://www.nic.st/html/policyrules/
st

// su : http://en.wikipedia.org/wiki/.su
su

// sv : http://www.svnet.org.sv/svpolicy.html
*.sv

// sy : http://www.gobin.info/domainname/sy.doc
*.sy

// sz : http://en.wikipedia.org/wiki/.sz
// list of 2nd level domains ?
sz

// tc : http://en.wikipedia.org/wiki/.tc
tc

// td : http://en.wikipedia.org/wiki/.td
td

// tf : http://en.wikipedia.org/wiki/.tf
tf

// tg : http://en.wikipedia.org/wiki/.tg
// list of 2nd level domains ?
tg

// th : http://en.wikipedia.org/wiki/.th
// Submitted by registry <krit@thains.co.th> 2008-06-17
th
ac.th
co.th
go.th
in.th
mi.th
net.th
or.th

// tj : http://www.nic.tj/policy.htm
tj
ac.tj
biz.tj
com.tj
co.tj
edu.tj
int.tj
name.tj
net.tj
org.tj
web.tj
gov.tj
go.tj
mil.tj

// tk : http://en.wikipedia.org/wiki/.tk
tk

// tl : http://en.wikipedia.org/wiki/.tl
// list of 2nd level tlds ?
tl

// tm : http://www.nic.tm/rules.html
// list of 2nd level tlds ?
tm

// tn : http://en.wikipedia.org/wiki/.tn
// list of 2nd level tlds ?
tn

// to : http://en.wikipedia.org/wiki/.to
// Submitted by registry <egullich@colo.to> 2008-06-17
to
com.to
gov.to
net.to
org.to
edu.to
mil.to

// tr : http://en.wikipedia.org/wiki/.tr
*.tr

// travel : http://en.wikipedia.org/wiki/.travel
travel

// tt : http://www.nic.tt/
tt
co.tt
com.tt
org.tt
net.tt
biz.tt
info.tt
pro.tt
int.tt
coop.tt
jobs.tt
mobi.tt
travel.tt
museum.tt
aero.tt
name.tt
gov.tt
edu.tt

// tv : http://en.wikipedia.org/wiki/.tv
// list of 2nd level tlds ?
tv

// tw : http://en.wikipedia.org/wiki/.tw
tw
edu.tw
gov.tw
mil.tw
com.tw
net.tw
org.tw
idv.tw
game.tw
ebiz.tw
club.tw
網路.tw
組織.tw
商業.tw

// tz : http://en.wikipedia.org/wiki/.tz
// Submitted by registry <randy@psg.com> 2008-06-17
ac.tz
co.tz
go.tz
ne.tz
or.tz

// ua : http://www.nic.net.ua/
ua
com.ua
edu.ua
gov.ua
net.ua
org.ua
// ua geo-names
cherkassy.ua
chernigov.ua
chernovtsy.ua
ck.ua
cn.ua
crimea.ua
cv.ua
dn.ua
dnepropetrovsk.ua
donetsk.ua
dp.ua
if.ua
ivano-frankivsk.ua
kh.ua
kharkov.ua
kherson.ua
kiev.ua
kirovograd.ua
km.ua
kr.ua
ks.ua
lg.ua
lugansk.ua
lutsk.ua
lviv.ua
mk.ua
nikolaev.ua
od.ua
odessa.ua
pl.ua
poltava.ua
rovno.ua
rv.ua
sebastopol.ua
sumy.ua
te.ua
ternopil.ua
vinnica.ua
vn.ua
zaporizhzhe.ua
zp.ua
uz.ua
uzhgorod.ua
zhitomir.ua
zt.ua

// ug : http://www.registry.co.ug/
ug
co.ug
ac.ug
sc.ug
go.ug
ne.ug
or.ug

// uk : http://en.wikipedia.org/wiki/.uk
*.uk
*.sch.uk
!bl.uk
!british-library.uk
!icnet.uk
!jet.uk
!nel.uk
!nls.uk
!national-library-scotland.uk
!parliament.uk

// us : http://en.wikipedia.org/wiki/.us
us
dni.us
fed.us
isa.us
kids.us
nsn.us
// us geographic names
ak.us
al.us
ar.us
as.us
az.us
ca.us
co.us
ct.us
dc.us
de.us
fl.us
ga.us
gu.us
hi.us
ia.us
id.us
il.us
in.us
ks.us
ky.us
la.us
ma.us
md.us
me.us
mi.us
mn.us
mo.us
ms.us
mt.us
nc.us
nd.us
ne.us
nh.us
nj.us
nm.us
nv.us
ny.us
oh.us
ok.us
or.us
pa.us
pr.us
ri.us
sc.us
sd.us
tn.us
tx.us
ut.us
vi.us
vt.us
va.us
wa.us
wi.us
wv.us
wy.us
// the following rules would be only valid under the geo-name, but we can't express that
// *.*.us          cities, counties, parishes, and townships (locality.state.us)
// !ci.*.*.us       city government agencies (subdomain under locality)
// !town.*.*.us     town government agencies (subdomain under locality)
// !co.*.*.us       county government agencies (subdomain under locality)
// k12.*.us      public school districts
// pvt.k12.*.us  private schools
// cc.*.us       community colleges
// tec.*.us      technical and vocational schools
// lib.*.us      state, regional, city, and county libraries
// state.*.us    state government agencies
// gen.*.us      general independent entities (groups not fitting into the above categories)

// uy : http://www.antel.com.uy/
*.uy

// uz : http://www.reg.uz/registerr.html
// are there other 2nd level tlds ?
uz
com.uz
co.uz

// va : http://en.wikipedia.org/wiki/.va
va

// vc : http://en.wikipedia.org/wiki/.vc
// Submitted by registry <kshah@ca.afilias.info> 2008-06-13
vc
com.vc
net.vc
org.vc
gov.vc
mil.vc
edu.vc

// ve : http://registro.nic.ve/nicve/registro/index.html
*.ve

// vg : http://en.wikipedia.org/wiki/.vg
vg

// vi : http://www.nic.vi/Domain_Rules/body_domain_rules.html
vi
com.vi
org.vi
edu.vi
gov.vi

// vn : https://www.dot.vn/vnnic/vnnic/domainregistration.jsp
vn
com.vn
net.vn
org.vn
edu.vn
gov.vn
int.vn
ac.vn
biz.vn
info.vn
name.vn
pro.vn
health.vn

// vu : http://en.wikipedia.org/wiki/.vu
// list of 2nd level tlds ?
vu

// ws : http://en.wikipedia.org/wiki/.ws
ws

// ye : http://www.y.net.ye/services/domain_name.htm
*.ye

// yu : http://www.nic.yu/pravilnik-e.html
*.yu

// za : http://www.zadna.org.za/slds.html
*.za

// zm : http://en.wikipedia.org/wiki/.zm
*.zm

// zw : http://en.wikipedia.org/wiki/.zw
*.zw});
    return \@lines;
}

=head1 COPYRIGHT & LICENSE

Copyright 2008 Nicholas Melnick, all rights reserved.
Effective_tld file is generated by The Mozilla Foundation.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

1;