.class public Lo/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/h0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/h0<",
        "Lj/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lo/h;

.field public static final b:Lp/c$a;


# direct methods
.method public static constructor <clinit>()V
    .registers 12

    new-instance v0, Lo/h;

    invoke-direct {v0}, Lo/h;-><init>()V

    sput-object v0, Lo/h;->a:Lo/h;

    const-string/jumbo v1, "t"

    const-string v2, "f"

    const-string/jumbo v3, "s"

    const-string v4, "j"

    const-string/jumbo v5, "tr"

    const-string v6, "lh"

    const-string v7, "ls"

    const-string v8, "fc"

    const-string/jumbo v9, "sc"

    const-string/jumbo v10, "sw"

    const-string/jumbo v11, "of"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lp/c$a;->a([Ljava/lang/String;)Lp/c$a;

    move-result-object v0

    sput-object v0, Lo/h;->b:Lp/c$a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp/c;F)Ljava/lang/Object;
    .registers 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lp/c;->b()V

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v9, v0

    move-object v6, v1

    move-object v7, v6

    move v10, v2

    move v13, v10

    move v14, v13

    move v8, v3

    move v11, v8

    move v12, v11

    move v15, v12

    move/from16 v16, v4

    :goto_14
    invoke-virtual/range {p1 .. p1}, Lp/c;->e()Z

    move-result v1

    if-eqz v1, :cond_75

    sget-object v1, Lo/h;->b:Lp/c$a;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lp/c;->m(Lp/c$a;)I

    move-result v1

    packed-switch v1, :pswitch_data_82

    invoke-virtual/range {p1 .. p1}, Lp/c;->n()V

    invoke-virtual/range {p1 .. p1}, Lp/c;->o()V

    goto :goto_14

    :pswitch_2c  #0xa
    invoke-virtual/range {p1 .. p1}, Lp/c;->f()Z

    move-result v16

    goto :goto_14

    :pswitch_31  #0x9
    invoke-virtual/range {p1 .. p1}, Lp/c;->g()D

    move-result-wide v3

    double-to-float v15, v3

    goto :goto_14

    :pswitch_37  #0x8
    invoke-static/range {p1 .. p1}, Lo/p;->a(Lp/c;)I

    move-result v14

    goto :goto_14

    :pswitch_3c  #0x7
    invoke-static/range {p1 .. p1}, Lo/p;->a(Lp/c;)I

    move-result v13

    goto :goto_14

    :pswitch_41  #0x6
    invoke-virtual/range {p1 .. p1}, Lp/c;->g()D

    move-result-wide v3

    double-to-float v12, v3

    goto :goto_14

    :pswitch_47  #0x5
    invoke-virtual/range {p1 .. p1}, Lp/c;->g()D

    move-result-wide v3

    double-to-float v11, v3

    goto :goto_14

    :pswitch_4d  #0x4
    invoke-virtual/range {p1 .. p1}, Lp/c;->h()I

    move-result v10

    goto :goto_14

    :pswitch_52  #0x3
    invoke-virtual/range {p1 .. p1}, Lp/c;->h()I

    move-result v1

    const/4 v3, 0x2

    if-gt v1, v3, :cond_63

    if-gez v1, :cond_5c

    goto :goto_63

    :cond_5c
    invoke-static {}, Lj/b;->com$airbnb$lottie$model$DocumentData$Justification$s$values()[I

    move-result-object v3

    aget v9, v3, v1

    goto :goto_14

    :cond_63
    :goto_63
    move v9, v0

    goto :goto_14

    :pswitch_65  #0x2
    invoke-virtual/range {p1 .. p1}, Lp/c;->g()D

    move-result-wide v3

    double-to-float v8, v3

    goto :goto_14

    :pswitch_6b  #0x1
    invoke-virtual/range {p1 .. p1}, Lp/c;->j()Ljava/lang/String;

    move-result-object v7

    goto :goto_14

    :pswitch_70  #0x0
    invoke-virtual/range {p1 .. p1}, Lp/c;->j()Ljava/lang/String;

    move-result-object v6

    goto :goto_14

    :cond_75
    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Lp/c;->d()V

    new-instance v0, Lj/c;

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Lj/c;-><init>(Ljava/lang/String;Ljava/lang/String;FIIFFIIFZ)V

    return-object v0

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_70  #00000000
        :pswitch_6b  #00000001
        :pswitch_65  #00000002
        :pswitch_52  #00000003
        :pswitch_4d  #00000004
        :pswitch_47  #00000005
        :pswitch_41  #00000006
        :pswitch_3c  #00000007
        :pswitch_37  #00000008
        :pswitch_31  #00000009
        :pswitch_2c  #0000000a
    .end packed-switch
.end method
