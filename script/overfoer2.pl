#!/usr/bin/perl -w

while (<>) {
s/<trans decl="a1"/<trans pos="a"/g ;
s/<trans decl="a2"/<trans pos="a"/g ;
s/<trans decl="a3"/<trans pos="a"/g ;
s/<trans decl="a4"/<trans pos="a"/g ;
s/<trans decl="a5"/<trans pos="a"/g ;
s/<trans decl="adj"/<trans pos="a"/g ;
s/<trans decl="ax"/<trans pos="a"/g ;
s/<trans decl="fpl"/<trans pos="npl"/g ;
s/<trans decl="f"/<trans pos="n"/g ;
s/<trans decl="f1"/<trans pos="n"/g ;
s/<trans decl="f1ubst"/<trans pos="n"/g ;
s/<trans decl="f2"/<trans pos="n"/g ;
s/<trans decl="fx"/<trans pos="n"/g ;
s/<trans decl="m"/<trans pos="n"/g ;
s/<trans decl="m1"/<trans pos="n"/g ;
s/<trans decl="m2"/<trans pos="n"/g ;
s/<trans decl="m3"/<trans pos="n"/g ;
s/<trans decl="m4"/<trans pos="n"/g ;
s/<trans decl="mx"/<trans pos="n"/g ;
s/<trans decl="n1"/<trans pos="n"/g ;
s/<trans decl="npl"/<trans pos="n"/g ;
s/<trans decl="subs"/<trans pos="n"/g ;
s/<trans decl="subst"/<trans pos="n"/g ;
s/<trans decl="susbt"/<trans pos="n"/g ;
s/<trans decl="a"/<trans pos="a"/g ;
s/<trans decl="adv"/<trans pos="adv"/g ;
s/<trans decl="apl"/<trans pos="apl"/g ;
s/<trans decl="cs"/<trans pos="cs"/g ;
s/<trans decl="det"/<trans pos="det"/g ;
s/<trans decl="fpl"/<trans pos="npl"/g ;
s/<trans decl="fx"/<trans pos="n"/g ;
s/<trans decl="mpl"/<trans pos="npl"/g ;
s/<trans decl="mx"/<trans pos="n"/g ;
s/<trans decl="n"/<trans pos="n"/g ;
s/<trans decl="num"/<trans pos="num"/g ;
s/<trans decl="pr"/<trans pos="pr"/g ;
s/<trans decl="v"/<trans pos="v"/g ;
s/<trans decl="x"/<trans pos="x"/g ;
print ;
}