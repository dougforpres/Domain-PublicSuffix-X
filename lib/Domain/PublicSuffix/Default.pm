package Domain::PublicSuffix::Default;
use strict;
use warnings;

our $VERSION = '0.04';

=head1 NAME

Domain::PublicSuffix::Default - Default PublicSuffix data file

=head1 SYNOPSIS

 use Domain::PublicSuffix::Default;

 my $tld_list = Domain::PublicSuffix::Default::retrieve();

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
    my @lines = split(/\n/, q{// ***** BEGIN LICENSE BLOCK *****
// Version: MPL 1.1/GPL 2.0/LGPL 2.1
// 
// The contents of this file are subject to the Mozilla Public License Version 
// 1.1 (the "License"); you may not use this file except in compliance with 
// the License. You may obtain a copy of the License at 
// http://www.mozilla.org/MPL/
// 
// Software distributed under the License is distributed on an "AS IS" basis,
// WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
// for the specific language governing rights and limitations under the
// License.
// 
// The Original Code is the Public Suffix List.
// 
// The Initial Developer of the Original Code is
// Jo Hermans <jo.hermans@gmail.com>.
// Portions created by the Initial Developer are Copyright (C) 2007
// the Initial Developer. All Rights Reserved.
// 
// Contributor(s):
//   Ruben Arakelyan <ruben@wackomenace.co.uk>
//   Gervase Markham <gerv@gerv.net>
//   Pamela Greene <pamg.bugs@gmail.com>
//   David Triendl <david@triendl.name>
//   The kind representatives of many TLD registries
// 
// Alternatively, the contents of this file may be used under the terms of
// either the GNU General Public License Version 2 or later (the "GPL"), or
// the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
// in which case the provisions of the GPL or the LGPL are applicable instead
// of those above. If you wish to allow use of your version of this file only
// under the terms of either the GPL or the LGPL, and not to allow others to
// use your version of this file under the terms of the MPL, indicate your
// decision by deleting the provisions above and replace them with the notice
// and other provisions required by the GPL or the LGPL. If you do not delete
// the provisions above, a recipient may use your version of this file under
// the terms of any one of the MPL, the GPL or the LGPL.
// 
// ***** END LICENSE BLOCK *****

// ac : http://en.wikipedia.org/wiki/.ac
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
// see also: "Domain Name Eligibility Policy" at http://www.aeda.ae/eng/aepolicy.php
ae
co.ae
net.ae
org.ae
sch.ae
ac.ae
gov.ae
mil.ae

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
al
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
// http://www.dns.ao/REGISTR.DOC
ao
ed.ao
gv.ao
og.ao
co.ao
pb.ao
it.ao

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
// Confirmed by registry <iana-questions@icann.org> 2008-06-18
e164.arpa
in-addr.arpa
ip6.arpa
uri.arpa
urn.arpa

// as : http://en.wikipedia.org/wiki/.as
as
gov.as

// asia: http://en.wikipedia.org/wiki/.asia
asia

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
gov.bf

// bg : http://en.wikipedia.org/wiki/.bg
// https://www.register.bg/user/static/rules/en/index.html
bg
a.bg
b.bg
c.bg
d.bg
e.bg
f.bg
g.bg
h.bg
i.bg
j.bg
k.bg
l.bg
m.bg
n.bg
o.bg
p.bg
q.bg
r.bg
s.bg
t.bg
u.bg
v.bg
w.bg
x.bg
y.bg
z.bg
0.bg
1.bg
2.bg
3.bg
4.bg
5.bg
6.bg
7.bg
8.bg
9.bg	 	 	

// bh : http://en.wikipedia.org/wiki/.bh
// list of other 2nd level tlds ?
bh
com.bh

// bi : http://en.wikipedia.org/wiki/.bi
// http://whois.nic.bi/
bi
co.bi
com.bi
edu.bi
or.bi
org.bi

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
// Confirmed by registry <fneves@registro.br> 2008-06-24
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
can.br
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
// http://www.gobin.info/domainname/bw.doc
// list of other 2nd level tlds ?
bw
co.bw
org.bw

// by : http://en.wikipedia.org/wiki/.by
// http://tld.by/rules_2006_en.html
// list of other 2nd level tlds ?
by
gov.by
mil.by
// Official information does not indicate that com.by is a reserved
// second-level domain, but it's being used as one (see www.google.com.by and
// www.yahoo.com.by, for example), so we list it here for safety's sake.
com.by

// bz : http://en.wikipedia.org/wiki/.bz
// http://www.belizenic.bz/
bz
com.bz
net.bz
org.bz
edu.bz
gov.bz

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
// gc.ca: http://en.wikipedia.org/wiki/.gc.ca
// see also: http://registry.gc.ca/en/SubdomainFAQ
gc.ca

// cat : http://en.wikipedia.org/wiki/.cat
cat

// cc : http://en.wikipedia.org/wiki/.cc
cc

// cd : http://en.wikipedia.org/wiki/.cd
// see also: https://www.nic.cd/domain/insertDomain_2.jsp?act=1
cd
gov.cd

// cf : http://en.wikipedia.org/wiki/.cf
cf

// cg : http://en.wikipedia.org/wiki/.cg
cg

// ch : http://en.wikipedia.org/wiki/.ch
ch

// ci : http://en.wikipedia.org/wiki/.ci
// http://www.nic.ci/index.php?page=charte
ci
org.ci
or.ci
com.ci
co.ci
edu.ci
ed.ci
ac.ci
net.ci
go.ci
asso.ci
aéroport.ci
int.ci
presse.ci
md.ci
gouv.ci

// ck : http://en.wikipedia.org/wiki/.ck
*.ck

// cl : http://en.wikipedia.org/wiki/.cl
cl
gov.cl
gob.cl

// cm : http://en.wikipedia.org/wiki/.cm
cm
gov.cm

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
// list of other 2nd level tlds ?
cx
gov.cx

// cy : http://en.wikipedia.org/wiki/.cy
*.cy

// cz : http://en.wikipedia.org/wiki/.cz
cz

// de : http://en.wikipedia.org/wiki/.de
// Confirmed by registry <ops@denic.de> (with technical
// reservations) 2008-07-01
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
edu.dm
gov.dm

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
// Submitted by registry <vabboud@nic.ec> 2008-07-04
ec
com.ec
info.ec
net.ec
fin.ec
k12.ec
med.ec
pro.ec
org.ec
edu.ec
gov.ec
mil.ec

// edu : http://en.wikipedia.org/wiki/.edu
edu

// ee : http://www.eenet.ee/EENet/dom_reeglid.html#lisa_B
ee
edu.ee
gov.ee
riik.ee
lib.ee
med.ee
com.ee
pri.ee
aip.ee
org.ee
fie.ee

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
// aland.fi : http://en.wikipedia.org/wiki/.ax
// This domain is being phased out in favor of .ax. As there are still many
// domains under aland.fi, we still keep it on the list until aland.fi is
// completely removed.
// TODO: Check for updates (expected to be phased out around Q1/2009)
aland.fi

// fj : http://en.wikipedia.org/wiki/.fj
*.fj

// fk : http://en.wikipedia.org/wiki/.fk
*.fk

// fm : http://en.wikipedia.org/wiki/.fm
fm

// fo : http://en.wikipedia.org/wiki/.fo
fo

// fr : http://www.afnic.fr/
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

// gg : http://www.channelisles.net/applic/avextn.shtml
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

// gp : http://www.nic.gp/index.php?lang=en
gp
com.gp
net.gp
mobi.gp
edu.gp
org.gp
asso.gp

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
// http://registry.gy/
gy
co.gy
com.gy
net.gy

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
gov.ie

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
// see also: http://www.inregistry.in/policies/
// Please note, that nic.in is not an offical eTLD, but used by most
// government institutions.
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
// Confirmed by registry <iana-questions@icann.org> 2008-06-18
int
eu.int

// io : http://www.nic.io/rules.html
// list of other 2nd level tlds ?
io
com.io

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

// je : http://www.channelisles.net/applic/avextn.shtml
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
// http://www.domaine.km/documents/charte.doc
km
org.km
nom.km
gov.km
prd.km
tm.km
edu.km
mil.km
ass.km
com.km
// These are only mentioned as proposed suggestions at domaine.km, but
// http://en.wikipedia.org/wiki/.km says they're available for registration:
coop.km
asso.km
presse.km
medecin.km
notaires.km
pharmaciens.km
veterinaire.km
gouv.km

// kn : http://en.wikipedia.org/wiki/.kn
// http://www.dot.kn/domainRules.html
kn
net.kn
org.kn
edu.kn
gov.kn

// kr : http://en.wikipedia.org/wiki/.kr
// see also: http://domain.nida.or.kr/eng/registration.jsp
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
// see also: http://www.nic.lc/rules.htm
lc
com.lc
net.lc
co.lc
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
// gov.lt : http://www.gov.lt/index_en.php
gov.lt

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
// http://www.anrt.ma/fr/admin/download/upload/file_fr782.pdf
ma
co.ma
net.ma
gov.ma
org.ma
ac.ma
press.ma

// mc : http://www.nic.mc/
mc
tm.mc
asso.mc

// md : http://en.wikipedia.org/wiki/.md
md

// me : http://en.wikipedia.org/wiki/.me
me
co.me
net.me
org.me
edu.me
ac.me
gov.me
its.me
priv.me

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
// see also: http://dns.marnet.net.mk/postapka.php
mk
com.mk
org.mk
net.mk
edu.mk
gov.mk
inf.mk
name.mk

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
gov.mr

// ms : http://en.wikipedia.org/wiki/.ms
ms

// mt : https://www.nic.org.mt/dotmt/
*.mt

// mu : http://en.wikipedia.org/wiki/.mu
mu
com.mu
net.mu
org.mu
gov.mu
ac.mu
co.mu
or.mu

// museum : http://about.museum/naming/
// http://index.museum/
museum
academy.museum
agriculture.museum
air.museum
airguard.museum
alabama.museum
alaska.museum
amber.museum
ambulance.museum
american.museum
americana.museum
americanantiques.museum
americanart.museum
amsterdam.museum
and.museum
annefrank.museum
anthro.museum
anthropology.museum
antiques.museum
aquarium.museum
arboretum.museum
archaeological.museum
archaeology.museum
architecture.museum
art.museum
artanddesign.museum
artcenter.museum
artdeco.museum
arteducation.museum
artgallery.museum
arts.museum
artsandcrafts.museum
asmatart.museum
assassination.museum
assisi.museum
association.museum
astronomy.museum
atlanta.museum
austin.museum
australia.museum
automotive.museum
aviation.museum
axis.museum
badajoz.museum
baghdad.museum
bahn.museum
bale.museum
baltimore.museum
barcelona.museum
baseball.museum
basel.museum
baths.museum
bauern.museum
beauxarts.museum
beeldengeluid.museum
bellevue.museum
bergbau.museum
berkeley.museum
berlin.museum
bern.museum
bible.museum
bilbao.museum
bill.museum
birdart.museum
birthplace.museum
bonn.museum
boston.museum
botanical.museum
botanicalgarden.museum
botanicgarden.museum
botany.museum
brandywinevalley.museum
brasil.museum
bristol.museum
british.museum
britishcolumbia.museum
broadcast.museum
brunel.museum
brussel.museum
brussels.museum
bruxelles.museum
building.museum
burghof.museum
bus.museum
bushey.museum
cadaques.museum
california.museum
cambridge.museum
can.museum
canada.museum
capebreton.museum
carrier.museum
cartoonart.museum
casadelamoneda.museum
castle.museum
castres.museum
celtic.museum
center.museum
chattanooga.museum
cheltenham.museum
chesapeakebay.museum
chicago.museum
children.museum
childrens.museum
childrensgarden.museum
chiropractic.museum
chocolate.museum
christiansburg.museum
cincinnati.museum
cinema.museum
circus.museum
civilisation.museum
civilization.museum
civilwar.museum
clinton.museum
clock.museum
coal.museum
coastaldefence.museum
cody.museum
coldwar.museum
collection.museum
colonialwilliamsburg.museum
coloradoplateau.museum
columbia.museum
columbus.museum
communication.museum
communications.museum
community.museum
computer.museum
computerhistory.museum
comunicações.museum
contemporary.museum
contemporaryart.museum
convent.museum
copenhagen.museum
corporation.museum
correios-e-telecomunicações.museum
corvette.museum
costume.museum
countryestate.museum
county.museum
crafts.museum
cranbrook.museum
creation.museum
cultural.museum
culturalcenter.museum
culture.museum
cyber.museum
cymru.museum
dali.museum
dallas.museum
database.museum
ddr.museum
decorativearts.museum
delaware.museum
delmenhorst.museum
denmark.museum
depot.museum
design.museum
detroit.museum
dinosaur.museum
discovery.museum
dolls.museum
donostia.museum
durham.museum
eastafrica.museum
eastcoast.museum
education.museum
educational.museum
egyptian.museum
eisenbahn.museum
elburg.museum
elvendrell.museum
embroidery.museum
encyclopedic.museum
england.museum
entomology.museum
environment.museum
environmentalconservation.museum
epilepsy.museum
essex.museum
estate.museum
ethnology.museum
exeter.museum
exhibition.museum
family.museum
farm.museum
farmequipment.museum
farmers.museum
farmstead.museum
field.museum
figueres.museum
filatelia.museum
film.museum
fineart.museum
finearts.museum
finland.museum
flanders.museum
florida.museum
force.museum
fortmissoula.museum
fortworth.museum
foundation.museum
francaise.museum
frankfurt.museum
franziskaner.museum
freemasonry.museum
freiburg.museum
fribourg.museum
frog.museum
fundacio.museum
furniture.museum
gallery.museum
garden.museum
gateway.museum
geelvinck.museum
gemological.museum
geology.museum
georgia.museum
giessen.museum
glas.museum
glass.museum
gorge.museum
grandrapids.museum
graz.museum
guernsey.museum
halloffame.museum
hamburg.museum
handson.museum
harvestcelebration.museum
hawaii.museum
health.museum
heimatunduhren.museum
hellas.museum
helsinki.museum
hembygdsforbund.museum
heritage.museum
histoire.museum
historical.museum
historicalsociety.museum
historichouses.museum
historisch.museum
historisches.museum
history.museum
historyofscience.museum
horology.museum
house.museum
humanities.museum
illustration.museum
imageandsound.museum
indian.museum
indiana.museum
indianapolis.museum
indianmarket.museum
intelligence.museum
interactive.museum
iraq.museum
iron.museum
isleofman.museum
jamison.museum
jefferson.museum
jerusalem.museum
jewelry.museum
jewish.museum
jewishart.museum
jfk.museum
journalism.museum
judaica.museum
judygarland.museum
juedisches.museum
juif.museum
karate.museum
karikatur.museum
kids.museum
koebenhavn.museum
koeln.museum
kunst.museum
kunstsammlung.museum
kunstunddesign.museum
labor.museum
labour.museum
lajolla.museum
lancashire.museum
landes.museum
lans.museum
läns.museum
larsson.museum
lewismiller.museum
lincoln.museum
linz.museum
living.museum
livinghistory.museum
localhistory.museum
london.museum
losangeles.museum
louvre.museum
loyalist.museum
lucerne.museum
luxembourg.museum
luzern.museum
mad.museum
madrid.museum
mallorca.museum
manchester.museum
mansion.museum
mansions.museum
manx.museum
marburg.museum
maritime.museum
maritimo.museum
maryland.museum
marylhurst.museum
media.museum
medical.museum
medizinhistorisches.museum
meeres.museum
memorial.museum
mesaverde.museum
michigan.museum
midatlantic.museum
military.museum
mill.museum
miners.museum
mining.museum
minnesota.museum
missile.museum
missoula.museum
modern.museum
moma.museum
money.museum
monmouth.museum
monticello.museum
montreal.museum
moscow.museum
motorcycle.museum
muenchen.museum
muenster.museum
mulhouse.museum
muncie.museum
museet.museum
museumcenter.museum
museumvereniging.museum
music.museum
national.museum
nationalfirearms.museum
nationalheritage.museum
nativeamerican.museum
naturalhistory.museum
naturalhistorymuseum.museum
naturalsciences.museum
nature.museum
naturhistorisches.museum
natuurwetenschappen.museum
naumburg.museum
naval.museum
nebraska.museum
neues.museum
newhampshire.museum
newjersey.museum
newmexico.museum
newport.museum
newspaper.museum
newyork.museum
niepce.museum
norfolk.museum
north.museum
nrw.museum
nuernberg.museum
nuremberg.museum
nyc.museum
nyny.museum
oceanographic.museum
oceanographique.museum
omaha.museum
online.museum
ontario.museum
openair.museum
oregon.museum
oregontrail.museum
otago.museum
oxford.museum
pacific.museum
paderborn.museum
palace.museum
paleo.museum
palmsprings.museum
panama.museum
paris.museum
pasadena.museum
pharmacy.museum
philadelphia.museum
philadelphiaarea.museum
philately.museum
phoenix.museum
photography.museum
pilots.museum
pittsburgh.museum
planetarium.museum
plantation.museum
plants.museum
plaza.museum
portal.museum
portland.museum
portlligat.museum
posts-and-telecommunications.museum
preservation.museum
presidio.museum
press.museum
project.museum
public.museum
pubol.museum
quebec.museum
railroad.museum
railway.museum
research.museum
resistance.museum
riodejaneiro.museum
rochester.museum
rockart.museum
roma.museum
russia.museum
saintlouis.museum
salem.museum
salvadordali.museum
salzburg.museum
sandiego.museum
sanfrancisco.museum
santabarbara.museum
santacruz.museum
santafe.museum
saskatchewan.museum
satx.museum
savannahga.museum
schlesisches.museum
schoenbrunn.museum
schokoladen.museum
school.museum
schweiz.museum
science.museum
scienceandhistory.museum
scienceandindustry.museum
sciencecenter.museum
sciencecenters.museum
science-fiction.museum
sciencehistory.museum
sciences.museum
sciencesnaturelles.museum
scotland.museum
seaport.museum
settlement.museum
settlers.museum
shell.museum
sherbrooke.museum
sibenik.museum
silk.museum
ski.museum
skole.museum
society.museum
sologne.museum
soundandvision.museum
southcarolina.museum
southwest.museum
space.museum
spy.museum
square.museum
stadt.museum
stalbans.museum
starnberg.museum
state.museum
stateofdelaware.museum
station.museum
steam.museum
steiermark.museum
stjohn.museum
stockholm.museum
stpetersburg.museum
stuttgart.museum
suisse.museum
surgeonshall.museum
surrey.museum
svizzera.museum
sweden.museum
sydney.museum
tank.museum
tcm.museum
technology.museum
telekommunikation.museum
television.museum
texas.museum
textile.museum
theater.museum
time.museum
timekeeping.museum
topology.museum
torino.museum
touch.museum
town.museum
transport.museum
tree.museum
trolley.museum
trust.museum
trustee.museum
uhren.museum
ulm.museum
undersea.museum
university.museum
usa.museum
usantiques.museum
usarts.museum
uscountryestate.museum
usculture.museum
usdecorativearts.museum
usgarden.museum
ushistory.museum
ushuaia.museum
uslivinghistory.museum
utah.museum
uvic.museum
valley.museum
vantaa.museum
versailles.museum
viking.museum
village.museum
virginia.museum
virtual.museum
virtuel.museum
vlaanderen.museum
volkenkunde.museum
wales.museum
wallonie.museum
war.museum
washingtondc.museum
watchandclock.museum
watch-and-clock.museum
western.museum
westfalen.museum
whaling.museum
wildlife.museum
williamsburg.museum
windmill.museum
workshop.museum
york.museum
yorkshire.museum
yosemite.museum
youth.museum
zoological.museum
zoology.museum
ירושלים.museum
иком.museum

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
// Submitted by registry <farias@nic.mx> 2008-06-19
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
// http://www.info.na/domain/
na
info.na
pro.na
name.na
school.na
or.na
dr.na
us.na
mx.na
ca.na
in.na
cc.na
tv.na
ws.na
mobi.na
co.na
com.na
org.na

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
priv.no
// Non-Norid generic domains : http://www.norid.no/regelverk/vedlegg-d.en.html
mil.no
stat.no
dep.no
kommune.no
herad.no
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
// List with redundant entries as submitted by registry <edna.samudio@utp.ac.pa> 2008-06-18
//*.pa
//!nic.pa
//!pannet.pa
//!presidencia.pa
//!milpolleras.pa
//!sume911.pa
//!root-ca.pa
//ac.pa
//gob.pa
//com.pa
//org.pa
//sld.pa
//edu.pa
//net.pa
//ing.pa
//abo.pa
//med.pa
//nom.pa
// As discussed in bug #447815 on bugzilla.mozilla.org, the list has been truncated.
*.pa
!nic.pa
!pannet.pa
!presidencia.pa
!milpolleras.pa
!sume911.pa
!root-ca.pa

// pe : https://www.nic.pe/InformeFinalComision.pdf
pe
edu.pe
gob.pe
nom.pe
mil.pe
org.pe
com.pe
net.pe

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
// http://www.nic.ps/registration/policy.html#reg
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

// rs : http://en.wikipedia.org/wiki/.rs
rs
co.rs
org.rs
edu.rs
ac.rs
gov.rs
in.rs

// ru : http://en.wikipedia.org/wiki/.ru
ru
ac.ru
com.ru
net.ru
org.ru
pp.ru
int.ru
// Geographic domains (http://www.ripn.net:8082/nic/dns/geo_list.html)
adygeya.ru
altai.ru
amur.ru
arkhangelsk.ru
astrakhan.ru
bashkiria.ru
belgorod.ru
bir.ru
bryansk.ru
buryatia.ru
cbg.ru
chel.ru
chelyabinsk.ru
chita.ru
chukotka.ru
chuvashia.ru
dagestan.ru
dudinka.ru
e-burg.ru
grozny.ru
irkutsk.ru
ivanovo.ru
izhevsk.ru
jar.ru
joshkar-ola.ru
kalmykia.ru
kaluga.ru
kamchatka.ru
karelia.ru
kazan.ru
kchr.ru
kemerovo.ru
khabarovsk.ru
khakassia.ru
khv.ru
kirov.ru
koenig.ru
komi.ru
kostroma.ru
krasnoyarsk.ru
kuban.ru
kurgan.ru
kursk.ru
lipetsk.ru
magadan.ru
mari-el.ru
marine.ru
mari.ru
mordovia.ru
mosreg.ru
msk.ru
murmansk.ru
nalchik.ru
nnov.ru
novosibirsk.ru
nov.ru
nsk.ru
omsk.ru
orenburg.ru
oryol.ru
palana.ru
penza.ru
perm.ru
pskov.ru
ptz.ru
rnd.ru
ryazan.ru
sakhalin.ru
samara.ru
saratov.ru
simbirsk.ru
smolensk.ru
spb.ru
stavropol.ru
stv.ru
surgut.ru
tambov.ru
tatarstan.ru
tom.ru
tomsk.ru
tsaritsyn.ru
tsk.ru
tula.ru
tuva.ru
tver.ru
tyumen.ru
udm.ru
udmurtia.ru
ulan-ude.ru
vladikavkaz.ru
vladimir.ru
vladivostok.ru
volgograd.ru
vologda.ru
voronezh.ru
vrn.ru
vyatka.ru
yakutia.ru
yamal.ru
yaroslavl.ru
yekaterinburg.ru
yuzhno-sakhalinsk.ru
// Geographic domains registered before the adoption of the rules on the
// second level domain registration
amursk.ru
baikal.ru
cmw.ru
fareast.ru
jamal.ru
kms.ru
k-uralsk.ru
kustanai.ru
kuzbass.ru
magnitka.ru
mytis.ru
nakhodka.ru
nkz.ru
norilsk.ru
oskol.ru
pyatigorsk.ru
rubtsovsk.ru
snz.ru
syzran.ru
tagil.ru
vdonsk.ru
zgrad.ru

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
// List with redundant entries as submitted by registry <sa-tld-tech-contact@nic.net.sa> 2008-06-23
//*.sa
//com.sa
//net.sa
//org.sa
//gov.sa
//med.sa
//pub.sa
//edu.sa
//sch.sa
// As discussed in bug #447815 on bugzilla.mozilla.org, the list has been truncated.
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
// Submitted by registry <Patrik.Wallstrom@iis.se> 2008-06-24
se
a.se
ac.se
b.se
bd.se
brand.se
c.se
d.se
e.se
f.se
fh.se
fhsk.se
fhv.se
g.se
h.se
i.se
k.se
komforb.se
kommunalforbund.se
komvux.se
l.se
lanbib.se
m.se
n.se
naturbruksgymn.se
o.se
org.se
p.se
parti.se
pp.se
press.se
r.se
s.se
sshn.se
t.se
tm.se
u.se
w.se
x.se
y.se
z.se

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
// list of 2nd level domains ?
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
sn

// sr : http://en.wikipedia.org/wiki/.sr
sr

// st : http://www.nic.st/html/policyrules/
st
gov.st
saotome.st
principe.st
consulado.st
org.st
edu.st
net.st
com.st
store.st
mil.st
co.st

// su : http://en.wikipedia.org/wiki/.su
su

// sv : http://www.svnet.org.sv/svpolicy.html
*.sv

// sy : http://www.gobin.info/domainname/sy.doc
*.sy

// sz : http://en.wikipedia.org/wiki/.sz
// http://www.sispa.org.sz/
sz
co.sz
ac.sz
org.sz

// tc : http://en.wikipedia.org/wiki/.tc
tc

// td : http://en.wikipedia.org/wiki/.td
td

// tf : http://en.wikipedia.org/wiki/.tf
tf

// tg : http://en.wikipedia.org/wiki/.tg
// http://www.nic.tg/nictg/index.php implies no reserved 2nd-level domains,
// although this contradicts wikipedia.
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
tl
gov.tl

// tm : http://www.nic.tm/rules.html
// list of 2nd level tlds ?
tm

// tn : http://en.wikipedia.org/wiki/.tn
// http://whois.ati.tn/
tn
com.tn
ens.tn
fin.tn
gov.tn
ind.tn
intl.tn
nat.tn
net.tn
org.tn
info.tn
perso.tn
tourism.tn
edunet.tn
rnrt.tn
rns.tn
rnu.tn
mincom.tn
agrinet.tn
defense.tn
turen.tn

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
// list of other 2nd level tlds ?
tv
com.tv
net.tv
org.tv
gov.tv

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
khmelnitskiy.ua
kiev.ua
kirovograd.ua
km.ua
kr.ua
ks.ua
kv.ua
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
// http://samoanic.ws/index.dhtml
ws
com.ws
net.ws
org.ws
gov.ws
edu.ws

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