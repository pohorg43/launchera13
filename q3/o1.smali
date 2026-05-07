.class public final Lq3/o1;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final a:Lv3/y;

.field public static final b:Lv3/y;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public static final c:Lv3/y;

.field public static final d:Lv3/y;

.field public static final e:Lv3/y;

.field public static final f:Lq3/u0;

.field public static final g:Lq3/u0;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lv3/y;

    const-string v1, "COMPLETING_ALREADY"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq3/o1;->a:Lv3/y;

    new-instance v0, Lv3/y;

    const-string v1, "COMPLETING_WAITING_CHILDREN"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq3/o1;->b:Lv3/y;

    new-instance v0, Lv3/y;

    const-string v1, "COMPLETING_RETRY"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq3/o1;->c:Lv3/y;

    new-instance v0, Lv3/y;

    const-string v1, "TOO_LATE_TO_CANCEL"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq3/o1;->d:Lv3/y;

    new-instance v0, Lv3/y;

    const-string v1, "SEALED"

    invoke-direct {v0, v1}, Lv3/y;-><init>(Ljava/lang/String;)V

    sput-object v0, Lq3/o1;->e:Lv3/y;

    new-instance v0, Lq3/u0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq3/u0;-><init>(Z)V

    sput-object v0, Lq3/o1;->f:Lq3/u0;

    new-instance v0, Lq3/u0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lq3/u0;-><init>(Z)V

    sput-object v0, Lq3/o1;->g:Lq3/u0;

    return-void
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    instance-of v0, p0, Lq3/g1;

    if-eqz v0, :cond_8

    move-object v0, p0

    check-cast v0, Lq3/g1;

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-nez v0, :cond_c

    goto :goto_12

    :cond_c
    iget-object v0, v0, Lq3/g1;->a:Lq3/f1;

    if-nez v0, :cond_11

    goto :goto_12

    :cond_11
    move-object p0, v0

    :goto_12
    return-object p0
.end method
